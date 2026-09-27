.class public Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/elvalere/ihs_civportfolio/a/a;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "SiteID1_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SiteName1_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Long1_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Lat1_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Site 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "SiteID2_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SiteName2_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Long2_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Lat2_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Site 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "SiteID3_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "SiteName3_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Long3_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Lat3_2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Site 3: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->setContentView(I)V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->a()Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->a()V

    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->b:Landroid/widget/Button;

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->c:Landroid/widget/Button;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/ah;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/ah;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;->b:Landroid/widget/Button;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/ai;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/ai;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivityFin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
