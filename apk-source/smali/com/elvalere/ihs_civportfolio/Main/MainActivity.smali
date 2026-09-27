.class public Lcom/elvalere/ihs_civportfolio/Main/MainActivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private a:Lcom/elvalere/ihs_civportfolio/a/a;

.field private b:Landroid/widget/SimpleCursorAdapter;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "tracker.db"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->e:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/databases/"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->f:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IHS-CIV_Portfolio/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)Lcom/elvalere/ihs_civportfolio/a/a;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    return-object v0
.end method

.method private e()V
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->b()Landroid/database/Cursor;

    move-result-object v3

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->c()Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "Updat"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "by Landry EKISSI  -  - elvalere@Copyright Janv2016 - Portfolio du "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

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

    const-string v0, "Longitude"

    aput-object v0, v4, v5

    const/4 v0, 0x5

    const-string v1, "Latitude"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "SiteType"

    aput-object v1, v4, v0

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040029

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b:Landroid/widget/SimpleCursorAdapter;

    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/e;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/e;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/f;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/f;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/g;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/g;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/h;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/h;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V

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


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b()V

    return-void

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "IHS_Sites_Portfolio.sqlite"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public d()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "       Check Portfolio UPdate!!!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Veuillez vous connecter \u00e0 internet et mettre \u00e0 jour la base de donn\u00e9es !!!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004a

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/l;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/l;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "T\u00e9l\u00e9charger"

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/k;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/k;-><init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Localisation de plusieurs Sites"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Affichage des Commentaires"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Check Update"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d008f
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a()V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->c()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->d:Landroid/widget/Button;

    new-instance v0, Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->a()Lcom/elvalere/ihs_civportfolio/a/a;

    :try_start_1
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a:Lcom/elvalere/ihs_civportfolio/a/a;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/a/a;->b()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->e()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->c()V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->d()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_2

    aget v0, p3, v1

    if-nez v0, :cond_2

    const-string v0, "DataBase Permission Granted"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "tag"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "DataBase Permission Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_3

    aget v0, p3, v1

    if-nez v0, :cond_3

    const-string v0, "Location Permission Granted"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "Location Permission Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
