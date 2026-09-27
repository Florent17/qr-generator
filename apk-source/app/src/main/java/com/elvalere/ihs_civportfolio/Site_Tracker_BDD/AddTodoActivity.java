package com.elvalere.ihs_civportfolio.Site_Tracker_BDD;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.elvalere.ihs_civportfolio.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes.dex */
public class AddTodoActivity extends Activity implements View.OnClickListener {
    private static String g = "tracker.db";
    private static String h = "/data/data/com.elvalere.ihs_civportfolio/databases/";
    private static String i = Environment.getExternalStorageDirectory().getAbsolutePath();
    private static String j = i + "/IHS-CIV_Portfolio/data/";

    /* renamed from: a, reason: collision with root package name */
    private Button f360a;
    private d b;
    private EditText c;
    private EditText d;
    private EditText e;
    private EditText f;
    private DatePickerDialog k;
    private SimpleDateFormat l;

    private void a() {
        this.e.setOnClickListener(this);
        Calendar calendar = Calendar.getInstance();
        this.k = new DatePickerDialog(this, new a(this), calendar.get(1), calendar.get(2), calendar.get(5));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.e) {
            this.k.show();
        }
        switch (view.getId()) {
            case R.id.add_record /* 2131558541 */:
                if (this.c.getText().length() > 0) {
                    this.b.a(this.c.getText().toString(), this.d.getText().toString(), this.e.getText().toString(), this.f.getText().toString());
                    try {
                        File file = new File(j);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        FileInputStream fileInputStream = new FileInputStream(h + g);
                        FileOutputStream fileOutputStream = new FileOutputStream(j + g);
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
                    } catch (FileNotFoundException e) {
                        Log.e("tag", e.getMessage());
                    } catch (Exception e2) {
                        Log.e("tag", e2.getMessage());
                    }
                } else {
                    Toast.makeText(this, "Empty !", 0).show();
                }
                startActivity(new Intent(this, (Class<?>) TodoListActivity.class).setFlags(67108864));
                break;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Ajouter votre commentaire");
        Calendar calendar = Calendar.getInstance();
        int i2 = calendar.get(5);
        int i3 = calendar.get(2) + 1;
        int i4 = calendar.get(1);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("SiteID1_1");
        String stringExtra2 = intent.getStringExtra("SiteName1_1");
        setContentView(R.layout.activity_add_record);
        this.c = (EditText) findViewById(R.id.siteid_edittext);
        this.c.setText(stringExtra, TextView.BufferType.NORMAL);
        this.c.setEnabled(false);
        this.c.setFocusableInTouchMode(false);
        this.c.setClickable(false);
        this.d = (EditText) findViewById(R.id.sitename_edittext);
        this.d.setText(stringExtra2, TextView.BufferType.NORMAL);
        int length = String.valueOf(i3).length();
        int length2 = String.valueOf(i2).length();
        String str = length == 1 ? "0" + i3 : "" + i3;
        String str2 = length2 == 1 ? "0" + i2 : "" + i2;
        this.e = (EditText) findViewById(R.id.date_edittext);
        this.e.setText(str2 + "-" + str + "-" + i4, TextView.BufferType.EDITABLE);
        this.f = (EditText) findViewById(R.id.comment_edittext);
        this.f360a = (Button) findViewById(R.id.add_record);
        this.b = new d(this);
        this.b.a();
        this.f360a.setOnClickListener(this);
        this.l = new SimpleDateFormat("dd-MM-yyyy", Locale.US);
        a();
    }
}
