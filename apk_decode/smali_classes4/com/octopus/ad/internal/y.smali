.class public Lcom/octopus/ad/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/y$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/internal/y$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/internal/y;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/octopus/ad/internal/y;->b:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/octopus/ad/internal/y;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/octopus/ad/internal/y;->b()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/octopus/ad/internal/y;
    .locals 1

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/octopus/ad/internal/c/f;->l:Ljava/lang/String;

    const-string v0, "Unable to check visibility"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/y;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/y;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/y;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/y;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/y;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/internal/y;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/y;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/y;->e:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/y;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/y;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/y;->b:Z

    return p0
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/y;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/y;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/octopus/ad/internal/y;->b:Z

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/y$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 3
    iget-boolean v0, p0, Lcom/octopus/ad/internal/y;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/octopus/ad/internal/y;->a:Z

    .line 5
    new-instance v0, Lcom/octopus/ad/internal/y$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/y$1;-><init>(Lcom/octopus/ad/internal/y;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/y;->e:Ljava/lang/Runnable;

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/internal/y;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    new-instance v2, Lcom/octopus/ad/internal/y$2;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/y$2;-><init>(Lcom/octopus/ad/internal/y;)V

    const-wide/16 v5, 0xfa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public b(Lcom/octopus/ad/internal/y$a;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/y;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v2, v0

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    if-lez v0, :cond_2

    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v0, v0, 0x32

    if-lt v2, v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/y;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    iput-object v1, p0, Lcom/octopus/ad/internal/y;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/octopus/ad/internal/y;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iput-object v1, p0, Lcom/octopus/ad/internal/y;->c:Landroid/view/View;

    .line 8
    :cond_1
    iput-object v1, p0, Lcom/octopus/ad/internal/y;->d:Ljava/util/ArrayList;

    return-void
.end method
