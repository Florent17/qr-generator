package com.elvalere.ihs_civportfolio;

import android.content.Intent;
import com.elvalere.ihs_civportfolio.Main.MainActivity;

/* loaded from: classes.dex */
class a extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ SplashScreen f366a;

    a(SplashScreen splashScreen) {
        this.f366a = splashScreen;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            sleep(500L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            this.f366a.startActivity(new Intent(this.f366a, (Class<?>) MainActivity.class));
        }
    }
}
