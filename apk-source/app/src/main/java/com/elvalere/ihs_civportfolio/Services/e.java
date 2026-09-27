package com.elvalere.ihs_civportfolio.Services;

/* loaded from: classes.dex */
class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Portfolio_Update f357a;

    e(Portfolio_Update portfolio_Update) {
        this.f357a = portfolio_Update;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f357a.h.setMax(Portfolio_Update.c);
    }
}
