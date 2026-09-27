package com.elvalere.ihs_civportfolio.Main;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class ac implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity4 f306a;

    ac(MainActivity4 mainActivity4) {
        this.f306a = mainActivity4;
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
        simpleCursorAdapter = this.f306a.b;
        simpleCursorAdapter.getFilter().filter(charSequence.toString());
    }
}
