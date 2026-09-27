package com.elvalere.ihs_civportfolio.Main;

import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
class k implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity f331a;

    k(MainActivity mainActivity) {
        this.f331a = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f331a.startActivity(new Intent(this.f331a.getApplicationContext(), (Class<?>) Main_Synchro.class));
    }
}
