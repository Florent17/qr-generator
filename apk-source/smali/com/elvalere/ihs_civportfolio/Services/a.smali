.class Lcom/elvalere/ihs_civportfolio/Services/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Services/a;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/a;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/a;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->a(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/a;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/a;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iget-object v1, v1, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->k:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
