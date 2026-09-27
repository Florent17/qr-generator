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
public class ModifyTodoActivity extends Activity implements View.OnClickListener {
    private static String i = "tracker.db";
    private static String j = "/data/data/com.elvalere.ihs_civportfolio/databases/";
    private static String k = Environment.getExternalStorageDirectory().getAbsolutePath();
    private static String l = k + "/IHS-CIV_Portfolio/data/";

    /* renamed from: a, reason: collision with root package name */
    private EditText f361a;
    private EditText b;
    private EditText c;
    private EditText d;
    private Button e;
    private Button f;
    private long g;
    private d h;
    private DatePickerDialog m;
    private SimpleDateFormat n;

    private void b() {
        this.c.setOnClickListener(this);
        Calendar calendar = Calendar.getInstance();
        this.m = new DatePickerDialog(this, new c(this), calendar.get(1), calendar.get(2), calendar.get(5));
    }

    public void a() {
        startActivity(new Intent(getApplicationContext(), (Class<?>) TodoListActivity.class).setFlags(67108864));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        if (view == this.c) {
            this.m.show();
        }
        switch (view.getId()) {
            case R.id.btn_update /* 2131558560 */:
                if (this.f361a.getText().length() > 0) {
                    this.h.a(this.g, this.f361a.getText().toString(), this.b.getText().toString(), this.c.getText().toString(), this.d.getText().toString());
                    try {
                        File file = new File(l);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        FileInputStream fileInputStream2 = new FileInputStream(j + i);
                        FileOutputStream fileOutputStream2 = new FileOutputStream(l + i);
                        byte[] bArr2 = new byte[1024];
                        while (true) {
                            int read = fileInputStream2.read(bArr2);
                            if (read != -1) {
                                fileOutputStream2.write(bArr2, 0, read);
                            } else {
                                fileInputStream2.close();
                                fileOutputStream2.flush();
                                fileOutputStream2.close();
                                Toast.makeText(getApplicationContext(), "Comment Modify", 0).show();
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
                a();
                break;
            case R.id.btn_delete /* 2131558561 */:
                this.h.a(this.g);
                try {
                    File file2 = new File(l);
                    if (!file2.exists()) {
                        file2.mkdirs();
                    }
                    fileInputStream = new FileInputStream(j + i);
                    fileOutputStream = new FileOutputStream(l + i);
                    bArr = new byte[1024];
                } catch (FileNotFoundException e3) {
                    Log.e("tag", e3.getMessage());
                } catch (Exception e4) {
                    Log.e("tag", e4.getMessage());
                }
                while (true) {
                    int read2 = fileInputStream.read(bArr);
                    if (read2 == -1) {
                        fileInputStream.close();
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        Toast.makeText(getApplicationContext(), "Comment Delete", 0).show();
                        a();
                        break;
                    } else {
                        fileOutputStream.write(bArr, 0, read2);
                    }
                }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Modifier le commentaire");
        setContentView(R.layout.activity_modify_record);
        this.h = new d(this);
        this.h.a();
        this.f361a = (EditText) findViewById(R.id.siteid_edittext);
        this.b = (EditText) findViewById(R.id.sitename_edittext);
        this.c = (EditText) findViewById(R.id.date_edittext);
        this.d = (EditText) findViewById(R.id.comment_edittext);
        this.e = (Button) findViewById(R.id.btn_update);
        this.f = (Button) findViewById(R.id.btn_delete);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("id");
        String stringExtra2 = intent.getStringExtra("siteid");
        String stringExtra3 = intent.getStringExtra("sitename");
        String stringExtra4 = intent.getStringExtra("dates");
        String stringExtra5 = intent.getStringExtra("comments");
        this.g = Long.parseLong(stringExtra);
        this.f361a.setText(stringExtra2);
        this.b.setText(stringExtra3);
        this.c.setText(stringExtra4);
        this.d.setText(stringExtra5);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.n = new SimpleDateFormat("dd-MM-yyyy", Locale.US);
        b();
    }
}
