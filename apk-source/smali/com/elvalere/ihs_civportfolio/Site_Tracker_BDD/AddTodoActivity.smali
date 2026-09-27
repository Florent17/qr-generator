.class public Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private k:Landroid/app/DatePickerDialog;

.field private l:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "tracker.db"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->g:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/databases/"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->h:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IHS-CIV_Portfolio/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->l:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/a;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/a;-><init>(Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->k:Landroid/app/DatePickerDialog;

    return-void
.end method

.method static synthetic b(Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->e:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->k:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->b:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->g:Ljava/lang/String;

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

    if-eq v3, v4, :cond_2

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
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/TodoListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
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

    :cond_3
    const-string v0, "Empty !"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7f0d008d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Ajouter votre commentaire"

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "SiteID1_1"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SiteName1_1"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->setContentView(I)V

    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->c:Landroid/widget/EditText;

    sget-object v6, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setClickable(Z)V

    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->d:Landroid/widget/EditText;

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-ne v4, v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->e:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->a:Landroid/widget/Button;

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->b:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->b:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->a()Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->l:Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->a()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1
.end method
