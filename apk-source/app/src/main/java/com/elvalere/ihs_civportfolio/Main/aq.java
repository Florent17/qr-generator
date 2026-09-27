package com.elvalere.ihs_civportfolio.Main;

import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
class aq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Site_View f320a;

    aq(Site_View site_View) {
        this.f320a = site_View;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f320a.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }
}
