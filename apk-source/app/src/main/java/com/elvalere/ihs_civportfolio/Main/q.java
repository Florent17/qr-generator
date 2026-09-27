package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class q implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f337a;

    q(p pVar) {
        this.f337a = pVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f337a.f336a.f298a;
        return aVar.b(charSequence.toString());
    }
}
