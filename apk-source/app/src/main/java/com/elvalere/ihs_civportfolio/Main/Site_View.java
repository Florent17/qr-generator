package com.elvalere.ihs_civportfolio.Main;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;
import com.elvalere.ihs_civportfolio.R;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

/* loaded from: classes.dex */
public class Site_View extends android.support.v4.app.v implements View.OnClickListener, com.google.android.gms.common.api.q, com.google.android.gms.common.api.r, com.google.android.gms.location.g, com.google.android.gms.maps.h {
    public static double M;
    public static double N;
    String A;
    String B;
    String C;
    String D;
    String E;
    String F;
    String G;
    String H;
    String I;
    LocationRequest J;
    com.google.android.gms.common.api.n K;
    com.google.android.gms.maps.model.d L;
    LatLng O;
    int P = 10;
    public int Q = 4000;
    private com.google.android.gms.common.api.n R;
    private com.google.android.gms.maps.c S;
    String j;
    String k;
    String l;
    String m;
    String n;
    String o;
    String p;
    String q;
    String r;
    String s;
    String t;
    String u;
    String v;
    String w;
    String x;
    String y;
    String z;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    @Override // com.google.android.gms.location.g
    public void a(Location location) {
        if (this.L != null) {
            this.L.a();
        }
        k();
    }

    @Override // com.google.android.gms.common.api.q
    public void a(Bundle bundle) {
        if (android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0 || android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            if (com.google.android.gms.location.i.b.a(this.K) != null) {
                k();
            }
            this.J = new LocationRequest();
            this.J.a(120000L);
            this.J.b(180000L);
            this.J.a(android.support.v7.b.l.Theme_editTextStyle);
            com.google.android.gms.location.i.b.a(this.K, this.J, this);
        }
    }

    @Override // com.google.android.gms.common.api.r
    public void a(ConnectionResult connectionResult) {
        Toast.makeText(this, "onConnectionFailed", 0).show();
    }

    @Override // com.google.android.gms.maps.h
    public void a(com.google.android.gms.maps.c cVar) {
        this.S = cVar;
        if (android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0 || android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            l();
            this.S.a(true);
            this.S.a().a(true);
            j();
            this.K.e();
        }
    }

    @Override // com.google.android.gms.common.api.q
    public void b(int i) {
    }

    public void h() {
        TextView textView = (TextView) findViewById(R.id.Site_ID_View);
        TextView textView2 = (TextView) findViewById(R.id.IHS_Eng_View);
        TextView textView3 = (TextView) findViewById(R.id.Site_Type_View);
        TextView textView4 = (TextView) findViewById(R.id.Tower_Type_View);
        TextView textView5 = (TextView) findViewById(R.id.Tower_Heigh_View);
        TextView textView6 = (TextView) findViewById(R.id.Site_Config_View);
        TextView textView7 = (TextView) findViewById(R.id.Power_Topo_View);
        TextView textView8 = (TextView) findViewById(R.id.Num_DG_View);
        TextView textView9 = (TextView) findViewById(R.id.DG_Capa_View);
        TextView textView10 = (TextView) findViewById(R.id.Region_View);
        TextView textView11 = (TextView) findViewById(R.id.RM_View);
        TextView textView12 = (TextView) findViewById(R.id.MTN_Prio_View);
        TextView textView13 = (TextView) findViewById(R.id.OCI_Prio_View);
        TextView textView14 = (TextView) findViewById(R.id.Moov_Prio_View);
        TextView textView15 = (TextView) findViewById(R.id.Yoo_Prio_View);
        TextView textView16 = (TextView) findViewById(R.id.Vip_Prio_View);
        textView2.setText("Ing: " + this.o + " (" + this.H + ")");
        textView.setText(this.j + " / " + this.k);
        textView3.setText(this.p);
        textView4.setText(this.q);
        textView5.setText(this.r + " m");
        textView6.setText(this.s);
        textView7.setText(this.t);
        textView8.setText("0" + this.u + " GE");
        textView9.setText(this.v);
        textView10.setText("Région: " + this.w + " / " + this.y);
        if (this.I.length() > 2) {
            textView11.setText("RM: " + this.A + " - RZ: " + this.I);
        } else {
            textView11.setText("RM: " + this.A);
        }
        textView12.setText(this.B);
        textView13.setText(this.C);
        textView14.setText(this.D);
        textView15.setText(this.E);
        textView16.setText(this.G);
        ImageView imageView = (ImageView) findViewById(R.id.IHS_SBD_imageView);
        if (this.z.contains("t")) {
            imageView.setBackgroundResource(R.drawable.netis);
            return;
        }
        if (this.z.contains("a")) {
            imageView.setBackgroundResource(R.drawable.sagemcom);
        } else if (this.z.contains("y")) {
            imageView.setBackgroundResource(R.drawable.comenergie);
        } else {
            imageView.setBackgroundResource(R.drawable.ihs);
        }
    }

