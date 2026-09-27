package com.elvalere.ihs_civportfolio.Site_Tracker_BDD;

import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.widget.aw;
import android.util.Log;
import android.view.MenuItem;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.elvalere.ihs_civportfolio.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
public class TodoListActivity extends android.support.v7.a.e {
    private static String l = "tracker.db";
    private static String m = "/data/data/com.elvalere.ihs_civportfolio/databases/";
    private static String n = Environment.getExternalStorageDirectory().getAbsolutePath();
    private static String o = n + "/IHS-CIV_Portfolio/data/";
    private d j;
    private ListView k;
    private aw p;

    @Override // android.support.v7.a.v, android.support.v4.app.v, android.support.v4.app.p, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fragment_emp_list);
        this.j = new d(this);
        this.j.a();
        this.k = (ListView) findViewById(R.id.list_view);
        this.k.setEmptyView(findViewById(R.id.empty));
        this.p = new aw(this, R.layout.activity_view_record, this.j.b(), new String[]{"_id", "id_site", "name_site", "dates", "comments"}, new int[]{R.id.id, R.id.siteid, R.id.sitename, R.id.dates, R.id.comments}, 0);
        this.p.notifyDataSetChanged();
        this.k.setAdapter((ListAdapter) this.p);
        this.k.setOnItemClickListener(new e(this));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.add_record) {
            return super.onOptionsItemSelected(menuItem);
        }
        try {
            File file = new File(o);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(m + l);
            FileOutputStream fileOutputStream = new FileOutputStream(o + l);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileInputStream.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            Toast.makeText(getApplicationContext(), "Sauvegarde Effectuée", 0).show();
        } catch (FileNotFoundException e) {
            Log.e("tag", e.getMessage());
        } catch (Exception e2) {
            Log.e("tag", e2.getMessage());
        }
        startActivity(new Intent(this, (Class<?>) AddTodoActivity.class));
        return true;
    }
}
