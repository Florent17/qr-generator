.class Lcom/elvalere/ihs_civportfolio/Main/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/p;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/p;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/q;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/q;-><init>(Lcom/elvalere/ihs_civportfolio/Main/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/p;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;->a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity2;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/r;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/r;-><init>(Lcom/elvalere/ihs_civportfolio/Main/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    goto :goto_0
.end method
