.class Lcom/elvalere/ihs_civportfolio/Services/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Services/f;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/f;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->h:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/f;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget v1, v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/f;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/f;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    iget v1, v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->i:I

    int-to-float v1, v1

    sget v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->f:F

    return-void
.end method
