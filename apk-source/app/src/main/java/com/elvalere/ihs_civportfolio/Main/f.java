package com.elvalere.ihs_civportfolio.Main;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class f implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity f326a;

    f(MainActivity mainActivity) {
        this.f326a = mainActivity;
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
        simpleCursorAdapter = this.f326a.b;
        simpleCursorAdapter.getFilter().filter(charSequence.toString());
    }
}
