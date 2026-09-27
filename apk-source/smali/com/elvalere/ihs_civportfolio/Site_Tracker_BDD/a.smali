.class Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;


# direct methods
.method constructor <init>(Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/a;->a:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    iget-object v1, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/a;->a:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;

    invoke-static {v1}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->b(Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/a;->a:Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;

    invoke-static {v2}, Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;->a(Lcom/elvalere/ihs_civportfolio/Site_Tracker_BDD/AddTodoActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
