package com.elvalere.ihs_civportfolio.Main;

import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
class l implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity f332a;

    l(MainActivity mainActivity) {
        this.f332a = mainActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f332a.startActivity(new Intent(this.f332a.getApplicationContext(), (Class<?>) MainActivity.class));
    }
}
