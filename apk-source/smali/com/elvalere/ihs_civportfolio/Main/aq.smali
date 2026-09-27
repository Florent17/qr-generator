.class Lcom/elvalere/ihs_civportfolio/Main/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/aq;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/aq;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-virtual {v1, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
