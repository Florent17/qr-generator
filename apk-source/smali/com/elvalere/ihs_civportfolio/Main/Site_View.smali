.class public Lcom/elvalere/ihs_civportfolio/Main/Site_View;
.super Landroid/support/v4/app/v;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;
.implements Lcom/google/android/gms/location/g;
.implements Lcom/google/android/gms/maps/h;


# static fields
.field public static M:D

.field public static N:D


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Lcom/google/android/gms/location/LocationRequest;

.field K:Lcom/google/android/gms/common/api/n;

.field L:Lcom/google/android/gms/maps/model/d;

.field O:Lcom/google/android/gms/maps/model/LatLng;

.field P:I

.field public Q:I

.field private R:Lcom/google/android/gms/common/api/n;

.field private S:Lcom/google/android/gms/maps/c;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/v;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->P:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->Q:I

    return-void
.end method

.method static synthetic a(Lcom/elvalere/ihs_civportfolio/Main/Site_View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->L:Lcom/google/android/gms/maps/model/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->L:Lcom/google/android/gms/maps/model/d;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/d;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->k()V

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

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->K:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/n;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->k()V

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->J:Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->J:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->J:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->J:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->K:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->J:Lcom/google/android/gms/location/LocationRequest;

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
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->S:Lcom/google/android/gms/maps/c;

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
    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->S:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Z)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->S:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/l;->a(Z)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->j()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->K:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->e()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 20

    const v2, 0x7f0d00bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d00e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0108

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0109

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0107

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0d0105

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0d010c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0d010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0d0110

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0d00e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0d00e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0d00fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0d00fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0d00fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0d00fd

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v17, 0x7f0d00ff

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ing: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->o:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->H:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->j:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, " / "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->k:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->p:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->q:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->s:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->t:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->v:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R\u00e9gion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->I:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - RZ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->I:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->B:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->C:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->D:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->E:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->G:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d00e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->z:Ljava/lang/String;

    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0200bf

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->z:Ljava/lang/String;

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->z:Ljava/lang/String;

    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const v3, 0x7f0200a3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public i()V
    .locals 3

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SiteID1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->j:Ljava/lang/String;

    const-string v1, "SiteName1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->k:Ljava/lang/String;

    const-string v1, "Long1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l:Ljava/lang/String;

    const-string v1, "Lat1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m:Ljava/lang/String;

    const-string v1, "Priority1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->n:Ljava/lang/String;

    const-string v1, "IHSIng1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->o:Ljava/lang/String;

    const-string v1, "SiteTyp1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->p:Ljava/lang/String;

    const-string v1, "TowerTyp1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->q:Ljava/lang/String;

    const-string v1, "TowerHeig1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->r:Ljava/lang/String;

    const-string v1, "SiteConfi1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->s:Ljava/lang/String;

    const-string v1, "PowerTop1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->t:Ljava/lang/String;

    const-string v1, "NumbD1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->u:Ljava/lang/String;

    const-string v1, "DG_Capac1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->v:Ljava/lang/String;

    const-string v1, "Regio1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->w:Ljava/lang/String;

    const-string v1, "Localit1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->x:Ljava/lang/String;

    const-string v1, "Zon1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->y:Ljava/lang/String;

    const-string v1, "Sbc1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->z:Ljava/lang/String;

    const-string v1, "Rm1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->A:Ljava/lang/String;

    const-string v1, "MtnPri1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->B:Ljava/lang/String;

    const-string v1, "OciPri1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->C:Ljava/lang/String;

    const-string v1, "MoovPri1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->D:Ljava/lang/String;

    const-string v1, "YoomPri1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->E:Ljava/lang/String;

    const-string v1, "SiteOwne1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->F:Ljava/lang/String;

    const-string v1, "VipPri1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->G:Ljava/lang/String;

    const-string v1, "EngPhon1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->H:Ljava/lang/String;

    const-string v1, "TeamLea1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->I:Ljava/lang/String;

    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->z:Ljava/lang/String;

    const-string v2, "Netis"

    if-ne v1, v2, :cond_1

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->z:Ljava/lang/String;

    const-string v2, "Sagemcom"

    if-ne v1, v2, :cond_2

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->z:Ljava/lang/String;

    const-string v2, "Comenergy"

    if-ne v1, v2, :cond_0

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected declared-synchronized j()V
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

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->K:Lcom/google/android/gms/common/api/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()V
    .locals 6

    sget-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->K:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/n;)Landroid/location/Location;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->O:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->M:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->N:D

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/c;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/c;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    iget v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->P:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->a(F)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->c(F)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->b(F)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->S:Lcom/google/android/gms/maps/c;

    invoke-static {v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->b(Lcom/google/android/gms/maps/a;)V

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

.method public l()V
    .locals 6

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->S:Lcom/google/android/gms/maps/c;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f0200a5

    invoke-static {v2}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/d;

    return-void
.end method

.method public m()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/u;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/u;

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/aq;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/aq;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/u;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/u;

    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/ar;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/ar;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V

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

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Text Label"

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "      Ouvrir le CMS"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SiteID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") copi\u00e9, \u00e0 coller apr\u00e8s avoir entr\u00e9 vos identifiants CMS dans votre navigateur !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004a

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/ao;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/ao;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Lancer CMS"

    new-instance v2, Lcom/elvalere/ihs_civportfolio/Main/an;

    invoke-direct {v2, p0}, Lcom/elvalere/ihs_civportfolio/Main/an;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/ap;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/ap;-><init>(Lcom/elvalere/ihs_civportfolio/Main/Site_View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00ec
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v4/app/v;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->setContentView(I)V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->i()V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->h()V

    invoke-virtual {p0}, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->f()Landroid/support/v4/app/ac;

    move-result-object v0

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac;->a(I)Landroid/support/v4/app/s;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->a(Lcom/google/android/gms/maps/h;)V

    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/a/d;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->b()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->R:Lcom/google/android/gms/common/api/n;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/v;->onPause()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->K:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/location/d;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->K:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/location/g;)Lcom/google/android/gms/common/api/t;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/v;->onStart()V

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->R:Lcom/google/android/gms/common/api/n;

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

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->R:Lcom/google/android/gms/common/api/n;

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

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->R:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/a/e;->b(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/a/a;)Lcom/google/android/gms/common/api/t;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/Site_View;->R:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/n;->g()V

    return-void
.end method
