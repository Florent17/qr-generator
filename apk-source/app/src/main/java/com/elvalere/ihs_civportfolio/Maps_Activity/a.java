package com.elvalere.ihs_civportfolio.Maps_Activity;

import android.content.DialogInterface;
import android.content.Intent;

/* loaded from: classes.dex */
class a implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MapsActivity2 f347a;

    a(MapsActivity2 mapsActivity2) {
        this.f347a = mapsActivity2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f347a.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }
}
