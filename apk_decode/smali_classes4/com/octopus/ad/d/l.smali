.class public Lcom/octopus/ad/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/d/l$a;
    }
.end annotation


# static fields
.field public static volatile a:J

.field private static b:Landroid/hardware/SensorManager;


# instance fields
.field private A:Landroid/view/View;

.field private B:F

.field private final C:[F

.field private D:I

.field private final E:Landroid/hardware/SensorEventListener;

.field private c:Landroid/content/Context;

.field private d:D

.field private e:D

.field private f:D

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/octopus/ad/e/b;

.field private n:Lcom/octopus/ad/d/l$a;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/octopus/ad/d/l;->i:I

    .line 6
    .line 7
    iput v0, p0, Lcom/octopus/ad/d/l;->j:I

    .line 8
    .line 9
    iput v0, p0, Lcom/octopus/ad/d/l;->l:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->o:Z

    .line 12
    .line 13
    const-string v1, "50%"

    .line 14
    .line 15
    iput-object v1, p0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "70%"

    .line 18
    .line 19
    iput-object v1, p0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "140"

    .line 22
    .line 23
    iput-object v1, p0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->t:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->u:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->v:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->w:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->x:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->y:Z

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [F

    .line 41
    .line 42
    iput-object v0, p0, Lcom/octopus/ad/d/l;->C:[F

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    iput v0, p0, Lcom/octopus/ad/d/l;->D:I

    .line 46
    .line 47
    new-instance v0, Lcom/octopus/ad/d/l$1;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/octopus/ad/d/l$1;-><init>(Lcom/octopus/ad/d/l;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/octopus/ad/d/l;->E:Landroid/hardware/SensorEventListener;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "sensor"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/hardware/SensorManager;

    .line 67
    .line 68
    sput-object p1, Lcom/octopus/ad/d/l;->b:Landroid/hardware/SensorManager;

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/octopus/ad/d/l;->f()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private a(FFF)D
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/d/l;)D
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/octopus/ad/d/l;->d:D

    return-wide v0
.end method

.method public static synthetic a(Lcom/octopus/ad/d/l;FFF)D
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/d/l;->a(FFF)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic a(Lcom/octopus/ad/d/l;F)F
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/d/l;->B:F

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/d/l;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/octopus/ad/d/l;->l:I

    return p1
.end method

.method private a(J)V
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/octopus/ad/d/l$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/d/l$2;-><init>(Lcom/octopus/ad/d/l;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(FFFD)Z
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x402399999999999aL    # 9.8

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 21
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    cmpl-double p1, p1, p4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/d/l;FFFD)Z
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/octopus/ad/d/l;->a(FFFD)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/d/l;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/octopus/ad/d/l;->t:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d/l;->l:I

    return p0
.end method

.method private b(FFFD)Z
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x402399999999999aL    # 9.8

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 6
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    cmpl-double p1, p1, p4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/d/l;FFFD)Z
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/octopus/ad/d/l;->b(FFFD)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/d/l;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/d/l;->u:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/d/l;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/d/l;->e:D

    return-wide v0
.end method

.method public static synthetic c(Lcom/octopus/ad/d/l;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/d/l;->v:Z

    return p1
.end method

.method private d()I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/d/l;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static synthetic d(Lcom/octopus/ad/d/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/d/l;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/octopus/ad/d/l;->i:I

    return v0
.end method

.method public static synthetic d(Lcom/octopus/ad/d/l;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/d/l;->w:Z

    return p1
.end method

.method private e()I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/d/l;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static synthetic e(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d/l;->h:I

    return p0
.end method

.method public static synthetic e(Lcom/octopus/ad/d/l;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/d/l;->x:Z

    return p1
.end method

.method public static synthetic f(Lcom/octopus/ad/d/l;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d/l;->B:F

    return p0
.end method

.method private f()V
    .locals 2

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/octopus/ad/d/l;->a(D)V

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/octopus/ad/d/l;->b(D)V

    const-wide v0, 0x4041800000000000L    # 35.0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/octopus/ad/d/l;->c(D)V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Lcom/octopus/ad/d/l;->c(I)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/octopus/ad/d/l;->a(I)V

    return-void
.end method

.method public static synthetic f(Lcom/octopus/ad/d/l;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/d/l;->y:Z

    return p1
.end method

.method private g()V
    .locals 2

    .line 2
    sget-object v0, Lcom/octopus/ad/d/l;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/octopus/ad/d/l;->E:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/octopus/ad/d/l;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d/l;->C:[F

    return-object p0
.end method

.method public static synthetic h(Lcom/octopus/ad/d/l;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/d/l;->f:D

    return-wide v0
.end method

.method private h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/e/b;->b()V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/octopus/ad/d/l;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/d/l;->j:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/octopus/ad/d/l;->j:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic j(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d/l;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d/l;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d/l;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic m(Lcom/octopus/ad/d/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/l;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/octopus/ad/d/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/l;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic o(Lcom/octopus/ad/d/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/l;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/octopus/ad/d/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/l;->w:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic q(Lcom/octopus/ad/d/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/l;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic r(Lcom/octopus/ad/d/l;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d/l;->y:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic s(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d/l;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/d/l;->d()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic u(Lcom/octopus/ad/d/l;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/d/l;->e()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public a(FF)F
    .locals 1

    .line 1
    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    const/high16 p2, 0x41700000    # 15.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr p2, p1

    float-to-int p1, p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    return p2

    :cond_1
    :goto_0
    return p1
.end method

.method public a(Landroid/view/View;Landroid/view/View;FLjava/lang/String;Lcom/octopus/ad/internal/p;Z)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 48
    const-string v4, "enter getShakeView"

    const-string v5, "OctopusAd"

    invoke-static {v5, v4}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v4, v0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    if-eqz v4, :cond_18

    if-eqz v1, :cond_18

    if-eqz v2, :cond_18

    iget v4, v0, Lcom/octopus/ad/d/l;->h:I

    if-nez v4, :cond_0

    iget v4, v0, Lcom/octopus/ad/d/l;->g:I

    if-nez v4, :cond_0

    goto/16 :goto_b

    .line 50
    :cond_0
    iput-object v1, v0, Lcom/octopus/ad/d/l;->z:Landroid/view/View;

    .line 51
    iput-object v2, v0, Lcom/octopus/ad/d/l;->A:Landroid/view/View;

    .line 52
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v1

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v2

    .line 54
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    iget v4, v0, Lcom/octopus/ad/d/l;->k:I

    if-nez v4, :cond_1

    .line 56
    const-string v4, "\u6447\u4e00\u6447\u8df3\u8f6c\u81f3\n\u7b2c\u4e09\u65b9\u5e94\u7528\u6216\u8be6\u60c5\u9875"

    goto :goto_0

    .line 57
    :cond_1
    const-string v4, "\u8f6c\u4e00\u8f6c\u8df3\u8f6c\u81f3\n\u7b2c\u4e09\u65b9\u5e94\u7528\u6216\u8be6\u60c5\u9875"

    goto :goto_0

    :cond_2
    move-object/from16 v4, p4

    .line 58
    :goto_0
    iget-object v6, v0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "50%"

    const-string v8, "0"

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 59
    :cond_3
    iput-object v7, v0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    .line 60
    :cond_4
    iget-object v6, v0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 61
    :cond_5
    iput-object v7, v0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    .line 62
    :cond_6
    iget-object v6, v0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "180"

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 63
    :cond_7
    iput-object v7, v0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    .line 64
    :cond_8
    iget-object v6, v0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 65
    :cond_9
    iput-object v7, v0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    .line 66
    :cond_a
    iget-object v6, v0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_b

    .line 67
    iget-object v6, v0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/2addr v6, v1

    .line 68
    div-int/lit8 v6, v6, 0x64

    goto :goto_1

    .line 69
    :cond_b
    iget-object v6, v0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 70
    :goto_1
    iget-object v9, v0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 71
    iget-object v9, v0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/2addr v9, v2

    .line 72
    div-int/lit8 v9, v9, 0x64

    goto :goto_2

    .line 73
    :cond_c
    iget-object v9, v0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 74
    :goto_2
    iget-object v10, v0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 75
    iget-object v10, v0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/2addr v10, v1

    .line 76
    div-int/lit8 v10, v10, 0x64

    goto :goto_3

    .line 77
    :cond_d
    iget-object v10, v0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :goto_3
    if-le v10, v1, :cond_e

    move v10, v1

    .line 78
    :cond_e
    iget-object v11, v0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 79
    iget-object v11, v0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v11, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v2

    .line 80
    div-int/lit8 v7, v7, 0x64

    goto :goto_4

    .line 81
    :cond_f
    iget-object v7, v0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_4
    if-le v7, v2, :cond_10

    move v7, v2

    .line 82
    :cond_10
    iget-object v8, v0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    int-to-float v10, v10

    invoke-static {v8, v10}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    .line 83
    iget-object v10, v0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    int-to-float v7, v7

    invoke-static {v10, v7}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 84
    iget-object v10, v0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v10, v6}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 85
    iget-object v10, v0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    int-to-float v9, v9

    invoke-static {v10, v9}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "widthInt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",heightInt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "centerYInt = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",centerXInt = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",adWidthDp = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",adHeightDp = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_11

    .line 88
    iget-object v9, v0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v9, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    div-int/lit8 v9, v2, 0x2

    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p6, :cond_14

    .line 89
    sget-object v10, Lcom/octopus/ad/internal/p;->b:Lcom/octopus/ad/internal/p;

    if-ne v3, v10, :cond_12

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_5
    move/from16 v16, v1

    goto :goto_6

    .line 90
    :cond_12
    sget-object v10, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    if-eq v3, v10, :cond_13

    sget-object v10, Lcom/octopus/ad/internal/p;->f:Lcom/octopus/ad/internal/p;

    if-ne v3, v10, :cond_14

    :cond_13
    int-to-float v1, v1

    const/high16 v10, 0x43b40000    # 360.0f

    div-float/2addr v1, v10

    goto :goto_5

    :cond_14
    move/from16 v16, v2

    :goto_6
    cmpg-float v1, v16, v2

    if-gez v1, :cond_15

    int-to-float v1, v8

    mul-float v1, v1, v16

    float-to-int v8, v1

    int-to-float v1, v7

    mul-float v1, v1, v16

    float-to-int v7, v1

    mul-float v1, p3, v16

    move v15, v1

    :goto_7
    move v14, v8

    goto :goto_8

    :cond_15
    move/from16 v15, p3

    goto :goto_7

    .line 91
    :goto_8
    new-instance v12, Lcom/octopus/ad/e/b;

    iget-object v13, v0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    iget v1, v0, Lcom/octopus/ad/d/l;->k:I

    move/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Lcom/octopus/ad/e/b;-><init>(Landroid/content/Context;IFFI)V

    iput-object v12, v0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    .line 92
    invoke-virtual {v12, v4}, Lcom/octopus/ad/e/b;->setTitleText(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/octopus/ad/internal/p;->f:Lcom/octopus/ad/internal/p;

    const/4 v2, -0x2

    if-eq v3, v1, :cond_17

    sget-object v1, Lcom/octopus/ad/internal/p;->b:Lcom/octopus/ad/internal/p;

    if-ne v3, v1, :cond_16

    goto :goto_9

    .line 94
    :cond_16
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v14, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    div-int/lit8 v2, v7, 0x2

    sub-int/2addr v9, v2

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 96
    div-int/lit8 v2, v14, 0x2

    sub-int/2addr v6, v2

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 97
    iget-object v2, v0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",leftMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",widthInt = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 99
    :cond_17
    :goto_9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v1, v14, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    iget-object v2, v0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :goto_a
    iget-object v1, v0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    invoke-virtual {v1}, Lcom/octopus/ad/e/b;->a()V

    .line 102
    iget-object v1, v0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    return-object v1

    :cond_18
    :goto_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public a()V
    .locals 2

    .line 43
    const-string v0, "OctopusAd"

    const-string v1, "enter unRegisterShakeListenerAndSetDefault"

    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/octopus/ad/d/l;->h()V

    .line 45
    invoke-direct {p0}, Lcom/octopus/ad/d/l;->g()V

    .line 46
    invoke-virtual {p0}, Lcom/octopus/ad/d/l;->c()V

    return-void
.end method

.method public a(D)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/octopus/ad/d/l;->d:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/octopus/ad/d/l;->g:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 38
    :try_start_0
    iput-object p1, p0, Lcom/octopus/ad/d/l;->A:Landroid/view/View;

    .line 39
    sget-object p1, Lcom/octopus/ad/d/l;->b:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/octopus/ad/d/l;->E:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 41
    sget-object p1, Lcom/octopus/ad/d/l;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/octopus/ad/d/l;->E:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 42
    :goto_0
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$v;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->d()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/octopus/ad/d/l;->a(D)V

    .line 13
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->d()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/octopus/ad/d/l;->b(D)V

    .line 14
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->f()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/octopus/ad/d/l;->c(D)V

    .line 15
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/d/l;->c(I)V

    .line 16
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/octopus/ad/d/l;->b(I)V

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lcom/octopus/ad/d/l;->a(I)V

    return-void
.end method

.method public a(Lcom/octopus/ad/a/d;)V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/octopus/ad/d/l;->A:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/octopus/ad/d/l;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter callBackShakeHappened and mShakeStateListener != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/d/l;->n:Lcom/octopus/ad/d/l$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",!isCallBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/octopus/ad/d/l;->o:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd"

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/octopus/ad/d/l;->n:Lcom/octopus/ad/d/l$a;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/octopus/ad/d/l;->o:Z

    if-nez v0, :cond_5

    .line 27
    const-string v0, "callback onShakeHappened()"

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/octopus/ad/d/l;->n:Lcom/octopus/ad/d/l$a;

    invoke-interface {v0, p1}, Lcom/octopus/ad/d/l$a;->a(Lcom/octopus/ad/a/d;)V

    .line 29
    iput-boolean v2, p0, Lcom/octopus/ad/d/l;->o:Z

    .line 30
    iget p1, p0, Lcom/octopus/ad/d/l;->D:I

    if-ne p1, v2, :cond_2

    .line 31
    invoke-direct {p0}, Lcom/octopus/ad/d/l;->g()V

    .line 32
    invoke-virtual {p0}, Lcom/octopus/ad/d/l;->c()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/octopus/ad/d/l;->a()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    const-wide/16 v0, 0x7d0

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/octopus/ad/d/l;->a(J)V

    .line 35
    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/octopus/ad/d/l;->a:J

    :cond_5
    return-void

    .line 36
    :cond_6
    invoke-virtual {p0}, Lcom/octopus/ad/d/l;->b()V

    return-void

    .line 37
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/octopus/ad/d/l;->b()V

    return-void
.end method

.method public a(Lcom/octopus/ad/d/l$a;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/octopus/ad/d/l;->n:Lcom/octopus/ad/d/l$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/octopus/ad/d/l;->p:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/octopus/ad/d/l;->q:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/octopus/ad/d/l;->r:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/octopus/ad/d/l;->s:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->t:Z

    .line 8
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->u:Z

    .line 9
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->v:Z

    .line 10
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->w:Z

    .line 11
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->x:Z

    .line 12
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->y:Z

    .line 13
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->o:Z

    .line 14
    iput v0, p0, Lcom/octopus/ad/d/l;->i:I

    .line 15
    iput v0, p0, Lcom/octopus/ad/d/l;->j:I

    .line 16
    iput v0, p0, Lcom/octopus/ad/d/l;->l:I

    return-void
.end method

.method public b(D)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/octopus/ad/d/l;->e:D

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/octopus/ad/d/l;->k:I

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->t:Z

    .line 6
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->u:Z

    .line 7
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->v:Z

    .line 8
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->w:Z

    .line 9
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->x:Z

    .line 10
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->y:Z

    .line 11
    iput-boolean v0, p0, Lcom/octopus/ad/d/l;->o:Z

    .line 12
    iput v0, p0, Lcom/octopus/ad/d/l;->i:I

    .line 13
    iput v0, p0, Lcom/octopus/ad/d/l;->j:I

    .line 14
    iput v0, p0, Lcom/octopus/ad/d/l;->l:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/octopus/ad/d/l;->n:Lcom/octopus/ad/d/l$a;

    .line 16
    iput-object v0, p0, Lcom/octopus/ad/d/l;->c:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/octopus/ad/d/l;->m:Lcom/octopus/ad/e/b;

    .line 18
    iput-object v0, p0, Lcom/octopus/ad/d/l;->A:Landroid/view/View;

    return-void
.end method

.method public c(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/d/l;->f:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/octopus/ad/d/l;->h:I

    return-void
.end method
