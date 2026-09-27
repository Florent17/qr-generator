package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class r implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f338a;

    r(p pVar) {
        this.f338a = pVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f338a.f336a.f298a;
        return aVar.a(charSequence.toString());
    }
}
