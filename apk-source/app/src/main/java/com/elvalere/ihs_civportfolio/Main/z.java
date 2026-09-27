package com.elvalere.ihs_civportfolio.Main;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;

/* loaded from: classes.dex */
class z implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity4 f346a;

    z(MainActivity4 mainActivity4) {
        this.f346a = mainActivity4;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent(this.f346a, (Class<?>) MainActivity.class);
        Toast.makeText(this.f346a.getApplicationContext(), "Retour", 0).show();
        this.f346a.startActivity(intent);
    }
}
