package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class ad implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity4 f307a;

    ad(MainActivity4 mainActivity4) {
        this.f307a = mainActivity4;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f307a.f300a;
        return aVar.a(charSequence.toString());
    }
}
