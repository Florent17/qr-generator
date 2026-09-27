.class public Lcom/elvalere/ihs_civportfolio/SplashScreen;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/SplashScreen;->setContentView(I)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :cond_0
    sget-wide v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->d:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    sget-wide v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    new-instance v0, Lcom/elvalere/ihs_civportfolio/a;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/a;-><init>(Lcom/elvalere/ihs_civportfolio/SplashScreen;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/SplashScreen;->finish()V

    return-void
.end method
