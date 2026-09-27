.class public Lcom/elvalere/ihs_civportfolio/Main/Autres_App;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Main/Autres_App;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "Merci !!!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v2, 0x7f07004a

    const v3, 0x1080027

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, " Application -- Conso CIE RCI -- "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Aller \u00e0 la page de t\u00e9l\u00e9chargement ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/b;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/b;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Autres_App;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Oui"

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/a;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/a;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Autres_App;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, " Application -- Pharmacie Garde RCI -- "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Aller \u00e0 la page de t\u00e9l\u00e9chargement ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/d;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/d;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Autres_App;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Oui"

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/c;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/c;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Autres_App;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00ac
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;->setContentView(I)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/t;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/facebook/a/a;->a(Landroid/content/Context;)V

    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/widget/LikeView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/facebook/share/widget/i;->a:Lcom/facebook/share/widget/i;

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/LikeView;->setLikeViewStyle(Lcom/facebook/share/widget/i;)V

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/facebook/share/widget/c;->b:Lcom/facebook/share/widget/c;

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/LikeView;->setAuxiliaryViewPosition(Lcom/facebook/share/widget/c;)V

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "@string/facebook_app_like_adresse"

    sget-object v2, Lcom/facebook/share/widget/g;->b:Lcom/facebook/share/widget/g;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/LikeView;->a(Ljava/lang/String;Lcom/facebook/share/widget/g;)V

    :cond_2
    return-void
.end method
