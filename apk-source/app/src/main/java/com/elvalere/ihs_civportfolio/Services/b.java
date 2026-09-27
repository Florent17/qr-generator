package com.elvalere.ihs_civportfolio.Services;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

/* loaded from: classes.dex */
public class b implements LocationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocationUpdaterService f354a;

    public b(LocationUpdaterService locationUpdaterService) {
        this.f354a = locationUpdaterService;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (this.f354a.a(location, this.f354a.i)) {
            this.f354a.i = location;
            try {
                LocationUpdaterService.d = this.f354a.i.getLatitude();
                LocationUpdaterService.e = this.f354a.i.getLongitude();
                LocationUpdaterService.b = LocationUpdaterService.d + "";
                LocationUpdaterService.c = LocationUpdaterService.e + "";
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                this.f354a.b();
            }
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
        this.f354a.b();
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }
}
