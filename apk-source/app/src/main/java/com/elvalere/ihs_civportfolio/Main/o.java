package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class o implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity2 f335a;

    o(MainActivity2 mainActivity2) {
        this.f335a = mainActivity2;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f335a.f298a;
        return aVar.a(charSequence.toString());
    }
}
