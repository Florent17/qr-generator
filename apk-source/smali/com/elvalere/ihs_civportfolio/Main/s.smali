.class Lcom/elvalere/ihs_civportfolio/Main/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/s;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/s;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;

    const-class v2, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/s;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;

    invoke-virtual {v1}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Retour"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/s;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;

    invoke-virtual {v1, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
