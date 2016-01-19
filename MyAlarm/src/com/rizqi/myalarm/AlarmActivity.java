package com.rizqi.myalarm;

import java.util.Calendar;

import android.os.Bundle;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.TimePickerDialog;
import android.app.TimePickerDialog.OnTimeSetListener;
import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TimePicker;

public class AlarmActivity extends Activity {
TimePicker myTimePicker;
Button SetAlarm;
TextView textAlarm;
TimePickerDialog timePickerDialog;

final static int RQS_1=1;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_alarm);
		textAlarm = (TextView)findViewById(R.id.txt_alarm);
		SetAlarm = (Button)findViewById(R.id.btn_SetAlarm);
		SetAlarm.setOnClickListener(new OnClickListener() {
			
			public void onClick(View v) {
				// TODO Auto-generated method stub
				textAlarm.setText("");
				openTimePickerDialog(false);
			}
		});
	}
private void openTimePickerDialog(boolean is24r){
	Calendar calendar= Calendar.getInstance();
	timePickerDialog = new TimePickerDialog(AlarmActivity.this, onTimeSetListener, calendar.get(Calendar.HOUR_OF_DAY), calendar.get(Calendar.MINUTE), true);
timePickerDialog.setTitle("Set Waktu Alarm");
timePickerDialog.show();
}
OnTimeSetListener onTimeSetListener = new OnTimeSetListener() {
	
	@Override
	public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
		// TODO Auto-generated method stub
		Calendar calNow = Calendar.getInstance();
		Calendar calSet = (Calendar) calNow.clone();
		calSet.set(Calendar.HOUR_OF_DAY, hourOfDay);
		calSet.set(Calendar.MINUTE, minute);
		calSet.set(Calendar.SECOND, 0);
		calSet.set(Calendar.MILLISECOND, 0);
		if (calSet.compareTo(calNow)<=0){
			calSet.add(Calendar.DATE, 1);
		}
		SetAlarm(calSet);
	}
};
private void SetAlarm(Calendar targetCal){
	textAlarm.setText("SET ALARM :"+targetCal.getTime());
	Intent intent = new Intent(getBaseContext(), AlarmReceiver.class);
	PendingIntent pendingIntent = PendingIntent.getBroadcast(getBaseContext(), RQS_1, intent, 0);
	AlarmManager alarmManager=(AlarmManager)getSystemService(Context.ALARM_SERVICE);
	alarmManager.set(AlarmManager.RTC_WAKEUP, targetCal.getTimeInMillis(), pendingIntent);
	
}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_alarm, menu);
		return true;
	}

}
