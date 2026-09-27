package com.elvalere.ihs_civportfolio.Main;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.ToggleButton;
import com.elvalere.ihs_civportfolio.R;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class MainActivity3 extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private com.elvalere.ihs_civportfolio.a.a f299a;
    private SimpleCursorAdapter b;
    private Button c;

    private void a() {
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("SiteID1_2");
        String stringExtra2 = intent.getStringExtra("SiteName1_2");
        String stringExtra3 = intent.getStringExtra("Long1_2");
        String stringExtra4 = intent.getStringExtra("Lat1_2");
        ((EditText) findViewById(R.id.editText)).setText("Site 1: " + stringExtra + " / " + stringExtra2);
        this.b = new SimpleCursorAdapter(this, R.layout.layout_siteihs_info, this.f299a.b(), new String[]{"SiteIDIHS", "SiteName", "AllPriorities", "IHSEngineer"}, new int[]{R.id.Site_ID_View, R.id.SiteName, R.id.All_Prio_Text, R.id.IHSIng}, 0);
        ListView listView = (ListView) findViewById(R.id.listView1);
        listView.setAdapter((ListAdapter) this.b);
        listView.setOnItemClickListener(new t(this, stringExtra, stringExtra2, stringExtra3, stringExtra4));
        ((EditText) findViewById(R.id.myFilter)).addTextChangedListener(new u(this));
        this.b.setFilterQueryProvider(new v(this));
        ((ToggleButton) findViewById(R.id.toggleButton)).setOnCheckedChangeListener(new w(this));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main3);
        this.f299a = new com.elvalere.ihs_civportfolio.a.a(this);
        this.f299a.a();
        a();
        findViewById(R.id.localiser);
        this.c = (Button) findViewById(R.id.btnannuler);
        this.c.setOnClickListener(new s(this));
    }
}
