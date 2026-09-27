package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class g implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity f327a;

    g(MainActivity mainActivity) {
        this.f327a = mainActivity;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f327a.f297a;
        return aVar.a(charSequence.toString());
    }
}
