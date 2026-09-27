.class public Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;
.super Landroid/support/v7/a/e;


# static fields
.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;


# instance fields
.field private j:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

.field private k:Landroid/widget/ListView;

.field private p:Landroid/support/v4/widget/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "tracker.db"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->l:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/databases/"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->m:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IHS-CIV_Portfolio/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x5

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->setContentView(I)V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->j:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->j:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->a()Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->k:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->k:Landroid/widget/ListView;

    const v1, 0x7f0d00ba

    invoke-virtual {p0, v1}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->j:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->b()Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v6

    const/4 v0, 0x1

    const-string v1, "id_site"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "name_site"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "dates"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "comments"

    aput-object v1, v4, v0

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    new-instance v0, Landroid/support/v4/widget/aw;

    const v2, 0x7f040022

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/aw;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->p:Landroid/support/v4/widget/aw;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->p:Landroid/support/v4/widget/aw;

    invoke-virtual {v0}, Landroid/support/v4/widget/aw;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->p:Landroid/support/v4/widget/aw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/e;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/e;-><init>(Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d00a2
        0x7f0d00a3
        0x7f0d00a4
        0x7f0d00a6
        0x7f0d00a5
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d008d

    if-ne v0, v1, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "tag"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Sauvegarde Effectu\u00e9e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_2
.end method
