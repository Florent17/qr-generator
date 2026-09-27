package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class j implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f330a;

    j(h hVar) {
        this.f330a = hVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f330a.f328a.f297a;
        return aVar.a(charSequence.toString());
    }
}
