.class public Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;
.super Landroid/app/Service;


# static fields
.field public static a:J

.field public static b:J

.field public static c:I

.field public static d:J

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;


# instance fields
.field e:J

.field f:F

.field g:Ljava/lang/Boolean;

.field h:Landroid/widget/ProgressBar;

.field i:I

.field o:Landroid/os/Handler;

.field p:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a:J

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->b:J

    const/4 v0, 0x0

    sput v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->c:I

    const-wide/32 v0, -0x65813800

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->d:J

    const-string v0, "http://elvalere.net23.net/Android/IHS_CIV_Portfolio/BDD/IHS_Sites_Portfolio.zip"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->j:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/databases/"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->k:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/cache_Portfolio/"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->l:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/databases/IHS_Sites_Portfolio.sqlite"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/cache_Portfolio/IHS_Sites_Portfolio.elv"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->e:J

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->g:Ljava/lang/Boolean;

    iput v2, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->i:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->o:Landroid/os/Handler;

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Services/c;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Services/c;-><init>(Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->p:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->n:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    sput v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->c:I

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Services/e;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Services/e;-><init>(Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;)V

    invoke-direct {p0, v0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a(Ljava/lang/Runnable;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    iget v5, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->i:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->i:I

    new-instance v4, Lcom/elvalere/ihs_civportfolio/Services/f;

    invoke-direct {v4, p0}, Lcom/elvalere/ihs_civportfolio/Services/f;-><init>(Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;)V

    invoke-direct {p0, v4}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->b()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Services/g;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Services/g;-><init>(Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;)V

    invoke-direct {p0, v0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a(Ljava/lang/Runnable;)V
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

.method public b()V
    .locals 5

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

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->n:Ljava/lang/String;

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
    return-void

    :cond_1
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

.method public c()V
    .locals 7

    const/4 v6, 0x2

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/elvalere/ihs_civportfolio/SplashScreen;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "Portfolio Mis \u00e0 Jour !!!"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0200a5

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x270f

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public d()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sput-wide v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->b:J

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x278d00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->a()V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->c()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->p:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method
