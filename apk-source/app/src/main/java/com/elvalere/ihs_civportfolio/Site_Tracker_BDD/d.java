package com.elvalere.ihs_civportfolio.Site_Tracker_BDD;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private b f364a;
    private Context b;
    private SQLiteDatabase c;

    public d(Context context) {
        this.b = context;
    }

    public int a(long j, String str, String str2, String str3, String str4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id_site", str);
        contentValues.put("name_site", str2);
        contentValues.put("dates", str3);
        contentValues.put("comments", str4);
        return this.c.update("SITE_TRACKER", contentValues, "_id = " + j, null);
    }

    public d a() {
        this.f364a = new b(this.b);
        this.c = this.f364a.getWritableDatabase();
        return this;
    }

    public void a(long j) {
        this.c.delete("SITE_TRACKER", "_id=" + j, null);
    }

    public void a(String str, String str2, String str3, String str4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id_site", str);
        contentValues.put("name_site", str2);
        contentValues.put("dates", str3);
        contentValues.put("comments", str4);
        this.c.insert("SITE_TRACKER", null, contentValues);
    }

    public Cursor b() {
        Cursor query = this.c.query("SITE_TRACKER", new String[]{"_id", "id_site", "name_site", "dates", "comments"}, null, null, null, null, null);
        if (query != null) {
            query.moveToFirst();
        }
        return query;
    }
}
