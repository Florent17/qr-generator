package com.elvalere.ihs_civportfolio.Main;

import android.widget.CompoundButton;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class h implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity f328a;

    h(MainActivity mainActivity) {
        this.f328a = mainActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        SimpleCursorAdapter simpleCursorAdapter;
        SimpleCursorAdapter simpleCursorAdapter2;
        if (z) {
            simpleCursorAdapter2 = this.f328a.b;
            simpleCursorAdapter2.setFilterQueryProvider(new i(this));
        } else {
            simpleCursorAdapter = this.f328a.b;
            simpleCursorAdapter.setFilterQueryProvider(new j(this));
        }
    }
}
