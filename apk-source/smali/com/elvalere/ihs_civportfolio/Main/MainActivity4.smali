.class public Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;
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

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;)Landroid/widget/SimpleCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->b:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method private a()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v1, "SiteID1_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "SiteName1_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "Long1_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "Lat1_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const v1, 0x7f0d0097

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Site 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "SiteID2_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "SiteName2_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "Long2_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "Lat2_2"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const v1, 0x7f0d009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Site 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v1}, Lcom/elvalere/ihs_civportfolio/a/a;->b()Landroid/database/Cursor;

    move-result-object v4

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SiteIDIHS"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "SiteName"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "AllPriorities"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "IHSEngineer"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    const v3, 0x7f040029

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->b:Landroid/widget/SimpleCursorAdapter;

    const v1, 0x7f0d0094

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->b:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/ab;

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v10}, Lcom/elvalere/ihs_civportfolio/Main/ab;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0d0091

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/ac;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/elvalere/ihs_civportfolio/Main/ac;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->b:Landroid/widget/SimpleCursorAdapter;

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/ad;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/elvalere/ihs_civportfolio/Main/ad;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;)V

    invoke-virtual {v1, v2}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    const v1, 0x7f0d0092

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/ae;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/elvalere/ihs_civportfolio/Main/ae;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f0d00bf
        0x7f0d00c0
        0x7f0d00c1
        0x7f0d00be
    .end array-data
.end method

.method static synthetic b(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;)Lcom/elvalere/ihs_civportfolio/a/a;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->setContentView(I)V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->a()Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->a()V

    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->d:Landroid/widget/Button;

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->c:Landroid/widget/Button;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/z;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/z;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;->d:Landroid/widget/Button;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/aa;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/aa;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
