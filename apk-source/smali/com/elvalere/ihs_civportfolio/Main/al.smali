.class Lcom/elvalere/ihs_civportfolio/Main/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->c:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget v1, v1, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget v0, v0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->e:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget v1, v1, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget-object v1, v1, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->c()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    iget-object v1, v1, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-virtual {v1}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/elvalere/ihs_civportfolio/SplashScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/al;->a:Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-virtual {v1, v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