    public void i() {
        Intent intent = getIntent();
        this.j = intent.getStringExtra("SiteID1");
        this.k = intent.getStringExtra("SiteName1");
        this.l = intent.getStringExtra("Long1");
        this.m = intent.getStringExtra("Lat1");
        this.n = intent.getStringExtra("Priority1");
        this.o = intent.getStringExtra("IHSIng1");
        this.p = intent.getStringExtra("SiteTyp1");
        this.q = intent.getStringExtra("TowerTyp1");
        this.r = intent.getStringExtra("TowerHeig1");
        this.s = intent.getStringExtra("SiteConfi1");
        this.t = intent.getStringExtra("PowerTop1");
        this.u = intent.getStringExtra("NumbD1");
        this.v = intent.getStringExtra("DG_Capac1");
        this.w = intent.getStringExtra("Regio1");
        this.x = intent.getStringExtra("Localit1");
        this.y = intent.getStringExtra("Zon1");
        this.z = intent.getStringExtra("Sbc1");
        this.A = intent.getStringExtra("Rm1");
        this.B = intent.getStringExtra("MtnPri1");
        this.C = intent.getStringExtra("OciPri1");
        this.D = intent.getStringExtra("MoovPri1");
        this.E = intent.getStringExtra("YoomPri1");
        this.F = intent.getStringExtra("SiteOwne1");
        this.G = intent.getStringExtra("VipPri1");
        this.H = intent.getStringExtra("EngPhon1");
        this.I = intent.getStringExtra("TeamLea1");
        ImageView imageView = (ImageView) findViewById(R.id.IHS_SBD_imageView);
        imageView.setBackgroundResource(R.drawable.ihs);
        if (this.z == "Netis") {
            imageView.setBackgroundResource(R.drawable.netis);
        } else if (this.z == "Sagemcom") {
            imageView.setBackgroundResource(R.drawable.sagemcom);
        } else if (this.z == "Comenergy") {
            imageView.setBackgroundResource(R.drawable.comenergie);
        }
    }

    protected synchronized void j() {
        this.K = new com.google.android.gms.common.api.o(this).a((com.google.android.gms.common.api.q) this).a((com.google.android.gms.common.api.r) this).a(com.google.android.gms.location.i.f962a).b();
    }

    public void k() {
        Location a2 = com.google.android.gms.location.i.b.a(this.K);
        this.O = new LatLng(a2.getLatitude(), a2.getLongitude());
        M = a2.getLatitude();
        N = a2.getLongitude();
        this.l = this.l.replace(",", ".");
        this.m = this.m.replace(",", ".");
        this.S.b(com.google.android.gms.maps.b.a(new com.google.android.gms.maps.model.c().a(new LatLng(Double.valueOf(Double.parseDouble(this.m)).doubleValue(), Double.valueOf(Double.parseDouble(this.l)).doubleValue())).a(this.P).c(360.0f).b(0.0f).a()));
        if (android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") == 0 || android.support.v4.app.a.a((Context) this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
        }
    }

