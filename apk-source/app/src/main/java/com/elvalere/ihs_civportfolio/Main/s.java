package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;

/* loaded from: classes.dex */
class s implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity3 f339a;

    s(MainActivity3 mainActivity3) {
        this.f339a = mainActivity3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent(this.f339a, (Class<?>) MainActivity.class);
        Toast.makeText(this.f339a.getApplicationContext(), "Retour", 0).show();
        this.f339a.startActivity(intent);
    }
}
