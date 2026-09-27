.class Lcom/elvalere/ihs_civportfolio/Main/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/h;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/h;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/i;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/i;-><init>(Lcom/elvalere/ihs_civportfolio/Main/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/h;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    new-instance v1, Lcom/elvalere/ihs_civportfolio/Main/j;

    invoke-direct {v1, p0}, Lcom/elvalere/ihs_civportfolio/Main/j;-><init>(Lcom/elvalere/ihs_civportfolio/Main/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    goto :goto_0
.end method
