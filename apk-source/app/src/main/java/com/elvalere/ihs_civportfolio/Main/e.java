package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.database.Cursor;
import android.os.Vibrator;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;

/* loaded from: classes.dex */
class e implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity f325a;

    e(MainActivity mainActivity) {
        this.f325a = mainActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        Cursor cursor = (Cursor) adapterView.getItemAtPosition(i);
        String string = cursor.getString(cursor.getColumnIndexOrThrow("SiteIDIHS"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("SiteName"));
        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("Longitude"));
        String string4 = cursor.getString(cursor.getColumnIndexOrThrow("Latitude"));
        String string5 = cursor.getString(cursor.getColumnIndexOrThrow("OrangePriorityV2"));
        String string6 = cursor.getString(cursor.getColumnIndexOrThrow("IHSEngineer"));
        String string7 = cursor.getString(cursor.getColumnIndexOrThrow("SiteType"));
        String string8 = cursor.getString(cursor.getColumnIndexOrThrow("TowerType"));
        String string9 = cursor.getString(cursor.getColumnIndexOrThrow("TowerHeight"));
        String string10 = cursor.getString(cursor.getColumnIndexOrThrow("SiteConfiguration"));
        String string11 = cursor.getString(cursor.getColumnIndexOrThrow("PowerTopology"));
        String string12 = cursor.getString(cursor.getColumnIndexOrThrow("NoofDG"));
        String string13 = cursor.getString(cursor.getColumnIndexOrThrow("DGCapacity"));
        String string14 = cursor.getString(cursor.getColumnIndexOrThrow("NewRegion"));
        String string15 = cursor.getString(cursor.getColumnIndexOrThrow("State"));
        String string16 = cursor.getString(cursor.getColumnIndexOrThrow("Zone"));
        String string17 = cursor.getString(cursor.getColumnIndexOrThrow("SBC"));
        String string18 = cursor.getString(cursor.getColumnIndexOrThrow("IHSRM"));
        String string19 = cursor.getString(cursor.getColumnIndexOrThrow("MTNPriorityV2"));
        String string20 = cursor.getString(cursor.getColumnIndexOrThrow("OrangePriorityV2"));
        String string21 = cursor.getString(cursor.getColumnIndexOrThrow("MoovPriorityV0"));
        String string22 = cursor.getString(cursor.getColumnIndexOrThrow("YoomeePriorityV"));
        String string23 = cursor.getString(cursor.getColumnIndexOrThrow("SiteOwner"));
        cursor.getString(cursor.getColumnIndexOrThrow("Updat"));
        String string24 = cursor.getString(cursor.getColumnIndexOrThrow("VIPNETPriority"));
        String string25 = cursor.getString(cursor.getColumnIndexOrThrow("IHSEngineerPhoneNumber"));
        String string26 = cursor.getString(cursor.getColumnIndexOrThrow("IHSTeamLeader"));
        Toast.makeText(this.f325a.getApplicationContext(), string, 0).show();
        Intent intent = new Intent(this.f325a, (Class<?>) Site_View.class);
        intent.putExtra("SiteID1", string);
        intent.putExtra("SiteName1", string2);
        intent.putExtra("Long1", string3);
        intent.putExtra("Lat1", string4);
        intent.putExtra("Priority1", string5);
        intent.putExtra("IHSIng1", string6);
        intent.putExtra("SiteTyp1", string7);
        intent.putExtra("TowerTyp1", string8);
        intent.putExtra("TowerHeig1", string9);
        intent.putExtra("SiteConfi1", string10);
        intent.putExtra("PowerTop1", string11);
        intent.putExtra("NumbD1", string12);
        intent.putExtra("DG_Capac1", string13);
        intent.putExtra("Regio1", string14);
        intent.putExtra("Localit1", string15);
        intent.putExtra("Zon1", string16);
        intent.putExtra("Sbc1", string17);
        intent.putExtra("Rm1", string18);
        intent.putExtra("MtnPri1", string19);
        intent.putExtra("OciPri1", string20);
        intent.putExtra("MoovPri1", string21);
        intent.putExtra("YoomPri1", string22);
        intent.putExtra("SiteOwne1", string23);
        intent.putExtra("EngPhon1", string25);
        intent.putExtra("VipPri1", string24);
        intent.putExtra("TeamLea1", string26);
        ((Vibrator) this.f325a.getSystemService("vibrator")).vibrate(50L);
        this.f325a.startActivity(intent);
    }
}
