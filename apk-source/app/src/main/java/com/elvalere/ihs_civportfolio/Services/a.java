package com.elvalere.ihs_civportfolio.Services;

/* loaded from: classes.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocationUpdaterService f353a;

    a(LocationUpdaterService locationUpdaterService) {
        this.f353a = locationUpdaterService;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f353a.f.booleanValue()) {
            this.f353a.a();
        }
        this.f353a.j.postDelayed(this.f353a.k, 3600000L);
    }
}
