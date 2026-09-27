.class public Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)Landroid/widget/SimpleCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->b:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method private a()V
    .locals 7

    const/4 v2, 0x4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->b()Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

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

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040029

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->b:Landroid/widget/SimpleCursorAdapter;

    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->b:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/m;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/m;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/n;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/n;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->b:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/o;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/o;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/p;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/p;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0d00bf
        0x7f0d00c0
        0x7f0d00c1
        0x7f0d00be
    .end array-data
.end method

.method static synthetic b(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)Lcom/elvalere/ihs_civportfolio/a/a;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->setContentView(I)V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->a()Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->a()V

    return-void
.end method
