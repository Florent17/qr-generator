package com.elvalere.ihs_civportfolio.Site_Tracker_BDD;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes.dex */
public class b extends SQLiteOpenHelper {
    public b(Context context) {
        super(context, "tracker.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table SITE_TRACKER(_id INTEGER PRIMARY KEY AUTOINCREMENT, id_site TEXT NOT NULL, dates,comments,name_site TEXT);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS SITE_TRACKER");
        onCreate(sQLiteDatabase);
    }
}
