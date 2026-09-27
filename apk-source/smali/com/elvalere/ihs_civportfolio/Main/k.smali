.class Lcom/elvalere/ihs_civportfolio/Main/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/k;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/k;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-virtual {v1}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/k;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-virtual {v1, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
