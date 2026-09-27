.class Lcom/elvalere/ihs_civportfolio/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/SplashScreen;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/SplashScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/a;->a:Lcom/elvalere/ihs_civportfolio/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Lcom/elvalere/ihs_civportfolio/a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/a;->a:Lcom/elvalere/ihs_civportfolio/SplashScreen;

    const-class v2, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/a;->a:Lcom/elvalere/ihs_civportfolio/SplashScreen;

    invoke-virtual {v1, v0}, Lcom/elvalere/ihs_civportfolio/SplashScreen;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/a;->a:Lcom/elvalere/ihs_civportfolio/SplashScreen;

    const-class v2, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/a;->a:Lcom/elvalere/ihs_civportfolio/SplashScreen;

    invoke-virtual {v1, v0}, Lcom/elvalere/ihs_civportfolio/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/a;->a:Lcom/elvalere/ihs_civportfolio/SplashScreen;

    const-class v3, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/a;->a:Lcom/elvalere/ihs_civportfolio/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/elvalere/ihs_civportfolio/SplashScreen;->startActivity(Landroid/content/Intent;)V

    throw v0
.end method
