package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class i implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f329a;

    i(h hVar) {
        this.f329a = hVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f329a.f328a.f297a;
        return aVar.b(charSequence.toString());
    }
}
