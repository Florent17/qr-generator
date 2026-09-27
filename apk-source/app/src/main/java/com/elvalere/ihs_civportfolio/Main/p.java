package com.elvalere.ihs_civportfolio.Main;

import android.widget.CompoundButton;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class p implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity2 f336a;

    p(MainActivity2 mainActivity2) {
        this.f336a = mainActivity2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        SimpleCursorAdapter simpleCursorAdapter;
        SimpleCursorAdapter simpleCursorAdapter2;
        if (z) {
            simpleCursorAdapter2 = this.f336a.b;
            simpleCursorAdapter2.setFilterQueryProvider(new q(this));
        } else {
            simpleCursorAdapter = this.f336a.b;
            simpleCursorAdapter.setFilterQueryProvider(new r(this));
        }
    }
}