    public void l() {
        m();
        this.l = this.l.replace(",", ".");
        this.m = this.m.replace(",", ".");
        this.S.a(new MarkerOptions().a(new LatLng(Double.valueOf(Double.parseDouble(this.m + "0")).doubleValue(), Double.valueOf(Double.parseDouble(this.l + "0")).doubleValue())).a(this.j).b(this.k).a(true).a(com.google.android.gms.maps.model.b.a(R.drawable.logoihs15p8)));
    }

    public void m() {
        boolean z;
        boolean z2;
        LocationManager locationManager = (LocationManager) getSystemService("location");
        try {
            z = locationManager.isProviderEnabled("gps");
        } catch (Exception e) {
            z = false;
        }
        try {
            z2 = locationManager.isProviderEnabled("network");
        } catch (Exception e2) {
            z2 = false;
        }
        if (z || z2) {
            return;
        }
        android.support.v7.a.u uVar = new android.support.v7.a.u(this);
        uVar.b(getResources().getString(R.string.gps_network_not_enabled));
        uVar.a(getResources().getString(R.string.open_location_settings), new aq(this));
        uVar.b(getString(R.string.Cancel), new ar(this));
        uVar.c();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.Retour_btn /* 2131558636 */:
                startActivity(new Intent(this, (Class<?>) MainActivity.class));
                break;
            case R.id.Comm_btn /* 2131558637 */:
                PopupMenu popupMenu = new PopupMenu(this, view);
                popupMenu.getMenuInflater().inflate(R.menu.menu_ok, popupMenu.getMenu());
                popupMenu.setOnMenuItemClickListener(new ap(this));
                popupMenu.show();
                break;
            case R.id.CMS_btn /* 2131558638 */:
                ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Text Label", this.j));
                new AlertDialog.Builder(this).setTitle("      Ouvrir le CMS").setMessage("SiteID (" + this.j + ") copié, à coller après avoir entré vos identifiants CMS dans votre navigateur !!!").setNegativeButton(R.string.Cancel, new ao(this)).setPositiveButton("Lancer CMS", new an(this)).setIcon(android.R.drawable.ic_dialog_alert).show();
                break;
            case R.id.Autres_App_btn /* 2131558639 */:
                startActivity(new Intent(this, (Class<?>) Autres_App.class));
                break;
        }
    }

    @Override // android.support.v4.app.v, android.support.v4.app.p, android.app.Activity
    @SuppressLint({"NewApi"})
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.site_view);
        i();
        h();
        ((SupportMapFragment) f().a(R.id.map_fragm)).a((com.google.android.gms.maps.h) this);
        this.R = new com.google.android.gms.common.api.o(this).a(com.google.android.gms.a.d.f515a).b();
    }

    @Override // android.support.v4.app.v, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.K != null) {
            com.google.android.gms.location.i.b.a(this.K, this);
        }
    }

    @Override // android.support.v4.app.v, android.app.Activity
    public void onStart() {
        super.onStart();
        this.R.e();
        com.google.android.gms.a.d.c.a(this.R, com.google.android.gms.a.a.a("http://schema.org/ViewAction", "MapsProxim Page", Uri.parse("http://host/path"), Uri.parse("android-app://com.elvalere.ihs_civportfolio/http/host/path")));
    }

    @Override // android.support.v4.app.v, android.app.Activity
    public void onStop() {
        super.onStop();
        com.google.android.gms.a.d.c.b(this.R, com.google.android.gms.a.a.a("http://schema.org/ViewAction", "MapsProxim Page", Uri.parse("http://host/path"), Uri.parse("android-app://com.elvalere.ihs_civportfolio/http/host/path")));
        this.R.g();
    }
}
