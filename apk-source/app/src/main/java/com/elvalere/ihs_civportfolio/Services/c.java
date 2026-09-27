package com.elvalere.ihs_civportfolio.Services;

/* loaded from: classes.dex */
class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Portfolio_Update f355a;

    c(Portfolio_Update portfolio_Update) {
        this.f355a = portfolio_Update;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f355a.g.booleanValue()) {
            new Thread(new d(this)).start();
        }
        this.f355a.o.postDelayed(this.f355a.p, this.f355a.e);
    }
}
