package com.elvalere.ihs_civportfolio.Services;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Portfolio_Update f358a;

    f(Portfolio_Update portfolio_Update) {
        this.f358a = portfolio_Update;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f358a.h.setProgress(this.f358a.i);
        this.f358a.f = (this.f358a.i / Portfolio_Update.c) * 100.0f;
    }
}
