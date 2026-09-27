package com.elvalere.ihs_civportfolio.Site_Tracker_BDD;

import android.app.DatePickerDialog;
import android.widget.DatePicker;
import android.widget.EditText;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* loaded from: classes.dex */
class a implements DatePickerDialog.OnDateSetListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AddTodoActivity f362a;

    a(AddTodoActivity addTodoActivity) {
        this.f362a = addTodoActivity;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        EditText editText;
        SimpleDateFormat simpleDateFormat;
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, i3);
        editText = this.f362a.e;
        simpleDateFormat = this.f362a.l;
        editText.setText(simpleDateFormat.format(calendar.getTime()));
    }
}
