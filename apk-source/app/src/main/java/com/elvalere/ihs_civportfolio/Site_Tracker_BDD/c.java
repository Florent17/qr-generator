package com.elvalere.ihs_civportfolio.Site_Tracker_BDD;

import android.app.DatePickerDialog;
import android.widget.DatePicker;
import android.widget.EditText;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* loaded from: classes.dex */
class c implements DatePickerDialog.OnDateSetListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ModifyTodoActivity f363a;

    c(ModifyTodoActivity modifyTodoActivity) {
        this.f363a = modifyTodoActivity;
    }

    @Override // android.app.DatePickerDialog.OnDateSetListener
    public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        EditText editText;
        SimpleDateFormat simpleDateFormat;
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, i3);
        editText = this.f363a.c;
        simpleDateFormat = this.f363a.n;
        editText.setText(simpleDateFormat.format(calendar.getTime()));
    }
}
