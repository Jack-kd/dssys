.class public Lcom/kwad/components/core/innerEc/live/widget/d;
.super Landroid/view/GestureDetector;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/utils/cc$a;


# static fields
.field private static final Ym:I

.field private static final Yn:I

.field public static final Yo:I


# instance fields
.field private YA:Z

.field private YB:F

.field private YC:F

.field private YD:F

.field private YE:F

.field private YF:Z

.field private YG:J

.field private Yh:I

.field private Yi:I

.field private Yj:I

.field private Yk:I

.field private Yl:I

.field private final Yp:Landroid/view/GestureDetector$OnGestureListener;

.field private Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private Yr:Z

.field private Ys:Z

.field private Yt:Z

.field private Yu:Z

.field private Yv:Z

.field private Yw:Z

.field private Yx:Z

.field private Yy:Landroid/view/MotionEvent;

.field private Yz:Landroid/view/MotionEvent;

.field private final jk:Landroid/os/Handler;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ym:I

    .line 6
    .line 7
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yn:I

    .line 12
    .line 13
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yo:I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/d;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 3
    sget p3, Lcom/kwad/components/core/innerEc/live/widget/d;->Yo:I

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YG:J

    .line 4
    new-instance p3, Lcom/kwad/sdk/utils/cc;

    invoke-direct {p3, p0}, Lcom/kwad/sdk/utils/cc;-><init>(Lcom/kwad/sdk/utils/cc$a;)V

    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 6
    instance-of p3, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_0

    .line 7
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcom/kwad/components/core/innerEc/live/widget/d;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/d;->init(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yw:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3
    iget-wide v4, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YG:J

    cmp-long p2, v2, v4

    if-gtz p2, :cond_3

    const-wide/16 v4, 0xa

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr v0, p3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yj:I

    :goto_0
    mul-int/2addr p2, p2

    mul-int/2addr v0, v0

    add-int/2addr p2, v0

    if-ge p2, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method private cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YA:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yr:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yv:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yw:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ys:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yt:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yu:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yx:Z

    .line 43
    .line 44
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/utils/az;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YF:Z

    .line 8
    .line 9
    const/16 v0, 0x12c

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yk:I

    .line 22
    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yl:I

    .line 28
    .line 29
    move v2, v0

    .line 30
    move v0, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yk:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yl:I

    .line 55
    .line 56
    move p1, v1

    .line 57
    :goto_0
    mul-int/2addr p1, p1

    .line 58
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yh:I

    .line 59
    .line 60
    mul-int/2addr v0, v0

    .line 61
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yi:I

    .line 62
    .line 63
    mul-int/2addr v2, v2

    .line 64
    iput v2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yj:I

    .line 65
    .line 66
    return-void
.end method

.method private sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YA:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yv:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yw:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ys:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yt:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yu:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yx:Z

    .line 33
    .line 34
    return-void
.end method

.method private sQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ys:Z

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yt:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final J(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YG:J

    .line 2
    .line 3
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 2

    .line 8
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p1, :cond_2

    .line 10
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yr:Z

    if-nez v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    invoke-interface {p1, v0}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    return-void

    .line 12
    :cond_1
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ys:Z

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/d;->sQ()V

    return-void

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    invoke-interface {p1, v0}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public isLongpressEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YF:Z

    .line 2
    .line 3
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 18
    .line 19
    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    move v4, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, v3

    .line 30
    :goto_0
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v5, -0x1

    .line 38
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    and-int/lit8 v6, v6, 0x8

    .line 43
    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    move v6, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move v6, v3

    .line 49
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v8, 0x0

    .line 54
    move v9, v3

    .line 55
    move v10, v8

    .line 56
    move v11, v10

    .line 57
    :goto_3
    if-ge v9, v7, :cond_5

    .line 58
    .line 59
    if-eq v5, v9, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    add-float/2addr v10, v12

    .line 66
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    .line 67
    .line 68
    .line 69
    move-result v12

    .line 70
    add-float/2addr v11, v12

    .line 71
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    if-eqz v4, :cond_6

    .line 75
    .line 76
    add-int/lit8 v4, v7, -0x1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_6
    move v4, v7

    .line 80
    :goto_4
    int-to-float v4, v4

    .line 81
    div-float/2addr v10, v4

    .line 82
    div-float/2addr v11, v4

    .line 83
    const/4 v4, 0x2

    .line 84
    const/4 v5, 0x3

    .line 85
    if-eqz v0, :cond_1d

    .line 86
    .line 87
    const/16 v9, 0x3e8

    .line 88
    .line 89
    if-eq v0, v2, :cond_14

    .line 90
    .line 91
    if-eq v0, v4, :cond_b

    .line 92
    .line 93
    if-eq v0, v5, :cond_a

    .line 94
    .line 95
    const/4 v2, 0x5

    .line 96
    if-eq v0, v2, :cond_9

    .line 97
    .line 98
    if-eq v0, v1, :cond_7

    .line 99
    .line 100
    goto/16 :goto_9

    .line 101
    .line 102
    :cond_7
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YB:F

    .line 103
    .line 104
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YD:F

    .line 105
    .line 106
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YC:F

    .line 107
    .line 108
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YE:F

    .line 109
    .line 110
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 111
    .line 112
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yl:I

    .line 113
    .line 114
    int-to-float v1, v1

    .line 115
    invoke-virtual {v0, v9, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 133
    .line 134
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    move v4, v3

    .line 139
    :goto_5
    if-ge v4, v7, :cond_13

    .line 140
    .line 141
    if-eq v4, v0, :cond_8

    .line 142
    .line 143
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 148
    .line 149
    invoke-virtual {v6, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    mul-float/2addr v6, v2

    .line 154
    iget-object v9, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 155
    .line 156
    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    mul-float/2addr v5, v1

    .line 161
    add-float/2addr v6, v5

    .line 162
    cmpg-float v5, v6, v8

    .line 163
    .line 164
    if-gez v5, :cond_8

    .line 165
    .line 166
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 169
    .line 170
    .line 171
    return v3

    .line 172
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_9
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YB:F

    .line 176
    .line 177
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YD:F

    .line 178
    .line 179
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YC:F

    .line 180
    .line 181
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YE:F

    .line 182
    .line 183
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/d;->sP()V

    .line 184
    .line 185
    .line 186
    return v3

    .line 187
    :cond_a
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/d;->cancel()V

    .line 188
    .line 189
    .line 190
    return v3

    .line 191
    :cond_b
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yt:Z

    .line 192
    .line 193
    if-nez v0, :cond_13

    .line 194
    .line 195
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yu:Z

    .line 196
    .line 197
    if-nez v0, :cond_13

    .line 198
    .line 199
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YB:F

    .line 200
    .line 201
    sub-float/2addr v0, v10

    .line 202
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YC:F

    .line 203
    .line 204
    sub-float/2addr v1, v11

    .line 205
    iget-boolean v7, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YA:Z

    .line 206
    .line 207
    if-eqz v7, :cond_c

    .line 208
    .line 209
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 210
    .line 211
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    return p1

    .line 216
    :cond_c
    iget-boolean v7, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yv:Z

    .line 217
    .line 218
    if-eqz v7, :cond_11

    .line 219
    .line 220
    iget v7, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YD:F

    .line 221
    .line 222
    sub-float v7, v10, v7

    .line 223
    .line 224
    float-to-int v7, v7

    .line 225
    iget v8, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YE:F

    .line 226
    .line 227
    sub-float v8, v11, v8

    .line 228
    .line 229
    float-to-int v8, v8

    .line 230
    mul-int/2addr v7, v7

    .line 231
    mul-int/2addr v8, v8

    .line 232
    add-int/2addr v7, v8

    .line 233
    if-eqz v6, :cond_d

    .line 234
    .line 235
    move v8, v3

    .line 236
    goto :goto_6

    .line 237
    :cond_d
    iget v8, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yh:I

    .line 238
    .line 239
    :goto_6
    if-le v7, v8, :cond_e

    .line 240
    .line 241
    iget-object v8, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 242
    .line 243
    iget-object v9, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 244
    .line 245
    invoke-interface {v8, v9, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YB:F

    .line 250
    .line 251
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YC:F

    .line 252
    .line 253
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yv:Z

    .line 254
    .line 255
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 256
    .line 257
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 266
    .line 267
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_e
    move p1, v3

    .line 272
    :goto_7
    if-eqz v6, :cond_f

    .line 273
    .line 274
    move v0, v3

    .line 275
    goto :goto_8

    .line 276
    :cond_f
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yi:I

    .line 277
    .line 278
    :goto_8
    if-le v7, v0, :cond_10

    .line 279
    .line 280
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yw:Z

    .line 281
    .line 282
    :cond_10
    return p1

    .line 283
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    const/high16 v4, 0x3f800000    # 1.0f

    .line 288
    .line 289
    cmpl-float v2, v2, v4

    .line 290
    .line 291
    if-gez v2, :cond_12

    .line 292
    .line 293
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    cmpl-float v2, v2, v4

    .line 298
    .line 299
    if-ltz v2, :cond_13

    .line 300
    .line 301
    :cond_12
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 302
    .line 303
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 304
    .line 305
    invoke-interface {v2, v3, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YB:F

    .line 310
    .line 311
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YC:F

    .line 312
    .line 313
    return p1

    .line 314
    :cond_13
    :goto_9
    return v3

    .line 315
    :cond_14
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yr:Z

    .line 316
    .line 317
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YA:Z

    .line 322
    .line 323
    if-eqz v1, :cond_15

    .line 324
    .line 325
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 326
    .line 327
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    goto :goto_b

    .line 332
    :cond_15
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yt:Z

    .line 333
    .line 334
    if-eqz v1, :cond_16

    .line 335
    .line 336
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 337
    .line 338
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    .line 340
    .line 341
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yt:Z

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_16
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yv:Z

    .line 345
    .line 346
    if-eqz v1, :cond_18

    .line 347
    .line 348
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yx:Z

    .line 349
    .line 350
    if-nez v1, :cond_18

    .line 351
    .line 352
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 353
    .line 354
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    iget-boolean v5, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ys:Z

    .line 359
    .line 360
    if-eqz v5, :cond_17

    .line 361
    .line 362
    iget-object v5, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 363
    .line 364
    if-eqz v5, :cond_17

    .line 365
    .line 366
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 367
    .line 368
    .line 369
    :cond_17
    move p1, v1

    .line 370
    goto :goto_b

    .line 371
    :cond_18
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yx:Z

    .line 372
    .line 373
    if-nez v1, :cond_1a

    .line 374
    .line 375
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 376
    .line 377
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    iget v6, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yl:I

    .line 382
    .line 383
    int-to-float v6, v6

    .line 384
    invoke-virtual {v1, v9, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    iget v7, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yk:I

    .line 400
    .line 401
    int-to-float v7, v7

    .line 402
    cmpl-float v5, v5, v7

    .line 403
    .line 404
    if-gtz v5, :cond_19

    .line 405
    .line 406
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    iget v7, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yk:I

    .line 411
    .line 412
    int-to-float v7, v7

    .line 413
    cmpl-float v5, v5, v7

    .line 414
    .line 415
    if-lez v5, :cond_1a

    .line 416
    .line 417
    :cond_19
    iget-object v5, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 418
    .line 419
    iget-object v7, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 420
    .line 421
    invoke-interface {v5, v7, p1, v1, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    goto :goto_b

    .line 426
    :cond_1a
    :goto_a
    move p1, v3

    .line 427
    :goto_b
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yz:Landroid/view/MotionEvent;

    .line 428
    .line 429
    if-eqz v1, :cond_1b

    .line 430
    .line 431
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 432
    .line 433
    .line 434
    :cond_1b
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yz:Landroid/view/MotionEvent;

    .line 435
    .line 436
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 437
    .line 438
    if-eqz v0, :cond_1c

    .line 439
    .line 440
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 441
    .line 442
    .line 443
    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 445
    .line 446
    :cond_1c
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YA:Z

    .line 447
    .line 448
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ys:Z

    .line 449
    .line 450
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yx:Z

    .line 451
    .line 452
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 453
    .line 454
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    .line 456
    .line 457
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 458
    .line 459
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    .line 461
    .line 462
    return p1

    .line 463
    :cond_1d
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 464
    .line 465
    if-eqz v0, :cond_20

    .line 466
    .line 467
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 468
    .line 469
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_1e

    .line 474
    .line 475
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 476
    .line 477
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 478
    .line 479
    .line 480
    :cond_1e
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 481
    .line 482
    if-eqz v1, :cond_1f

    .line 483
    .line 484
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yz:Landroid/view/MotionEvent;

    .line 485
    .line 486
    if-eqz v6, :cond_1f

    .line 487
    .line 488
    if-eqz v0, :cond_1f

    .line 489
    .line 490
    invoke-direct {p0, v1, v6, p1}, Lcom/kwad/components/core/innerEc/live/widget/d;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-eqz v0, :cond_1f

    .line 495
    .line 496
    iput-boolean v2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YA:Z

    .line 497
    .line 498
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 499
    .line 500
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 501
    .line 502
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 507
    .line 508
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    or-int/2addr v0, v1

    .line 513
    goto :goto_c

    .line 514
    :cond_1f
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 515
    .line 516
    iget-wide v6, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YG:J

    .line 517
    .line 518
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 519
    .line 520
    .line 521
    :cond_20
    move v0, v3

    .line 522
    :goto_c
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YB:F

    .line 523
    .line 524
    iput v10, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YD:F

    .line 525
    .line 526
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YC:F

    .line 527
    .line 528
    iput v11, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YE:F

    .line 529
    .line 530
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 531
    .line 532
    if-eqz v1, :cond_21

    .line 533
    .line 534
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 535
    .line 536
    .line 537
    :cond_21
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 542
    .line 543
    iput-boolean v2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yv:Z

    .line 544
    .line 545
    iput-boolean v2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yw:Z

    .line 546
    .line 547
    iput-boolean v2, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yr:Z

    .line 548
    .line 549
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yt:Z

    .line 550
    .line 551
    iput-boolean v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Ys:Z

    .line 552
    .line 553
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YF:Z

    .line 554
    .line 555
    if-eqz v1, :cond_22

    .line 556
    .line 557
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 558
    .line 559
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    .line 561
    .line 562
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 563
    .line 564
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 565
    .line 566
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    .line 567
    .line 568
    .line 569
    move-result-wide v5

    .line 570
    sget v3, Lcom/kwad/components/core/innerEc/live/widget/d;->Ym:I

    .line 571
    .line 572
    int-to-long v7, v3

    .line 573
    add-long/2addr v5, v7

    .line 574
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 575
    .line 576
    .line 577
    :cond_22
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->jk:Landroid/os/Handler;

    .line 578
    .line 579
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yy:Landroid/view/MotionEvent;

    .line 580
    .line 581
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    .line 582
    .line 583
    .line 584
    move-result-wide v3

    .line 585
    sget v5, Lcom/kwad/components/core/innerEc/live/widget/d;->Yn:I

    .line 586
    .line 587
    int-to-long v5, v5

    .line 588
    add-long/2addr v3, v5

    .line 589
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 590
    .line 591
    .line 592
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yp:Landroid/view/GestureDetector$OnGestureListener;

    .line 593
    .line 594
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 595
    .line 596
    .line 597
    move-result p1

    .line 598
    or-int/2addr p1, v0

    .line 599
    return p1
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->YF:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/d;->Yq:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 2
    .line 3
    return-void
.end method
