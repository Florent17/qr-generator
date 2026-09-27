.class Lcom/elvalere/ihs_civportfolio/Main/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/an;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/an;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "io.cordova.myapp24e846"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/an;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-virtual {v1, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/an;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    const-string v1, "http://196.47.173.43:85"

    invoke-static {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->a(Lcom/elvalere/ihs_civportfolio/Main/Site_View;Ljava/lang/String;)V

    goto :goto_0
.end method
