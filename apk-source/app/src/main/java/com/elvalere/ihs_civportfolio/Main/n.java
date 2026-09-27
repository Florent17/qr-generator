package com.elvalere.ihs_civportfolio.Main;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class n implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity2 f334a;

    n(MainActivity2 mainActivity2) {
        this.f334a = mainActivity2;
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
        simpleCursorAdapter = this.f334a.b;
        simpleCursorAdapter.getFilter().filter(charSequence.toString());
    }
}
