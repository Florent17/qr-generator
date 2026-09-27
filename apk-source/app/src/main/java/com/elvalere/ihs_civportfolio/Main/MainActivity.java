package com.elvalere.ihs_civportfolio.Main;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.elvalere.ihs_civportfolio.R;
import com.elvalere.ihs_civportfolio.Services.Portfolio_Update;
import com.elvalere.ihs_civportfolio.Site_Tracker_BDD.TodoListActivity;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class MainActivity extends Activity {
    private static String e = "tracker.db";
    private static String f = "/data/data/com.elvalere.ihs_civportfolio/databases/";
    private static String g = Environment.getExternalStorageDirectory().getAbsolutePath();
    private static String h = g + "/IHS-CIV_Portfolio/data/";

    /* renamed from: a, reason: collision with root package name */
    private com.elvalere.ihs_civportfolio.a.a f297a;
    private SimpleCursorAdapter b;
    private Button c;
    private Button d;

    private void e() {
        Cursor b = this.f297a.b();
        Cursor c = this.f297a.c();
        ((TextView) findViewById(R.id.Update_View)).setText("by Landry EKISSI  -  - elvalere@Copyright Janv2016 - Portfolio du " + c.getString(c.getColumnIndexOrThrow("Updat")));
        this.b = new SimpleCursorAdapter(this, R.layout.layout_siteihs_info, b, new String[]{"SiteIDIHS", "SiteName", "AllPriorities", "IHSEngineer", "Longitude", "Latitude", "SiteType"}, new int[]{R.id.Site_ID_View, R.id.SiteName, R.id.All_Prio_Text, R.id.IHSIng}, 0);
        ListView listView = (ListView) findViewById(R.id.listView1);
        listView.setAdapter((ListAdapter) this.b);
        listView.setOnItemClickListener(new e(this));
        ((EditText) findViewById(R.id.myFilter)).addTextChangedListener(new f(this));
        this.b.setFilterQueryProvider(new g(this));
        ((ToggleButton) findViewById(R.id.toggleButton)).setOnCheckedChangeListener(new h(this));
    }

    public void a() {
        if (android.support.v4.a.c.a(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0 && !android.support.v4.app.a.a((Activity) this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            android.support.v4.app.a.a(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        }
        b();
    }

    public void b() {
        if (android.support.v4.a.c.a(this, "android.permission.ACCESS_FINE_LOCATION") == 0 || android.support.v4.app.a.a((Activity) this, "android.permission.ACCESS_FINE_LOCATION")) {
            return;
        }
        android.support.v4.app.a.a(this, new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, 2);
    }

    public void c() {
        InputStream open = getAssets().open("IHS_Sites_Portfolio.sqlite");
        File file = new File(Portfolio_Update.k);
        if (!file.exists()) {
            file.mkdir();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(Portfolio_Update.m);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = open.read(bArr);
            if (read == -1) {
                open.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                return;
            }
            fileOutputStream.write(bArr, 0, read);
        }
    }

    public void d() {
        new AlertDialog.Builder(this).setTitle("       Check Portfolio UPdate!!!").setMessage("Veuillez vous connecter à internet et mettre à jour la base de données !!!").setNegativeButton(R.string.Cancel, new l(this)).setPositiveButton("Télécharger", new k(this)).setIcon(android.R.drawable.ic_dialog_alert).show();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btncomp /* 2131558543 */:
                Intent intent = new Intent(this, (Class<?>) MainActivity2.class);
                Toast.makeText(getApplicationContext(), "Localisation de plusieurs Sites", 0).show();
                startActivity(intent);
                break;
            case R.id.btn_update2 /* 2131558544 */:
                Intent intent2 = new Intent(this, (Class<?>) Main_Synchro.class);
                Toast.makeText(getApplicationContext(), "Check Update", 0).show();
                startActivity(intent2);
                break;
            case R.id.btnVComm /* 2131558547 */:
                Intent intent3 = new Intent(this, (Class<?>) TodoListActivity.class);
                Toast.makeText(getApplicationContext(), "Affichage des Commentaires", 0).show();
                startActivity(intent3);
                break;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        a();
        b();
        if (!new File(Portfolio_Update.m).exists()) {
            try {
                c();
                startActivity(new Intent(this, (Class<?>) MainActivity.class));
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        this.c = (Button) findViewById(R.id.btncomp);
        this.d = (Button) findViewById(R.id.btnVComm);
        this.f297a = new com.elvalere.ihs_civportfolio.a.a(this);
        this.f297a.a();
        try {
            if (this.f297a.b().getCount() == 0) {
                startActivity(new Intent(this, (Class<?>) Main_Synchro.class));
            }
        } catch (Exception e3) {
            try {
                c();
                d();
            } catch (IOException e4) {
            }
        }
        e();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 1:
                if (iArr.length <= 0 || iArr[0] != 0) {
                    Toast.makeText(this, "DataBase Permission Denied", 0).show();
                } else {
                    Toast.makeText(this, "DataBase Permission Granted", 0).show();
                    try {
                        File file = new File(f);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        FileInputStream fileInputStream = new FileInputStream(h + e);
                        FileOutputStream fileOutputStream = new FileOutputStream(f + e);
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (read != -1) {
                                fileOutputStream.write(bArr, 0, read);
                            } else {
                                fileInputStream.close();
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            }
                        }
                    } catch (FileNotFoundException e2) {
                        Log.e("tag", e2.getMessage());
                    } catch (Exception e3) {
                        Log.e("tag", e3.getMessage());
                    }
                }
                b();
                break;
            case 2:
                if (iArr.length > 0 && iArr[0] == 0) {
                    Toast.makeText(this, "Location Permission Granted", 0).show();
                    break;
                } else {
                    Toast.makeText(this, "Location Permission Denied", 0).show();
                    break;
                }
                break;
        }
    }
}
