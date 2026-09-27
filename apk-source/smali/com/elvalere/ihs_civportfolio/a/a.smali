.class public Lcom/elvalere/ihs_civportfolio/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Ljava/lang/String;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "/data/data/com.elvalere.ihs_civportfolio/databases/IHS_Sites_Portfolio.sqlite"

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/a/a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "DbAdapter_Modif"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "IHS_Portfolio"

    new-array v2, v5, [Ljava/lang/String;

    sget-object v4, Lcom/elvalere/ihs_civportfolio/a/a;->a:Ljava/lang/String;

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    return-object v0

    :cond_2
    iget-object v4, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "IHS_Portfolio"

    new-array v7, v5, [Ljava/lang/String;

    sget-object v0, Lcom/elvalere/ihs_civportfolio/a/a;->a:Ljava/lang/String;

    aput-object v0, v7, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SiteName like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move-object v12, v3

    move-object v13, v3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/elvalere/ihs_civportfolio/a/a;
    .locals 3

    const-string v0, "No as _id,SiteIDIHS,SiteName,Longitude,Latitude,OrangePriorityV2,Operator,IHSEngineer,SiteType,TowerType,TowerHeight,SiteConfiguration,PowerTopology,NoofDG,DGCapacity,NewRegion,State,Zone,SBC,IHSRM,MTNPriorityV2,OrangePriorityV2,MoovPriorityV0,YoomeePriorityV,SiteOwner,Updat,IHSEngineerPhoneNumber,VIPNETPriority,IHSTeamLeader,AllPriorities"

    sput-object v0, Lcom/elvalere/ihs_civportfolio/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-object p0
.end method

.method public b()Landroid/database/Cursor;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "IHS_Portfolio"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/elvalere/ihs_civportfolio/a/a;->a:Ljava/lang/String;

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "DbAdapter_Modif"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "IHS_Portfolio"

    new-array v2, v5, [Ljava/lang/String;

    sget-object v4, Lcom/elvalere/ihs_civportfolio/a/a;->a:Ljava/lang/String;

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "IHS_Portfolio"

    new-array v7, v5, [Ljava/lang/String;

    sget-object v0, Lcom/elvalere/ihs_civportfolio/a/a;->a:Ljava/lang/String;

    aput-object v0, v7, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SiteIDIHS like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move-object v12, v3

    move-object v13, v3

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method public c()Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select Updat,  No as _id from IHS_Portfolio where No = 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object v0
.end method
