package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.elvalere.ihs_civportfolio.Maps_Activity.MapsActivity2;

/* loaded from: classes.dex */
class aa implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity4 f304a;

    aa(MainActivity4 mainActivity4) {
        this.f304a = mainActivity4;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = this.f304a.getIntent();
        String stringExtra = intent.getStringExtra("SiteID1_2");
        String stringExtra2 = intent.getStringExtra("SiteName1_2");
        String stringExtra3 = intent.getStringExtra("Long1_2");
        String stringExtra4 = intent.getStringExtra("Lat1_2");
        String stringExtra5 = intent.getStringExtra("SiteID2_2");
        String stringExtra6 = intent.getStringExtra("SiteName2_2");
        String stringExtra7 = intent.getStringExtra("Long2_2");
        String stringExtra8 = intent.getStringExtra("Lat2_2");
        Intent intent2 = new Intent(this.f304a, (Class<?>) MapsActivity2.class);
        intent2.putExtra("SiteID1_2", stringExtra);
        intent2.putExtra("SiteName1_2", stringExtra2);
        intent2.putExtra("Long1_2", stringExtra3);
        intent2.putExtra("Lat1_2", stringExtra4);
        intent2.putExtra("SiteID2_2", stringExtra5);
        intent2.putExtra("SiteName2_2", stringExtra6);
        intent2.putExtra("Long2_2", stringExtra7);
        intent2.putExtra("Lat2_2", stringExtra8);
        Toast.makeText(this.f304a.getApplicationContext(), "Localisation des deux Sites", 1).show();
        this.f304a.startActivity(intent2);
    }
}
