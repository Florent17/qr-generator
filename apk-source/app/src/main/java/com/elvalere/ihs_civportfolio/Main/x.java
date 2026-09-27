package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class x implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f344a;

    x(w wVar) {
        this.f344a = wVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f344a.f343a.f299a;
        return aVar.b(charSequence.toString());
    }
}
