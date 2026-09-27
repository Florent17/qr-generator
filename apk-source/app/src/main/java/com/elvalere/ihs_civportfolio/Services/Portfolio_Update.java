package com.elvalere.ihs_civportfolio.Services;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Vibrator;
import android.util.Log;
import android.widget.ProgressBar;
import com.elvalere.ihs_civportfolio.R;
import com.elvalere.ihs_civportfolio.SplashScreen;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;

/* loaded from: classes.dex */
public class Portfolio_Update extends Service {

    /* renamed from: a, reason: collision with root package name */
    public static long f352a = 0;
    public static long b = 0;
    public static int c = 0;
    public static long d = -1702967296;
    public static String j = "http://elvalere.net23.net/Android/IHS_CIV_Portfolio/BDD/IHS_Sites_Portfolio.zip";
    public static String k = "/data/data/com.elvalere.ihs_civportfolio/databases/";
    public static String l = "/data/data/com.elvalere.ihs_civportfolio/cache_Portfolio/";
    public static String m = "/data/data/com.elvalere.ihs_civportfolio/databases/IHS_Sites_Portfolio.sqlite";
    public static String n = "/data/data/com.elvalere.ihs_civportfolio/cache_Portfolio/IHS_Sites_Portfolio.elv";
    float f;
    ProgressBar h;
    long e = 30000;
    Boolean g = false;
    int i = 0;
    Handler o = new Handler();
    Runnable p = new c(this);

    private void a(Runnable runnable) {
    }

    public void a() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(j).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoOutput(true);
            File file = new File(l);
            if (!file.exists()) {
                file.mkdirs();
            }
            httpURLConnection.connect();
            File file2 = new File(n);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            InputStream inputStream = httpURLConnection.getInputStream();
            c = httpURLConnection.getContentLength();
            a(new e(this));
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    b();
                    file2.delete();
                    new File(m).setLastModified(f352a);
                    fileOutputStream.close();
                    a(new g(this));
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
                this.i = read + this.i;
                a(new f(this));
            }
        } catch (MalformedURLException e) {
        } catch (IOException e2) {
        } catch (Exception e3) {
        }
    }

    public void b() {
        try {
            File file = new File(k);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileInputStream fileInputStream = new FileInputStream(n);
            FileOutputStream fileOutputStream = new FileOutputStream(m);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (FileNotFoundException e) {
            Log.e("tag", e.getMessage());
        } catch (Exception e2) {
            Log.e("tag", e2.getMessage());
        }
    }

    public void c() {
        ((Vibrator) getSystemService("vibrator")).vibrate(250L);
        Uri defaultUri = RingtoneManager.getDefaultUri(2);
        ((NotificationManager) getSystemService("notification")).notify(9999, new Notification.Builder(this).setWhen(System.currentTimeMillis()).setTicker("Portfolio Mis à Jour !!!").setSmallIcon(R.drawable.logoihs15p8).setContentTitle(getResources().getString(R.string.notification_title)).setContentText(getResources().getString(R.string.notification_desc)).setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) SplashScreen.class), 1073741824)).setLights(5, 3, 2).setSound(defaultUri).setAutoCancel(true).build());
    }

    public void d() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(j).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.connect();
            b = new File(m).lastModified();
            f352a = httpURLConnection.getLastModified();
            if ((new Date().getTime() - b) / 1000 < 2592000) {
                a();
                c();
            }
        } catch (MalformedURLException e) {
        } catch (IOException e2) {
        } catch (Exception e3) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.o.removeCallbacks(this.p);
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.p.run();
        return 1;
    }
}
