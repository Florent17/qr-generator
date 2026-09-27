package com.elvalere.ihs_civportfolio.Main;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import com.elvalere.ihs_civportfolio.R;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class MainActivityFin extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private com.elvalere.ihs_civportfolio.a.a f301a;
    private Button b;
    private Button c;

    private void a() {
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("SiteID1_2");
        String stringExtra2 = intent.getStringExtra("SiteName1_2");
        intent.getStringExtra("Long1_2");
        intent.getStringExtra("Lat1_2");
        ((EditText) findViewById(R.id.editText)).setText("Site 1: " + stringExtra + " / " + stringExtra2);
        String stringExtra3 = intent.getStringExtra("SiteID2_2");
        String stringExtra4 = intent.getStringExtra("SiteName2_2");
        intent.getStringExtra("Long2_2");
        intent.getStringExtra("Lat2_2");
        ((EditText) findViewById(R.id.editText2)).setText("Site 2: " + stringExtra3 + " / " + stringExtra4);
        String stringExtra5 = intent.getStringExtra("SiteID3_2");
        String stringExtra6 = intent.getStringExtra("SiteName3_2");
        intent.getStringExtra("Long3_2");
        intent.getStringExtra("Lat3_2");
        ((EditText) findViewById(R.id.editText3)).setText("Site 3: " + stringExtra5 + " / " + stringExtra6);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_mainfin);
        this.f301a = new com.elvalere.ihs_civportfolio.a.a(this);
        this.f301a.a();
        a();
        this.b = (Button) findViewById(R.id.localiser);
        this.c = (Button) findViewById(R.id.btnannuler);
        this.c.setOnClickListener(new ah(this));
        this.b.setOnClickListener(new ai(this));
    }
}
