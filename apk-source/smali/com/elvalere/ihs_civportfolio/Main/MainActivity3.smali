.class public Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/elvalere/ihs_civportfolio/a/a;

.field private b:Landroid/widget/SimpleCursorAdapter;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)Landroid/widget/SimpleCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->b:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method private a()V
    .locals 11

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SiteID1_2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "SiteName1_2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "Long1_2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "Lat1_2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Site 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->b()Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "SiteIDIHS"

    aput-object v0, v4, v6

    const/4 v0, 0x1

    const-string v1, "SiteName"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "AllPriorities"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "IHSEngineer"

    aput-object v1, v4, v0

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040029

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->b:Landroid/widget/SimpleCursorAdapter;

    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->b:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Main/t;

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/elvalere/ihs_civportfolio/Main/t;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/u;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/u;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->b:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/v;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/v;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/w;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/w;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d00bf
        0x7f0d00c0
        0x7f0d00c1
        0x7f0d00be
    .end array-data
.end method

.method static synthetic b(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)Lcom/elvalere/ihs_civportfolio/a/a;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->setContentView(I)V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->a()Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->a()V

    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->c:Landroid/widget/Button;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/s;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/s;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
