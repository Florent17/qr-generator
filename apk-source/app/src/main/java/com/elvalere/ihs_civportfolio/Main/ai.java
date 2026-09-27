package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.elvalere.ihs_civportfolio.Maps_Activity.MapsActivity3;

/* loaded from: classes.dex */
class ai implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivityFin f312a;

    ai(MainActivityFin mainActivityFin) {
        this.f312a = mainActivityFin;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = this.f312a.getIntent();
        String stringExtra = intent.getStringExtra("SiteID1_2");
        String stringExtra2 = intent.getStringExtra("SiteName1_2");
        String stringExtra3 = intent.getStringExtra("Long1_2");
        String stringExtra4 = intent.getStringExtra("Lat1_2");
        String stringExtra5 = intent.getStringExtra("SiteID2_2");
        String stringExtra6 = intent.getStringExtra("SiteName2_2");
        String stringExtra7 = intent.getStringExtra("Long2_2");
        String stringExtra8 = intent.getStringExtra("Lat2_2");
        String stringExtra9 = intent.getStringExtra("SiteID3_2");
        String stringExtra10 = intent.getStringExtra("SiteName3_2");
        String stringExtra11 = intent.getStringExtra("Long3_2");
        String stringExtra12 = intent.getStringExtra("Lat3_2");
        Intent intent2 = new Intent(this.f312a, (Class<?>) MapsActivity3.class);
        intent2.putExtra("SiteID1_2", stringExtra);
        intent2.putExtra("SiteName1_2", stringExtra2);
        intent2.putExtra("Long1_2", stringExtra3);
        intent2.putExtra("Lat1_2", stringExtra4);
        intent2.putExtra("SiteID2_2", stringExtra5);
        intent2.putExtra("SiteName2_2", stringExtra6);
        intent2.putExtra("Long2_2", stringExtra7);
        intent2.putExtra("Lat2_2", stringExtra8);
        intent2.putExtra("SiteID3_2", stringExtra9);
        intent2.putExtra("SiteName3_2", stringExtra10);
        intent2.putExtra("Long3_2", stringExtra11);
        intent2.putExtra("Lat3_2", stringExtra12);
        Toast.makeText(this.f312a.getApplicationContext(), "Localisation des trois Sites", 1).show();
        this.f312a.startActivity(intent2);
    }
}
