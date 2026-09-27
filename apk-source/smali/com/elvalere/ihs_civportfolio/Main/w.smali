.class Lcom/elvalere/ihs_civportfolio/Main/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/w;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/w;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/x;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/x;-><init>(Lcom/elvalere/ihs_civportfolio/Main/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/w;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;->a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity3;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/y;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/y;-><init>(Lcom/elvalere/ihs_civportfolio/Main/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    goto :goto_0
.end method
