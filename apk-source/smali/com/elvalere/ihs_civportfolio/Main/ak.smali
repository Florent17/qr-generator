.class Lcom/elvalere/ihs_civportfolio/Main/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/ak;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/ak;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->c:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/ak;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget v1, v1, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method
