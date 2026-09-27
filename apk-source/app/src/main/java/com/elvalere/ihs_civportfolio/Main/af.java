package com.elvalere.ihs_civportfolio.Main;

import android.database.Cursor;
import android.widget.FilterQueryProvider;

/* loaded from: classes.dex */
class af implements FilterQueryProvider {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f309a;

    af(ae aeVar) {
        this.f309a = aeVar;
    }

    @Override // android.widget.FilterQueryProvider
    public Cursor runQuery(CharSequence charSequence) {
        com.elvalere.ihs_civportfolio.a.a aVar;
        aVar = this.f309a.f308a.f300a;
        return aVar.b(charSequence.toString());
    }
}
