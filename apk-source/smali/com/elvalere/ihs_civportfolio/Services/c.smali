.class Lcom/elvalere/ihs_civportfolio/Services/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Services/c;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/c;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Services/d;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Services/d;-><init>(Lcom/elvalere/ihs_civportfolio/Services/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/c;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/c;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget-object v1, v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->p:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Services/c;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget-wide v2, v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
