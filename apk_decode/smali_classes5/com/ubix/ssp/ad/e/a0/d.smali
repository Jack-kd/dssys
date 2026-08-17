.class public Lcom/ubix/ssp/ad/e/a0/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/d$b;,
        Lcom/ubix/ssp/ad/e/a0/d$c;,
        Lcom/ubix/ssp/ad/e/a0/d$d;,
        Lcom/ubix/ssp/ad/e/a0/d$e;,
        Lcom/ubix/ssp/ad/e/a0/d$f;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Lcom/ubix/ssp/ad/e/a0/d$f;

.field private e:Lcom/ubix/ssp/ad/e/a0/d$e;

.field private f:Lcom/ubix/ssp/ad/e/a0/d$d;

.field private g:Lcom/ubix/ssp/ad/e/a0/d$c;

.field private h:Landroid/app/Application;

.field private i:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/ad/e/a0/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d;->j:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/ubix/ssp/ad/e/a0/d;->b:I

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->b:I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/a0/d;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    return p0
.end method

.method private a()J
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/a0/d$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/d$b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onStopped"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/d$b;->b()J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/app/Application;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d;->h:Landroid/app/Application;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/d$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/d$a;-><init>(Lcom/ubix/ssp/ad/e/a0/d;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private b()I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    move v7, v3

    move v6, v4

    :cond_0
    :goto_0
    if-ge v7, v1, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/ubix/ssp/ad/e/a0/d$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/ubix/ssp/ad/e/a0/d$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/d$b;->a(Lcom/ubix/ssp/ad/e/a0/d$b;)Z

    move-result v8

    if-nez v8, :cond_0

    move v6, v3

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockPredict-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    const-string v0, "onPausedonStoppedonStartedonResumed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v6, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    const-string v0, "onStoppedonStarted"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-gtz v1, :cond_4

    return v2

    :cond_4
    array-length v0, v0

    sub-int/2addr v0, v4

    return v0

    :cond_5
    return v2
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/d;)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    return v0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/a0/d;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ubix/ssp/ad/e/a0/d;->a:I

    return v0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/a0/d;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/a0/d;->b:I

    return p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$f;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/d;->d:Lcom/ubix/ssp/ad/e/a0/d$f;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/d;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/d;->e:Lcom/ubix/ssp/ad/e/a0/d$e;

    return-object p0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$d;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/d;->f:Lcom/ubix/ssp/ad/e/a0/d$d;

    return-object p0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$c;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/d;->g:Lcom/ubix/ssp/ad/e/a0/d$c;

    return-object p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/e/a0/d;)J
    .locals 2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/d;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/e/a0/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/d;->b()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/a0/d$c;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d;->g:Lcom/ubix/ssp/ad/e/a0/d$c;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/d$d;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d;->f:Lcom/ubix/ssp/ad/e/a0/d$d;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/d$e;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d;->e:Lcom/ubix/ssp/ad/e/a0/d$e;

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/a0/d$f;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d;->d:Lcom/ubix/ssp/ad/e/a0/d$f;

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d;->h:Landroid/app/Application;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d;->i:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
