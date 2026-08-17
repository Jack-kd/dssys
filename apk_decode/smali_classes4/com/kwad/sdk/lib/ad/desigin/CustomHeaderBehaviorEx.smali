.class public final Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;
.super Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;",
        "B:",
        "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;",
        ":",
        "Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;",
        ">",
        "Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final FLING_MAX_VELOCITY:I = 0x2710

.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtraFixedSize:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "TB;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 7
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 8
    iput-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 3
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    return-void
.end method

.method public static synthetic access$000(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Landroid/widget/OverScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mExtraFixedSize:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private fling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIF)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 25
    .line 26
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    move v9, p3

    .line 41
    move v10, p4

    .line 42
    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;-><init>(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 65
    .line 66
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    return p1
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const/4 p1, -0x1

    if-eq v4, v2, :cond_3

    if-eq v4, v1, :cond_2

    const/4 p2, 0x3

    if-eq v4, p2, :cond_3

    goto :goto_0

    .line 9
    :cond_2
    iget p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    if-eq p2, p1, :cond_5

    .line 10
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 11
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 12
    iget p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 13
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-le p2, v0, :cond_5

    .line 14
    iput-boolean v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 15
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    goto :goto_0

    .line 16
    :cond_3
    iput-boolean v5, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 17
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 18
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 21
    :cond_4
    iput-boolean v5, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 22
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->stopFling()V

    .line 23
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    invoke-virtual {v1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->canDragView(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, p2, v0, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iput v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    .line 25
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 26
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->ensureVelocityTracker()V

    .line 27
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    invoke-interface {p1}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;->onAppBarTouchDown()V

    .line 28
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 30
    :cond_6
    iget-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    return p1
.end method

.method public final bridge synthetic onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-gez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    const/4 v8, -0x1

    if-eq v4, v7, :cond_5

    const/4 v1, 0x2

    if-eq v4, v1, :cond_1

    const/4 v1, 0x3

    if-eq v4, v1, :cond_8

    goto/16 :goto_4

    .line 7
    :cond_1
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v8, :cond_2

    return v6

    .line 8
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 9
    iget v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    sub-int/2addr v3, v1

    .line 10
    iget-boolean v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-nez v4, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-le v4, v5, :cond_3

    .line 11
    iput-boolean v7, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-lez v3, :cond_4

    sub-int/2addr v3, v5

    :cond_3
    :goto_0
    move v4, v3

    goto :goto_1

    :cond_4
    add-int/2addr v3, v5

    goto :goto_0

    .line 12
    :goto_1
    iget-boolean v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-eqz v3, :cond_a

    .line 13
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    .line 14
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    invoke-virtual {v1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getMaxDragOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->scroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    goto :goto_4

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 17
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 18
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    const/4 v1, 0x0

    cmpg-float v1, v5, v1

    if-gez v1, :cond_6

    const/16 v2, -0x2710

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v6

    :goto_2
    if-gez v1, :cond_7

    move v4, v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    move v4, v1

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    .line 20
    :goto_3
    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->fling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIF)Z

    .line 21
    :cond_8
    iput-boolean v6, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 22
    iput v8, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 23
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_a

    .line 24
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    .line 26
    :cond_9
    invoke-virtual {p1, p2, v1, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    invoke-virtual {v1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->canDragView(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 27
    iput v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    .line 28
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 29
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->ensureVelocityTracker()V

    .line 30
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    .line 31
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    return v7

    :cond_c
    return v6
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setExtraFixedSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mExtraFixedSize:I

    .line 2
    .line 3
    return-void
.end method

.method public final stopFling()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
