.class public abstract Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Landroid/widget/OverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 3
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 6
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public canDragView(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final fling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

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
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mScroller:Landroid/widget/OverScroller;

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
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 25
    .line 26
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mScroller:Landroid/widget/OverScroller;

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
    iget-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    new-instance p3, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;

    .line 54
    .line 55
    invoke-direct {p3, p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;-><init>(Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iput-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    return p1
.end method

.method public getMaxDragOffset(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    neg-int p1, p1

    .line 6
    return p1
.end method

.method public getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    const/4 p1, -0x1

    .line 40
    if-eq v0, v2, :cond_3

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/4 p2, 0x3

    .line 45
    if-eq v0, p2, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget p2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 49
    .line 50
    if-eq p2, p1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eq p2, p1, :cond_5

    .line 57
    .line 58
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    float-to-int p1, p1

    .line 63
    iget p2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mLastMotionY:I

    .line 64
    .line 65
    sub-int p2, p1, p2

    .line 66
    .line 67
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    .line 72
    .line 73
    if-le p2, v0, :cond_5

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 76
    .line 77
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mLastMotionY:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    iput-boolean v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 81
    .line 82
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 83
    .line 84
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iput-boolean v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    float-to-int v0, v0

    .line 102
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    float-to-int v1, v1

    .line 107
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->canDragView(Landroid/view/View;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1, p2, v0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mLastMotionY:I

    .line 120
    .line 121
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->ensureVelocityTracker()V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 131
    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    iget-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 138
    .line 139
    return p1
.end method

.method public onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
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

    .line 1
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    .line 2
    .line 3
    if-gez v1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v1, :cond_7

    .line 26
    .line 27
    const/4 v8, -0x1

    .line 28
    if-eq v1, v6, :cond_5

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    if-eq v1, v2, :cond_6

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 39
    .line 40
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v8, :cond_2

    .line 45
    .line 46
    return v7

    .line 47
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    float-to-int v1, v1

    .line 52
    iget v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mLastMotionY:I

    .line 53
    .line 54
    sub-int/2addr v3, v1

    .line 55
    iget-boolean v4, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 56
    .line 57
    if-nez v4, :cond_4

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget v5, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mTouchSlop:I

    .line 64
    .line 65
    if-le v4, v5, :cond_4

    .line 66
    .line 67
    iput-boolean v6, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 68
    .line 69
    if-lez v3, :cond_3

    .line 70
    .line 71
    sub-int/2addr v3, v5

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    add-int/2addr v3, v5

    .line 74
    :cond_4
    :goto_0
    iget-boolean v4, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 75
    .line 76
    if-eqz v4, :cond_8

    .line 77
    .line 78
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mLastMotionY:I

    .line 79
    .line 80
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x0

    .line 85
    move-object v0, p0

    .line 86
    move-object v1, p1

    .line 87
    move-object v2, p2

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->scroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 100
    .line 101
    const/16 v3, 0x3e8

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 107
    .line 108
    iget v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    neg-int v3, v1

    .line 119
    const/4 v4, 0x0

    .line 120
    move-object v0, p0

    .line 121
    move-object v1, p1

    .line 122
    move-object v2, p2

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->fling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIF)Z

    .line 124
    .line 125
    .line 126
    :cond_6
    iput-boolean v7, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mIsBeingDragged:Z

    .line 127
    .line 128
    iput v8, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 129
    .line 130
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 131
    .line 132
    if-eqz v1, :cond_8

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 135
    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    float-to-int v1, v1

    .line 146
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    float-to-int v3, v3

    .line 151
    invoke-virtual {p1, p2, v1, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->canDragView(Landroid/view/View;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_a

    .line 162
    .line 163
    iput v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mLastMotionY:I

    .line 164
    .line 165
    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mActivePointerId:I

    .line 170
    .line 171
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->ensureVelocityTracker()V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 175
    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    .line 180
    .line 181
    :cond_9
    return v6

    .line 182
    :cond_a
    return v7
.end method

.method public final scroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int v4, v0, p3

    .line 6
    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_0

    if-lt p1, p4, :cond_0

    if-gt p1, p5, :cond_0

    .line 3
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
