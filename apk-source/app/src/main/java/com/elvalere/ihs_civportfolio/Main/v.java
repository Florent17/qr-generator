package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class v implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ MainActivity3 f342a;

    v(MainActivity3 mainActivity3) {
        this.f342a = mainActivity3;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f342a.f299a;
        return aVar.a(charSequence.toString());
    }
}
