package com.elvalere.ihs_civportfolio.Main;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.elvalere.ihs_civportfolio.R;
import com.elvalere.ihs_civportfolio.Services.Portfolio_Update;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes.dex */
public class Main_Synchro extends Activity implements View.OnClickListener {
    ProgressBar c;
    Dialog d;
    TextView g;

    /* renamed from: a, reason: collision with root package name */
    String f302a = Environment.getExternalStorageDirectory().getAbsolutePath();
    String b = "/data/data/com.elvalere.ihs_civportfolio/cache_Portfolio/IHS_Sites_Portfolio.elv2";
    int e = 0;
    int f = 0;

    public void a() {
        a(Portfolio_Update.j);
        new Thread(new aj(this)).start();
    }

    void a(String str) {
        this.d = new Dialog(this);
        this.d.requestWindowFeature(1);
        this.d.setContentView(R.layout.synchro);
        this.g = (TextView) this.d.findViewById(R.id.Pourcentage);
        this.d.show();
        this.c = (ProgressBar) this.d.findViewById(R.id.progressBar);
        this.c.setProgress(0);
        this.c.setProgressDrawable(getResources().getDrawable(R.drawable.green_progress));
    }

    public void b() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(Portfolio_Update.j).openConnection();
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.connect();
            File file = new File(Portfolio_Update.l);
            if (!file.exists()) {
                file.mkdirs();
            }
            Environment.getExternalStorageDirectory();
            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.b));
            InputStream inputStream = httpURLConnection.getInputStream();
            Portfolio_Update.f352a = httpURLConnection.getLastModified();
            this.f = httpURLConnection.getContentLength();
            runOnUiThread(new ak(this));
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    fileOutputStream.close();
                    runOnUiThread(new am(this));
                    return;
                } else {
                    fileOutputStream.write(bArr, 0, read);
                    this.e = read + this.e;
                    runOnUiThread(new al(this));
                }
            }
        } catch (MalformedURLException e) {
        } catch (IOException e2) {
        } catch (Exception e3) {
        }
    }

    public void c() {
        try {
            File file = new File(Portfolio_Update.k);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(this.b);
            FileOutputStream fileOutputStream = new FileOutputStream(Portfolio_Update.m);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, read);
                }
            }
            fileInputStream.close();
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (FileNotFoundException e) {
            Log.e("tag", e.getMessage());
        } catch (Exception e2) {
            Log.e("tag", e2.getMessage());
        }
        File file2 = new File(Portfolio_Update.m);
        if (Portfolio_Update.f352a > 1187194880) {
            file2.setLastModified(Portfolio_Update.f352a);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.Bt_Acceuil /* 2131558645 */:
                File file = new File(Portfolio_Update.m);
                if (!(file.length() > 500000) || !file.exists()) {
                    b();
                    break;
                } else {
                    startActivity(new Intent(this, (Class<?>) MainActivity.class));
                    break;
                }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        setContentView(R.layout.synchro_arriere);
        a();
    }
}
