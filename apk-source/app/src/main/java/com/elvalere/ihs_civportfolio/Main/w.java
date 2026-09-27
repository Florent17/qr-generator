package com.elvalere.ihs_civportfolio.Main;

import android.widget.CompoundButton;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class w implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity3 f343a;

    w(MainActivity3 mainActivity3) {
        this.f343a = mainActivity3;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        SimpleCursorAdapter simpleCursorAdapter;
        SimpleCursorAdapter simpleCursorAdapter2;
        if (z) {
            simpleCursorAdapter2 = this.f343a.b;
            simpleCursorAdapter2.setFilterQueryProvider(new x(this));
        } else {
            simpleCursorAdapter = this.f343a.b;
            simpleCursorAdapter.setFilterQueryProvider(new y(this));
        }
    }
}
