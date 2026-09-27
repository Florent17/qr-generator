package com.elvalere.ihs_civportfolio.Services;

import android.app.Service;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.os.IBinder;

/* loaded from: classes.dex */
public class LocationUpdaterService extends Service {
    public static String b;
    public static String c;
    public static double d = 0.0d;
    public static double e = 0.0d;
    public LocationManager g;
    public b h;

    /* renamed from: a, reason: collision with root package name */
    public final int f351a = 3600000;
    public Boolean f = false;
    public Location i = null;
    Handler j = new Handler();
    Runnable k = new a(this);

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (android.support.v4.a.c.a(this, "android.permission.ACCESS_COARSE_LOCATION") == 0 && this.g.getAllProviders().contains("network")) {
            this.g.requestLocationUpdates("network", 0L, 0.0f, this.h);
        }
        this.f = true;
    }

    private boolean a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (android.support.v4.a.c.a(this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
            this.g.removeUpdates(this.h);
        }
        this.f = false;
    }

    protected boolean a(Location location, Location location2) {
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        boolean z = time > 3600000;
        boolean z2 = time < -3600000;
        boolean z3 = time > 0;
        if (z) {
            return true;
        }
        if (z2) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z4 = accuracy > 0;
        boolean z5 = accuracy < 0;
        boolean z6 = accuracy > 200;
        boolean a2 = a(location.getProvider(), location2.getProvider());
        if (z5) {
            return true;
        }
        if (!z3 || z4) {
            return z3 && !z6 && a2;
        }
        return true;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.g = (LocationManager) getSystemService("location");
        this.h = new b(this);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        b();
        this.j.removeCallbacks(this.k);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.k.run();
        return 1;
    }
}
