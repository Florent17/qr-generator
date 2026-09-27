.class public Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/b;

.field private b:Landroid/content/Context;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id_site"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name_site"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dates"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comments"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SITE_TRACKER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;
    .locals 2

    new-instance v0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/b;

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->a:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/b;

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->a:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/b;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public a(J)V
    .locals 5

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SITE_TRACKER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id_site"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name_site"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dates"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comments"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SITE_TRACKER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public b()Landroid/database/Cursor;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "id_site"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name_site"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "dates"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "comments"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/d;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SITE_TRACKER"

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
