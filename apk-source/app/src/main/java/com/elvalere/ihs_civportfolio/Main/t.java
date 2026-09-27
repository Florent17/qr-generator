package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.database.Cursor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;

/* loaded from: classes.dex */
class t implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f340a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ MainActivity3 e;

    t(MainActivity3 mainActivity3, String str, String str2, String str3, String str4) {
        this.e = mainActivity3;
        this.f340a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        Cursor cursor = (Cursor) adapterView.getItemAtPosition(i);
        String string = cursor.getString(cursor.getColumnIndexOrThrow("SiteIDIHS"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("SiteName"));
        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("Longitude"));
        String string4 = cursor.getString(cursor.getColumnIndexOrThrow("Latitude"));
        cursor.getString(cursor.getColumnIndexOrThrow("OrangePriorityV2"));
        cursor.getString(cursor.getColumnIndexOrThrow("IHSEngineer"));
        cursor.getString(cursor.getColumnIndexOrThrow("SiteType"));
        cursor.getString(cursor.getColumnIndexOrThrow("TowerType"));
        cursor.getString(cursor.getColumnIndexOrThrow("TowerHeight"));
        cursor.getString(cursor.getColumnIndexOrThrow("SiteConfiguration"));
        cursor.getString(cursor.getColumnIndexOrThrow("PowerTopology"));
        cursor.getString(cursor.getColumnIndexOrThrow("NoofDG"));
        cursor.getString(cursor.getColumnIndexOrThrow("DGCapacity"));
        cursor.getString(cursor.getColumnIndexOrThrow("NewRegion"));
        cursor.getString(cursor.getColumnIndexOrThrow("State"));
        cursor.getString(cursor.getColumnIndexOrThrow("Zone"));
        cursor.getString(cursor.getColumnIndexOrThrow("SBC"));
        cursor.getString(cursor.getColumnIndexOrThrow("IHSRM"));
        cursor.getString(cursor.getColumnIndexOrThrow("MTNPriorityV2"));
        cursor.getString(cursor.getColumnIndexOrThrow("OrangePriorityV2"));
        cursor.getString(cursor.getColumnIndexOrThrow("MoovPriorityV0"));
        cursor.getString(cursor.getColumnIndexOrThrow("YoomeePriorityV"));
        cursor.getString(cursor.getColumnIndexOrThrow("SiteOwner"));
        cursor.getString(cursor.getColumnIndexOrThrow("Updat"));
        Toast.makeText(this.e.getApplicationContext(), string, 0).show();
        Intent intent = new Intent(this.e, (Class<?>) MainActivity4.class);
        intent.putExtra("SiteID2_2", string);
        intent.putExtra("SiteName2_2", string2);
        intent.putExtra("Long2_2", string3);
        intent.putExtra("Lat2_2", string4);
        intent.putExtra("SiteID1_2", this.f340a);
        intent.putExtra("SiteName1_2", this.b);
        intent.putExtra("Long1_2", this.c);
        intent.putExtra("Lat1_2", this.d);
        this.e.startActivity(intent);
    }
}
