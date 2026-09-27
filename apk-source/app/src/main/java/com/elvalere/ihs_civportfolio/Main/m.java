package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.database.Cursor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;

/* loaded from: classes.dex */
class m implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity2 f333a;

    m(MainActivity2 mainActivity2) {
        this.f333a = mainActivity2;
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
        Toast.makeText(this.f333a.getApplicationContext(), string, 0).show();
        Intent intent = new Intent(this.f333a, (Class<?>) MainActivity3.class);
        intent.putExtra("SiteID1_2", string);
        intent.putExtra("SiteName1_2", string2);
        intent.putExtra("Long1_2", string3);
        intent.putExtra("Lat1_2", string4);
        this.f333a.startActivity(intent);
    }
}
