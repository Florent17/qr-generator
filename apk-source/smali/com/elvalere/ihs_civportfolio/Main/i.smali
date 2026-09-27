.class Lcom/elvalere/ihs_civportfolio/Main/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/h;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/h;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/i;->a:Lcom/elvalere/ihs_civportfolio/Main/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/i;->a:Lcom/elvalere/ihs_civportfolio/Main/h;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Main/h;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->b(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)Lcom/elvalere/ihs_civportfolio/a/a;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/elvalere/ihs_civportfolio/a/a;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
