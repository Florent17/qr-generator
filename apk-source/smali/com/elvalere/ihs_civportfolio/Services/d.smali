.class Lcom/elvalere/ihs_civportfolio/Services/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Services/c;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Services/c;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Services/d;->a:Lcom/elvalere/ihs_civportfolio/Services/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/elvalere/ihs_civportfolio/Services/d;->a:Lcom/elvalere/ihs_civportfolio/Services/c;

    iget-object v0, v0, Lcom/elvalere/ihs_civportfolio/Services/c;->a:Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;

    invoke-virtual {v0}, Lcom/elvalere/ihs_civportfolio/Services/Portfolio_Update;->d()V

    return-void
.end method
