.class Lcom/beizi/fusion/pn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/pn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/beizi/fusion/pn$b;

.field final synthetic b:Lcom/beizi/fusion/pn;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/pn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/pn$a;->b:Lcom/beizi/fusion/pn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/pn$a;->b:Lcom/beizi/fusion/pn;

    invoke-virtual {v0}, Lcom/beizi/fusion/pn;->i()Lcom/beizi/fusion/pn$b;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/pn$a;->a:Lcom/beizi/fusion/pn$b;

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/pn$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/pn$a;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/beizi/fusion/pn$a;->a:Lcom/beizi/fusion/pn$b;

    return-void
.end method

.method public static synthetic b(Lcom/beizi/fusion/pn$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/pn$a;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/pn$a;->b:Lcom/beizi/fusion/pn;

    invoke-virtual {v0}, Lcom/beizi/fusion/pn;->i()Lcom/beizi/fusion/pn$b;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/pn$a;->a:Lcom/beizi/fusion/pn$b;

    .line 3
    invoke-interface {v0}, Lcom/beizi/fusion/pn$b;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/beizi/fusion/pn$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/pn$a;->c()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/pn$a;->a:Lcom/beizi/fusion/pn$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x2

    .line 11
    if-le v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/beizi/fusion/pn$b;->a(Landroid/hardware/SensorEvent;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
