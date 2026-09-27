.class Lcom/elvalere/ihs_civportfolio/Main/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/f;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/f;->a:Lcom/elvalere/ihs_civportfolio/Main/MainActivity;

    invoke-static {v0}, Lcom/elvalere/ihs_civportfolio/Main/MainActivity;->a(Lcom/elvalere/ihs_civportfolio/Main/MainActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
