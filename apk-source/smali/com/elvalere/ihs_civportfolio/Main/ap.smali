.class Lcom/elvalere/ihs_civportfolio/Main/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/ap;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/ap;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    const-class v3, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SiteID1_1"

    iget-object v3, p0, Lcom/elvalere/ihs_civportfolio/Main/ap;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    iget-object v3, v3, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SiteName1_1"

    iget-object v3, p0, Lcom/elvalere/ihs_civportfolio/Main/ap;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    iget-object v3, v3, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/ap;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-virtual {v2, v1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/ap;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    const-class v3, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/ap;->a:Lcom/elvalere/ihs_civportfolio/Main/Site_View;

    invoke-virtual {v2, v1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d0115
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
