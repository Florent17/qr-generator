package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;

/* loaded from: classes.dex */
class ah implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivityFin f311a;

    ah(MainActivityFin mainActivityFin) {
        this.f311a = mainActivityFin;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent(this.f311a, (Class<?>) MainActivity.class);
        Toast.makeText(this.f311a.getApplicationContext(), "Remise à zéro", 0).show();
        this.f311a.startActivity(intent);
    }
}
