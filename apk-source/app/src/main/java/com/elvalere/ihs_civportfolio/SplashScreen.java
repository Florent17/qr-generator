package com.elvalere.ihs_civportfolio;

import android.app.Activity;
import android.os.Bundle;
import com.elvalere.ihs_civportfolio.Services.LocationUpdaterService;
import com.elvalere.ihs_civportfolio.Services.Portfolio_Update;
import java.io.File;

/* loaded from: classes.dex */
public class SplashScreen extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.starting);
        if (new File(Portfolio_Update.m).length() < 100000) {
        }
        Double.valueOf(LocationUpdaterService.d);
        Double.valueOf(LocationUpdaterService.e);
        new a(this).start();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        finish();
    }
}
