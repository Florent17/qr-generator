.class public Lcom/elvalere/ihs_civportfolio/Services/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;


# direct methods
.method public constructor <init>(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iget-object v1, v1, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->i:Landroid/location/Location;

    invoke-virtual {v0, p1, v1}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iput-object p1, v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->i:Landroid/location/Location;

    :try_start_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->d:D

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->e:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->e:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->b(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->b(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    invoke-static {v1}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->b(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V

    throw v0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/b;->a:Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;->b(Lcom/elvalere/ihs_civportfolio/Services/LocationUpdaterService;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
