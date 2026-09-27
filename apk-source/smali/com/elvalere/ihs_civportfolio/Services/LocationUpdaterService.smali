.class public Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;
.super Landroid/app/Service;


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:D

.field public static e:D


# instance fields
.field public final a:I

.field public f:Ljava/lang/Boolean;

.field public g:Landroid/location/LocationManager;

.field public h:Lcom/elvalere/ihs_civportfolio/Services/b;

.field public i:Landroid/location/Location;

.field j:Landroid/os/Handler;

.field k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->d:D

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->e:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const v0, 0x36ee80

    iput v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->f:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->i:Landroid/location/Location;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->j:Landroid/os/Handler;

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Services/a;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Services/a;-><init>(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 6

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->g:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->g:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->h:Lcom/elvalere/ihs_civportfolio/Services/b;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->f:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->g:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->h:Lcom/elvalere/ihs_civportfolio/Services/b;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->f:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic b(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V
    .locals 0

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->b()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v3, v1

    :goto_1
    const-wide/32 v6, -0x36ee80

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v5, v1

    :goto_3
    if-nez v3, :cond_0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_8

    move v4, v1

    :goto_4
    if-gez v0, :cond_9

    move v3, v1

    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v3, :cond_0

    if-eqz v5, :cond_6

    if-eqz v4, :cond_0

    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v6, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v4, v2

    goto :goto_4

    :cond_9
    move v3, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->g:Landroid/location/LocationManager;

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Services/b;

    invoke-direct {v0, p0}, Lcom/elvalere/ihs_civportfolio/Services/b;-><init>(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->h:Lcom/elvalere/ihs_civportfolio/Services/b;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->b()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->k:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method
