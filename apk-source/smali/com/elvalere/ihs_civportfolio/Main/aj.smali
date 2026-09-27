.class Lcom/elvalere/ihs_civportfolio/Main/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/aj;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/aj;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->b()V

    return-void
.end method
