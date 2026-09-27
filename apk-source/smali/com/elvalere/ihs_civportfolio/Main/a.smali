.class Lcom/elvalere/ihs_civportfolio/Main/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Main/Autres_App;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Main/Autres_App;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Main/a;->a:Lcom/elvalere/ihs_civportfolio/Main/Autres_App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Main/a;->a:Lcom/elvalere/ihs_civportfolio/Main/Autres_App;

    const-string v1, "https://elvalere.store.aptoide.com/app/market/tk.elvalere.dev.conso_cie_rci/1/20452971/Consommation+CIE+RCI"

    invoke-static {v0, v1}, Lcom/elvalere/ihs_civportfolio/Main/Autres_App;->a(Lcom/elvalere/ihs_civportfolio/Main/Autres_App;Ljava/lang/String;)V

    return-void
.end method
