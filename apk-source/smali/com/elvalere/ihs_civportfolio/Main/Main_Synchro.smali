.class public Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/widget/ProgressBar;

.field d:Landroid/app/Dialog;

.field e:I

.field f:I

.field g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->a:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/cache_Portfolio/IHS_Sites_Portfolio.elv2"

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->b:Ljava/lang/String;

    iput v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->e:I

    iput v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/aj;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/aj;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->d:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->d:Landroid/app/Dialog;

    const v1, 0x7f040045

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->d:Landroid/app/Dialog;

    const v1, 0x7f0d00f3

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->d:Landroid/app/Dialog;

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v4

    sput-wide v4, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a:J

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->f:I

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Main/ak;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Main/ak;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->runOnUiThread(Ljava/lang/Runnable;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    iget v4, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->e:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->e:I

    new-instance v3, Lcom/elvalere/ihs_civportfolio/Main/al;

    invoke-direct {v3, p0}, Lcom/elvalere/ihs_civportfolio/Main/al;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;)V

    invoke-virtual {p0, v3}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Main/am;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Main/am;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public c()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

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
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a:J

    const-wide/32 v4, 0x46c32800

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    sget-wide v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
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
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x7a120

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00f5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->setRequestedOrientation(I)V

    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->setContentView(I)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Main_Synchro;->a()V

    return-void
.end method
