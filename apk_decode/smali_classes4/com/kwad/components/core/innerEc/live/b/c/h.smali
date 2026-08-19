.class public final Lcom/kwad/components/core/innerEc/live/b/c/h;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/k/a;


# instance fields
.field private final WE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private WF:Landroid/widget/RelativeLayout;

.field private WG:Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;

.field private WH:Lcom/kwad/components/core/innerEc/live/widget/d;

.field private WI:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private WJ:J

.field private WK:Z

.field private WL:Lcom/kwad/components/core/innerEc/live/like/b;

.field private WM:J

.field private WN:I

.field private final WO:Landroid/os/Handler;

.field private WP:Ljava/lang/Runnable;

.field private volatile WQ:Z

.field private final WR:Ljava/lang/Object;

.field private final WS:Ljava/lang/Runnable;

.field private final WT:Lcom/kwad/components/core/k/a;

.field private final WU:Lcom/kwad/components/core/innerEc/live/like/b$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WE:Ljava/util/List;

    .line 10
    .line 11
    const-wide/16 v0, 0x3e8

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WM:J

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WN:I

    .line 17
    .line 18
    new-instance v1, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WO:Landroid/os/Handler;

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WQ:Z

    .line 30
    .line 31
    new-instance v0, Ljava/lang/Object;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WR:Ljava/lang/Object;

    .line 37
    .line 38
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/h$1;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/h$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WS:Ljava/lang/Runnable;

    .line 44
    .line 45
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/h$2;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/h$2;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WT:Lcom/kwad/components/core/k/a;

    .line 51
    .line 52
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/h$5;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/h$5;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WU:Lcom/kwad/components/core/innerEc/live/like/b$a;

    .line 58
    .line 59
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/h;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WM:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/h;)Lcom/kwad/components/core/innerEc/live/widget/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WH:Lcom/kwad/components/core/innerEc/live/widget/d;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/h;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WQ:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sw()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WR:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/b/c/h;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WN:I

    return p0
.end method

.method private d(FF)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WH:Lcom/kwad/components/core/innerEc/live/widget/d;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/kwad/components/core/innerEc/live/widget/d;->J(J)V

    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WS:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WS:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    iget-boolean v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UU:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/h;->f(FF)V

    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->su()V

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v2, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UU:Z

    :goto_0
    return v2
.end method

.method public static synthetic e(Lcom/kwad/components/core/innerEc/live/b/c/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sv()V

    return-void
.end method

.method private e(FF)Z
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WJ:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WK:Z

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/h;->d(FF)Z

    move-result p1

    return p1
.end method

.method private f(FF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "playLikeImageViewAnimator: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "LiveLikePresenter"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UA:Lcom/kwad/components/core/innerEc/live/base/a;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, p1, p2}, Lcom/kwad/components/core/innerEc/live/base/a;->c(FF)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/b/a/b;->UT:Lcom/kwad/components/core/innerEc/live/a/e;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p2, Lcom/kwad/components/core/innerEc/live/b/c/h$7;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/kwad/components/core/innerEc/live/b/c/h$7;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method private sp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UB:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WT:Lcom/kwad/components/core/k/a;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private sq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WS:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WH:Lcom/kwad/components/core/innerEc/live/widget/d;

    .line 9
    .line 10
    sget v1, Lcom/kwad/components/core/innerEc/live/widget/d;->Yo:I

    .line 11
    .line 12
    int-to-long v1, v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/kwad/components/core/innerEc/live/widget/d;->J(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UB:Ljava/util/List;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WT:Lcom/kwad/components/core/k/a;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private sr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WI:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/h$3;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/h$3;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WI:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private ss()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/h$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/h$4;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WP:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method

.method private st()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WH:Lcom/kwad/components/core/innerEc/live/widget/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WI:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sr()V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/h$6;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WI:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Lcom/kwad/components/core/innerEc/live/b/c/h$6;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/h;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WH:Lcom/kwad/components/core/innerEc/live/widget/d;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private su()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WR:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WN:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WN:I

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WQ:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sv()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method private sv()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WO:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WP:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WO:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WP:Ljava/lang/Runnable;

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WM:J

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WQ:Z

    .line 19
    .line 20
    return-void
.end method

.method private sw()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WR:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WN:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    iput-boolean v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WQ:Z

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WN:I

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WL:Lcom/kwad/components/core/innerEc/live/like/b;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/like/b;->aZ(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v1
.end method

.method private sx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WP:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WO:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WR:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WN:I

    .line 14
    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sw()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WQ:Z

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method

.method private sy()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WJ:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-long v2, v2

    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method


# virtual methods
.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WG:Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WH:Lcom/kwad/components/core/innerEc/live/widget/d;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;->a(Landroid/view/GestureDetector;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/kwad/components/core/innerEc/live/like/b;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/kwad/components/core/innerEc/live/like/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WL:Lcom/kwad/components/core/innerEc/live/like/b;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WU:Lcom/kwad/components/core/innerEc/live/like/b$a;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/like/b;->a(Lcom/kwad/components/core/innerEc/live/like/b$a;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sp()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sy()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {p0, v1, p1}, Lcom/kwad/components/core/innerEc/live/b/c/h;->e(FF)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_slide_play_like_image:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_container:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WG:Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sr()V

    .line 25
    .line 26
    .line 27
    const/16 v0, -0xf

    .line 28
    .line 29
    :goto_0
    const/16 v1, 0xf

    .line 30
    .line 31
    if-ge v0, v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WE:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WG:Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->st()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->ss()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WS:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sx()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WJ:J

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WK:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {p0, v0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/h;->d(FF)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {p0, v0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/h;->e(FF)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WK:Z

    .line 22
    .line 23
    return p1
.end method

.method public final onUnbind()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getRootView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WF:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WG:Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WH:Lcom/kwad/components/core/innerEc/live/widget/d;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/widget/PhotoSpeedControlFrameLayout;->b(Landroid/view/GestureDetector;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UB:Ljava/util/List;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WT:Lcom/kwad/components/core/k/a;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WL:Lcom/kwad/components/core/innerEc/live/like/b;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h;->WU:Lcom/kwad/components/core/innerEc/live/like/b$a;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/innerEc/live/like/b;->b(Lcom/kwad/components/core/innerEc/live/like/b$a;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sx()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->sq()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
