package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class ag implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f310a;

    ag(ae aeVar) {
        this.f310a = aeVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f310a.f308a.f300a;
        return aVar.a(charSequence.toString());
    }
}
