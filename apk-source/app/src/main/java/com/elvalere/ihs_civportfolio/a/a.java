package com.elvalere.ihs_civportfolio.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.File;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static String f367a;
    SQLiteDatabase b = null;
    String c = "/data/data/com.elvalere.ihs_civportfolio/databases/IHS_Sites_Portfolio.sqlite";
    private final Context d;

    public a(Context context) {
        this.d = context;
    }

    public Cursor a(String str) {
        Log.w("DbAdapter_Modif", str);
        Cursor query = (str == null || str.length() == 0) ? this.b.query("IHS_Portfolio", new String[]{f367a}, null, null, null, null, null) : this.b.query(true, "IHS_Portfolio", new String[]{f367a}, "SiteName like '%" + str + "%'", null, null, null, null, null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }

    public a a() {
        f367a = "No as _id,SiteIDIHS,SiteName,Longitude,Latitude,OrangePriorityV2,Operator,IHSEngineer,SiteType,TowerType,TowerHeight,SiteConfiguration,PowerTopology,NoofDG,DGCapacity,NewRegion,State,Zone,SBC,IHSRM,MTNPriorityV2,OrangePriorityV2,MoovPriorityV0,YoomeePriorityV,SiteOwner,Updat,IHSEngineerPhoneNumber,VIPNETPriority,IHSTeamLeader,AllPriorities";
        if (new File(this.c).exists()) {
            this.b = SQLiteDatabase.openDatabase(this.c, null, 0);
        }
        return this;
    }

    public Cursor b() {
        Cursor query = this.b.query("IHS_Portfolio", new String[]{f367a}, null, null, null, null, null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }

    public Cursor b(String str) {
        Log.w("DbAdapter_Modif", str);
        Cursor query = (str == null || str.length() == 0) ? this.b.query("IHS_Portfolio", new String[]{f367a}, null, null, null, null, null) : this.b.query(true, "IHS_Portfolio", new String[]{f367a}, "SiteIDIHS like '%" + str + "%'", null, null, null, null, null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }

    public Cursor c() {
        Cursor rawQuery = this.b.rawQuery("select Updat,  No as _id from IHS_Portfolio where No = 1", null);
        if (rawQuery != null) {
            rawQuery.moveToFirst();
        }
        return rawQuery;
    }
}
