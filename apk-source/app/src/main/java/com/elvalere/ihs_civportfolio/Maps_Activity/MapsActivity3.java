package com.elvalere.ihs_civportfolio.Maps_Activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.v;
import android.support.v7.a.u;
import android.support.v7.b.l;
import android.widget.Toast;
import com.elvalere.ihs_civportfolio.R;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.g;
import com.google.android.gms.location.i;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.h;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

/* loaded from: classes.dex */
public class MapsActivity3 extends v implements q, r, g, h {
    public static double m;
    public static double n;
    LocationRequest j;
    n k;
    com.google.android.gms.maps.model.d l;
    LatLng o;
    int p = 10;
    private n q;
    private com.google.android.gms.maps.c r;

    @Override // com.google.android.gms.location.g
    public void a(Location location) {
        if (this.l != null) {
            this.l.a();
        }
        i();
    }

    @Override // com.google.android.gms.common.api.q
    public void a(Bundle bundle) {
        if (android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0 || android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            if (i.b.a(this.k) != null) {
                i();
            }
            this.j = new LocationRequest();
            this.j.a(120000L);
            this.j.b(180000L);
            this.j.a(l.Theme_editTextStyle);
            i.b.a(this.k, this.j, this);
        }
    }

    @Override // com.google.android.gms.common.api.r
    public void a(ConnectionResult connectionResult) {
        Toast.makeText(this, "onConnectionFailed", 0).show();
    }

    @Override // com.google.android.gms.maps.h
    public void a(com.google.android.gms.maps.c cVar) {
        this.r = cVar;
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("SiteID1_2");
        String stringExtra2 = intent.getStringExtra("SiteName1_2");
        String stringExtra3 = intent.getStringExtra("Long1_2");
        String stringExtra4 = intent.getStringExtra("Lat1_2");
        String replace = stringExtra3.replace(",", ".");
        Double valueOf = Double.valueOf(Double.parseDouble(stringExtra4.replace(",", ".")));
        Double valueOf2 = Double.valueOf(Double.parseDouble(replace));
        String stringExtra5 = intent.getStringExtra("SiteID2_2");
        String stringExtra6 = intent.getStringExtra("SiteName2_2");
        String stringExtra7 = intent.getStringExtra("Long2_2");
        String stringExtra8 = intent.getStringExtra("Lat2_2");
        String replace2 = stringExtra7.replace(",", ".");
        Double valueOf3 = Double.valueOf(Double.parseDouble(stringExtra8.replace(",", ".")));
        Double valueOf4 = Double.valueOf(Double.parseDouble(replace2));
        String stringExtra9 = intent.getStringExtra("SiteID3_2");
        String stringExtra10 = intent.getStringExtra("SiteName3_2");
        String stringExtra11 = intent.getStringExtra("Long3_2");
        String stringExtra12 = intent.getStringExtra("Lat3_2");
        String replace3 = stringExtra11.replace(",", ".");
        Double valueOf5 = Double.valueOf(Double.parseDouble(stringExtra12.replace(",", ".")));
        Double valueOf6 = Double.valueOf(Double.parseDouble(replace3));
        LatLng latLng = new LatLng(valueOf.doubleValue(), valueOf2.doubleValue());
        com.google.android.gms.maps.model.d a2 = this.r.a(new MarkerOptions().a(latLng).a(stringExtra).b(stringExtra2).a(com.google.android.gms.maps.model.b.a(R.drawable.logoihs15p8)).a(true));
        this.r.a(com.google.android.gms.maps.b.a(latLng));
        a2.b();
        LatLng latLng2 = new LatLng(valueOf3.doubleValue(), valueOf4.doubleValue());
        com.google.android.gms.maps.model.d a3 = this.r.a(new MarkerOptions().a(latLng2).a(stringExtra5).b(stringExtra6).a(com.google.android.gms.maps.model.b.a(R.drawable.logoihs15p8)).a(true));
        this.r.a(com.google.android.gms.maps.b.a(latLng2));
        a3.b();
        LatLng latLng3 = new LatLng(valueOf5.doubleValue(), valueOf6.doubleValue());
        com.google.android.gms.maps.model.d a4 = this.r.a(new MarkerOptions().a(latLng3).a(stringExtra9).b(stringExtra10).a(com.google.android.gms.maps.model.b.a(R.drawable.logoihs15p8)).a(true));
        this.r.a(com.google.android.gms.maps.b.a(latLng3));
        a4.b();
        this.r.a(com.google.android.gms.maps.b.a(latLng, 7));
        if (android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_FINE_LOCATION") == 0 || android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            this.r.a(true);
            this.r.a().a(true);
            h();
            this.k.e();
        }
    }

    @Override // com.google.android.gms.common.api.q
    public void b(int i) {
    }

    protected synchronized void h() {
        this.k = new o(this).a((q) this).a((r) this).a(i.f962a).b();
    }

    public void i() {
        Location a2 = i.b.a(this.k);
        this.o = new LatLng(a2.getLatitude(), a2.getLongitude());
        m = a2.getLatitude();
        n = a2.getLongitude();
        if (android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0 || android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
        }
    }

    public void j() {
        boolean z;
        boolean z2;
        LocationManager locationManager = (LocationManager) getSystemService("location");
        try {
            z = locationManager.isProviderEnabled("gps");
        } catch (Exception e) {
            z = false;
        }
        try {
            z2 = locationManager.isProviderEnabled("network");
        } catch (Exception e2) {
            z2 = false;
        }
        if (z || z2) {
            return;
        }
        u uVar = new u(this);
        uVar.b(getResources().getString(R.string.gps_network_not_enabled));
        uVar.a(getResources().getString(R.string.open_location_settings), new c(this));
        uVar.b(getString(R.string.Cancel), new d(this));
        uVar.c();
    }

    @Override // android.support.v4.app.v, android.support.v4.app.p, android.app.Activity
    @SuppressLint({"NewApi"})
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_maps);
        ((SupportMapFragment) f().a(R.id.map)).a((h) this);
        j();
        this.q = new o(this).a(com.google.android.gms.a.d.f515a).b();
    }

    @Override // android.support.v4.app.v, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.k != null) {
            i.b.a(this.k, this);
        }
    }

    @Override // android.support.v4.app.v, android.app.Activity
    public void onStart() {
        super.onStart();
        this.q.e();
        com.google.android.gms.a.d.c.a(this.q, com.google.android.gms.a.a.a("http://schema.org/ViewAction", "MapsProxim Page", Uri.parse("http://host/path"), Uri.parse("android-app://com.elvalere.ihs_civportfolio/http/host/path")));
    }

    @Override // android.support.v4.app.v, android.app.Activity
    public void onStop() {
        super.onStop();
        com.google.android.gms.a.d.c.b(this.q, com.google.android.gms.a.a.a("http://schema.org/ViewAction", "MapsProxim Page", Uri.parse("http://host/path"), Uri.parse("android-app://com.elvalere.ihs_civportfolio/http/host/path")));
        this.q.g();
    }
}
