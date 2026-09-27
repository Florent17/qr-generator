package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import com.elvalere.ihs_civportfolio.SplashScreen;
import java.io.File;

/* loaded from: classes.dex */
class al implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Main_Synchro f315a;

    al(Main_Synchro main_Synchro) {
        this.f315a = main_Synchro;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f315a.c.setProgress(this.f315a.e);
        float f = (this.f315a.e / this.f315a.f) * 100.0f;
        this.f315a.g.setText(((int) f) + "%");
        if (f == 100.0f) {
            this.f315a.c();
            File file = new File(this.f315a.b);
            if (file.exists()) {
                file.delete();
            }
            this.f315a.startActivity(new Intent(this.f315a.getApplicationContext(), (Class<?>) SplashScreen.class));
        }
    }
}
