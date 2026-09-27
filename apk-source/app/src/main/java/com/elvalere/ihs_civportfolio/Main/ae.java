package com.elvalere.ihs_civportfolio.Main;

import android.widget.CompoundButton;
import android.widget.SimpleCursorAdapter;

/* loaded from: classes.dex */
class ae implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity4 f308a;

    ae(MainActivity4 mainActivity4) {
        this.f308a = mainActivity4;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        SimpleCursorAdapter simpleCursorAdapter;
        SimpleCursorAdapter simpleCursorAdapter2;
        if (z) {
            simpleCursorAdapter2 = this.f308a.b;
            simpleCursorAdapter2.setFilterQueryProvider(new af(this));
        } else {
            simpleCursorAdapter = this.f308a.b;
            simpleCursorAdapter.setFilterQueryProvider(new ag(this));
        }
    }
}
