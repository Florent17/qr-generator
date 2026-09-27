package com.elvalere.ihs_civportfolio.Maps_Activity;

import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MapsActivity3 f349a;

    c(MapsActivity3 mapsActivity3) {
        this.f349a = mapsActivity3;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f349a.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }
}
