package com.elvalere.ihs_civportfolio.Main;

import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
class an implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Site_View f317a;

    an(Site_View site_View) {
        this.f317a = site_View;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent launchIntentForPackage = this.f317a.getPackageManager().getLaunchIntentForPackage("io.cordova.myapp24e846");
        if (launchIntentForPackage != null) {
            this.f317a.startActivity(launchIntentForPackage);
        } else {
            this.f317a.a("http://196.47.173.43:85");
        }
    }
}
