package com.elvalere.ihs_civportfolio.Main;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class u implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity3 f341a;

    u(MainActivity3 mainActivity3) {
        this.f341a = mainActivity3;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        SimpleCursorAdapter simpleCursorAdapter;
        simpleCursorAdapter = this.f341a.b;
        simpleCursorAdapter.getFilter().filter(charSequence.toString());
    }
}
