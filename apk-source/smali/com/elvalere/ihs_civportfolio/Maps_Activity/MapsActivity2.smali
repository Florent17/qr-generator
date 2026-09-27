.class public Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;
.super Landroid/support/v4/app/v;

# interfaces
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;
.implements Lcom/google/android/gms/location/g;
.implements Lcom/google/android/gms/maps/h;


# static fields
.field public static m:D

.field public static n:D


# instance fields
.field j:Lcom/google/android/gms/location/LocationRequest;

.field k:Lcom/google/android/gms/common/api/n;

.field l:Lcom/google/android/gms/maps/model/d;

.field o:Lcom/google/android/gms/maps/model/LatLng;

.field p:I

.field private q:Lcom/google/android/gms/common/api/n;

.field private r:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/v;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->p:I

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->l:Lcom/google/android/gms/maps/model/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->l:Lcom/google/android/gms/maps/model/d;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/d;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->i()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->k:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/n;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->i()V

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->j:Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->j:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->j:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->j:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->k:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->j:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/g;)Lcom/google/android/gms/common/api/t;

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string v0, "onConnectionFailed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 12

    const v11, 0x7f0200a5

    const/4 v10, 0x1

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SiteID1_20"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SiteName1_20"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Long1_2"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lat1_2"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v3, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {v11}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/d;

    move-result-object v1

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    invoke-static {v5}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/d;->b()V

    const-string v1, "SiteID2_2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SiteName2_2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Long2_2"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Lat2_2"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    const-string v6, "."

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v6, "."

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {v11}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/d;

    move-result-object v0

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    invoke-static {v4}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/d;->b()V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    int-to-float v0, v0

    invoke-static {v5, v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/maps/c;->a(Z)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->r:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/l;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/maps/l;->a(Z)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->h()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->k:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->e()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->b()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->k:Lcom/google/android/gms/common/api/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->k:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/n;)Landroid/location/Location;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->o:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->m:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->n:D

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    :try_start_1
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/a/u;

    invoke-direct {v0, p0}, Landroid/support/v7/a/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/u;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/u;

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Maps_Activity/a;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/a;-><init>(Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/u;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/u;

    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Maps_Activity/b;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/b;-><init>(Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/u;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/u;

    invoke-virtual {v0}, Landroid/support/v7/a/u;->c()Landroid/support/v7/a/t;

    :cond_0
    return-void

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v4/app/v;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->setContentView(I)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->f()Landroid/support/v4/app/ac;

    move-result-object v0

    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac;->a(I)Landroid/support/v4/app/s;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->a(Lcom/google/android/gms/maps/h;)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->j()V

    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/a/d;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->b()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->q:Lcom/google/android/gms/common/api/n;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/v;->onPause()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->k:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->k:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/location/g;)Lcom/google/android/gms/common/api/t;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/v;->onStart()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->q:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->e()V

    const-string v0, "http://schema.org/ViewAction"

    const-string v1, "MapsProxim Page"

    const-string v2, "http://host/path"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android-app://com.elvalere.ihs_civportfolio/http/host/path"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/a/a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/a/d;->c:Lcom/google/android/gms/a/e;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->q:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/a/e;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/a/a;)Lcom/google/android/gms/common/api/t;

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/v;->onStop()V

    const-string v0, "http://schema.org/ViewAction"

    const-string v1, "MapsProxim Page"

    const-string v2, "http://host/path"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android-app://com.elvalere.ihs_civportfolio/http/host/path"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Lcom/google/android/gms/a/a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/a/d;->c:Lcom/google/android/gms/a/e;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->q:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/a/e;->b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/a/a;)Lcom/google/android/gms/common/api/t;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Maps_Activity/MapsActivity2;->q:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->g()V

    return-void
.end method
