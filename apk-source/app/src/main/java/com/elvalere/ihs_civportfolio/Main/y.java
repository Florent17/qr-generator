package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class y implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f345a;

    y(w wVar) {
        this.f345a = wVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f345a.f343a.f299a;
        return aVar.a(charSequence.toString());
    }
}
