package com.elvalere.ihs_civportfolio.Main;

/* loaded from: classes.dex */
class ak implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Main_Synchro f314a;

    ak(Main_Synchro main_Synchro) {
        this.f314a = main_Synchro;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f314a.c.setMax(this.f314a.f);
    }
}
