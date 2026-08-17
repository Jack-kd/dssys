.class public Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;
.super Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;,
        Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior<",
        "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public static synthetic access$000(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetDelta:I

    .line 2
    .line 3
    return p0
.end method

.method private animateOffsetTo(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getTopBottomOffsetForScrollingSibling()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p3

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    const/4 v1, 0x0

    .line 15
    cmpl-float v1, p4, v1

    .line 16
    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr v0, p4

    .line 21
    const/high16 p4, 0x447a0000    # 1000.0f

    .line 22
    .line 23
    mul-float/2addr v0, p4

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    mul-int/lit8 p4, p4, 0x3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    int-to-float p4, v0

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    div-float/2addr p4, v0

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    add-float/2addr p4, v0

    .line 41
    const/high16 v0, 0x43160000    # 150.0f

    .line 42
    .line 43
    mul-float/2addr p4, v0

    .line 44
    float-to-int p4, p4

    .line 45
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->animateOffsetWithDuration(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private animateOffsetWithDuration(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getTopBottomOffsetForScrollingSibling()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p3, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    sget-object v2, Lcom/kwad/sdk/lib/ad/desigin/KSAnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    new-instance v2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$1;

    .line 42
    .line 43
    invoke-direct {v2, p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$1;-><init>(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    const/16 p2, 0x258

    .line 56
    .line 57
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    int-to-long v1, p2

    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    filled-new-array {v0, p3}, [I

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private static checkFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getAppBarChildOnOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)Landroid/view/View;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-lt p1, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-gt p1, v3, :cond_0

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method private getChildIndexOnOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    neg-int v4, p2

    .line 17
    if-gt v3, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lt v2, v4, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, -0x1

    .line 30
    return p1
.end method

.method private interpolateOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->RG()Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-lt v0, v7, :cond_2

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-gt v0, v7, :cond_2

    .line 38
    .line 39
    if-eqz v6, :cond_3

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->RF()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    and-int/lit8 v3, v1, 0x1

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 54
    .line 55
    add-int/2addr v2, v3

    .line 56
    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 57
    .line 58
    add-int/2addr v2, v3

    .line 59
    and-int/lit8 v1, v1, 0x2

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sub-int/2addr v2, v1

    .line 68
    :cond_0
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    sub-int/2addr v2, p1

    .line 79
    :cond_1
    if-lez v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    sub-int/2addr v0, p1

    .line 86
    int-to-float p1, v2

    .line 87
    int-to-float v0, v0

    .line 88
    div-float/2addr v0, p1

    .line 89
    invoke-interface {v6, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    mul-float/2addr p1, v0

    .line 94
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    add-int/2addr v0, p1

    .line 107
    mul-int/2addr p2, v0

    .line 108
    return p2

    .line 109
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    return p2
.end method

.method private shouldJumpElevationState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    if-ge v1, p2, :cond_2

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;->getBehavior()Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    instance-of v3, v2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$d;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    check-cast v2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$d;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->getOverlayTop()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_0
    return v0

    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return v0
.end method

.method private snapToChildIfNeeded(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getTopBottomOffsetForScrollingSibling()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p2, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getChildIndexOnOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ltz v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->RF()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    and-int/lit8 v4, v3, 0x11

    .line 26
    .line 27
    const/16 v5, 0x11

    .line 28
    .line 29
    if-ne v4, v5, :cond_5

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    neg-int v4, v4

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    neg-int v5, v5

    .line 41
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    add-int/lit8 v6, v6, -0x1

    .line 46
    .line 47
    if-ne v1, v6, :cond_0

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v5, v1

    .line 54
    :cond_0
    const/4 v1, 0x2

    .line 55
    invoke-static {v3, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->checkFlag(II)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/2addr v5, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v6, 0x5

    .line 68
    invoke-static {v3, v6}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->checkFlag(II)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    add-int/2addr v2, v5

    .line 79
    if-ge v0, v2, :cond_2

    .line 80
    .line 81
    move v4, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move v5, v2

    .line 84
    :cond_3
    :goto_0
    add-int v2, v5, v4

    .line 85
    .line 86
    div-int/2addr v2, v1

    .line 87
    if-ge v0, v2, :cond_4

    .line 88
    .line 89
    move v4, v5

    .line 90
    :cond_4
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    neg-int v0, v0

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-static {v4, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->animateOffsetTo(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IF)V

    .line 102
    .line 103
    .line 104
    :cond_5
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIZ)V
    .locals 5

    .line 1
    invoke-static {p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getAppBarChildOnOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->RF()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    and-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v4, 0x1

    .line 27
    if-lez p4, :cond_0

    .line 28
    .line 29
    and-int/lit8 p4, v1, 0xc

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    neg-int p3, p3

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    sub-int/2addr p4, v2

    .line 39
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sub-int/2addr p4, v0

    .line 44
    if-lt p3, p4, :cond_1

    .line 45
    .line 46
    :goto_0
    move v3, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    and-int/lit8 p4, v1, 0x2

    .line 49
    .line 50
    if-eqz p4, :cond_1

    .line 51
    .line 52
    neg-int p3, p3

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    sub-int/2addr p4, v2

    .line 58
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sub-int/2addr p4, v0

    .line 63
    if-lt p3, p4, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    invoke-virtual {p2, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->setCollapsedState(Z)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-nez p5, :cond_2

    .line 71
    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->shouldJumpElevationState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->canDragView(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z

    move-result p1

    return p1
.end method

.method public canDragView(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOnDragCallback:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$a;->RE()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getMaxDragOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I

    move-result p1

    return p1
.end method

.method public getMaxDragOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getScrollRangeForDragFling(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I

    move-result p1

    return p1
.end method

.method public getScrollRangeForDragFling(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetDelta:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public bridge synthetic onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    return-void
.end method

.method public onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->snapToChildIfNeeded(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onLayoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onLayoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)Z
    .locals 7

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->onLayoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getPendingAction()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    and-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 7
    iget-boolean v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_0

    .line 8
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v0, v3

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 10
    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_3

    .line 12
    invoke-direct {p0, p1, p2, v0, v5}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->animateOffsetTo(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IF)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I

    goto :goto_3

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 14
    invoke-direct {p0, p1, p2, v2, v5}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->animateOffsetTo(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IF)V

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I

    .line 16
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->resetPendingAction()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayout:I

    .line 18
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    .line 20
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->updateAppBarLayoutDrawableState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIZ)V

    .line 21
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->dispatchOffsetUpdates(I)V

    return p3
.end method

.method public bridge synthetic onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z
    .locals 7

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;

    .line 3
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    .line 4
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 6
    invoke-super/range {v0 .. v6}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;->onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onNestedPreScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;II[II)V
    .locals 6

    if-eqz p5, :cond_1

    if-gez p5, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    .line 3
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getDownNestedPreScrollRange()I

    move-result p4

    add-int/2addr p4, p3

    :goto_0
    move v4, p3

    move v5, p4

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getUpNestedPreScrollRange()I

    move-result p3

    neg-int p3, p3

    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    if-eq v4, v5, :cond_1

    const/4 p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->scroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p3

    :cond_1
    return-void
.end method

.method public bridge synthetic onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;IIIII)V
    .locals 6

    if-gez p7, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getDownNestedScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->scroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    :cond_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onRestoreInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/os/Parcelable;)V
    .locals 1

    .line 2
    instance-of v0, p3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    .line 4
    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 5
    iget p1, p3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;->bhL:I

    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayout:I

    .line 6
    iget p1, p3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;->bhM:F

    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayoutPerc:F

    .line 7
    iget-boolean p1, p3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;->bhN:Z

    iput-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onSaveInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Landroid/os/Parcelable;
    .locals 7

    .line 2
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;->onSaveInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 8
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;-><init>(Landroid/os/Parcelable;)V

    .line 9
    iput v3, v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;->bhL:I

    .line 10
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;->bhN:Z

    int-to-float p1, v5

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$b;->bhM:F

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->hasScrollableChildren()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;I)V
    .locals 0

    if-nez p4, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->snapToChildIfNeeded(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDragCallback(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$a;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOnDragCallback:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a$a;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_4

    if-lt v0, p4, :cond_4

    if-gt v0, p5, :cond_4

    .line 3
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-direct {p0, p2, v5}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->interpolateOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v5

    .line 6
    :goto_0
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int p5, v0, v5

    sub-int p3, v5, p3

    .line 7
    iput p3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetDelta:I

    if-nez p4, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v5, v0, :cond_2

    const/4 p3, -0x1

    :goto_1
    move v6, p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    goto :goto_1

    :goto_2
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->updateAppBarLayoutDrawableState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIZ)V

    return p5

    :cond_3
    move-object v2, p0

    return v1

    :cond_4
    move-object v2, p0

    .line 12
    iput v1, v2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->mOffsetDelta:I

    return v1
.end method
