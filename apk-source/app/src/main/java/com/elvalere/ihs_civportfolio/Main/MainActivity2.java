package com.elvalere.ihs_civportfolio.Main;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.ToggleButton;
import com.elvalere.ihs_civportfolio.R;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class MainActivity2 extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private com.elvalere.ihs_civportfolio.a.a f298a;
    private SimpleCursorAdapter b;

    private void a() {
        this.b = new SimpleCursorAdapter(this, R.layout.layout_siteihs_info, this.f298a.b(), new String[]{"SiteIDIHS", "SiteName", "AllPriorities", "IHSEngineer"}, new int[]{R.id.Site_ID_View, R.id.SiteName, R.id.All_Prio_Text, R.id.IHSIng}, 0);
        ListView listView = (ListView) findViewById(R.id.listView1);
        listView.setAdapter((ListAdapter) this.b);
        listView.setOnItemClickListener(new m(this));
        ((EditText) findViewById(R.id.myFilter)).addTextChangedListener(new n(this));
        this.b.setFilterQueryProvider(new o(this));
        ((ToggleButton) findViewById(R.id.toggleButton)).setOnCheckedChangeListener(new p(this));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main2);
        this.f298a = new com.elvalere.ihs_civportfolio.a.a(this);
        this.f298a.a();
        a();
    }
}
