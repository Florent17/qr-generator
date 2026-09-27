.class Lcom/elvalere/ihs_civportfolio/Services/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Services/e;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/e;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->h:Landroid/widget/ProgressBar;

    sget v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method
