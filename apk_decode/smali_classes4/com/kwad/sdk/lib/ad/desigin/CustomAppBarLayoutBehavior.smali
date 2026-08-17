.class public Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarCustomAttrListener;
.implements Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomAppBarFlingConsumer:Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

.field private mExtraFixedSize:I

.field private final mFlingConsumeViewId:I

.field private mHeaderExBehavior:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx<",
            "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;",
            "Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetDelta:I

.field private mScrollableSize:I

.field private mScrollableSizeChangeable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mScrollableSizeChangeable:Z

    .line 10
    sget v0, Lcom/kwad/sdk/R$attr;->ksad_headerFlingNested:I

    .line 11
    sget v1, Lcom/kwad/sdk/R$attr;->ksad_extraFixedSize:I

    .line 12
    sget v2, Lcom/kwad/sdk/R$attr;->ksad_flingConsumeViewId:I

    .line 13
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    .line 14
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 15
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 16
    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 17
    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mExtraFixedSize:I

    .line 18
    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 19
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1

    .line 20
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mFlingConsumeViewId:I

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    invoke-direct {v0, p1, p2, p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mHeaderExBehavior:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 22
    iget p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mExtraFixedSize:I

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->setExtraFixedSize(I)V

    :cond_0
    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should set head fling offset consume view , with \'flingConsumeViewId\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mScrollableSizeChangeable:Z

    .line 3
    iget v0, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;->mExtraFixedSize:I

    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mExtraFixedSize:I

    .line 4
    iget v0, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;->mFlingConsumeViewId:I

    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mFlingConsumeViewId:I

    .line 5
    iget-boolean p1, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;->mEnableNestedFling:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;-><init>(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;)V

    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mHeaderExBehavior:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 7
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mExtraFixedSize:I

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->setExtraFixedSize(I)V

    :cond_0
    return-void
.end method

.method private cancelTargetIfNeeded(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;II[II)V
    .locals 8

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p7, p1, :cond_0

    .line 3
    .line 4
    aget p1, p6, p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-gez p5, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v4, 0x3

    .line 23
    const/4 v5, 0x0

    .line 24
    move-wide v2, v0

    .line 25
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p3, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
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


# virtual methods
.method public consumeAppBarFling(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mCustomAppBarFlingConsumer:Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;->consumeAppBarFling(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getExtraFixedSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mExtraFixedSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getScrollRange(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mExtraFixedSize:I

    .line 6
    .line 7
    sub-int/2addr p1, v0

    .line 8
    return p1
.end method

.method public getScrollableSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mScrollableSize:I

    .line 2
    .line 3
    return v0
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
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mOffsetDelta:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public interpolateOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I
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

.method public isOffsetAnimatorRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAppBarTouchDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mCustomAppBarFlingConsumer:Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;->onAppBarTouchDown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public bridge synthetic onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mHeaderExBehavior:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z

    move-result p2

    move-object p3, p1

    move-object p1, p0

    .line 3
    iget-object p4, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mCustomAppBarFlingConsumer:Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    if-nez p4, :cond_1

    .line 4
    iget p4, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mFlingConsumeViewId:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 5
    instance-of p4, p3, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    if-eqz p4, :cond_0

    .line 6
    check-cast p3, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    iput-object p3, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mCustomAppBarFlingConsumer:Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    return p2

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget p3, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mFlingConsumeViewId:I

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 9
    const-string p4, "find fling consume view with id %d is not instanceof HeaderFlingConsumer"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return p2
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->onNestedPreScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;II[II)V
    .locals 1

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->cancelTargetIfNeeded(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;II[II)V

    move-object p3, p2

    move p4, p5

    move-object p7, p6

    move-object p2, p1

    move-object p1, p0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getScrollRange(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I

    move-result p5

    neg-int p5, p5

    .line 4
    invoke-virtual {p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getDownNestedPreScrollRange()I

    move-result p6

    add-int/2addr p6, p5

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getScrollRange(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I

    move-result p5

    neg-int p5, p5

    const/4 p6, 0x0

    :goto_0
    if-eq p5, p6, :cond_1

    const/4 v0, 0x1

    .line 6
    invoke-virtual/range {p1 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->scroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    move-result p2

    aput p2, p7, v0

    :cond_1
    return-void
.end method

.method public bridge synthetic onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;IIIII)V
    .locals 6

    if-gez p7, :cond_1

    const/4 p3, 0x1

    if-ne p8, p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p3

    sub-int v3, p3, p7

    .line 3
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getDownNestedScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-super/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I

    return-void

    :cond_0
    move-object p3, p2

    move-object p2, p1

    .line 5
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p1

    sub-int p4, p1, p7

    .line 6
    invoke-virtual {p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p5, p1

    const/4 p6, 0x0

    move-object p1, p0

    move p7, p8

    .line 7
    invoke-virtual/range {p1 .. p7}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)I

    :cond_1
    return-void
.end method

.method public bridge synthetic onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mHeaderExBehavior:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setExtraFixedSize(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mExtraFixedSize:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mHeaderExBehavior:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->setExtraFixedSize(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 2
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I
    .locals 6

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)I
    .locals 7

    .line 5
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p6

    .line 6
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mScrollableSizeChangeable:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getScrollableSize()I

    move-result v0

    sub-int v1, p3, p6

    if-gtz v1, :cond_1

    if-gtz v0, :cond_0

    neg-int p1, v1

    return p1

    :cond_0
    add-int v1, v0, p3

    if-gtz v1, :cond_1

    neg-int p1, v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    if-eqz p4, :cond_6

    if-lt p6, p4, :cond_6

    if-gt p6, p5, :cond_6

    .line 9
    invoke-static {p3, p4, p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v4

    if-eq p6, v4, :cond_5

    .line 10
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 11
    invoke-virtual {p0, p2, v4}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->interpolateOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I

    move-result p3

    goto :goto_0

    :cond_2
    move p3, v4

    .line 12
    :goto_0
    invoke-virtual {p0, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int p5, p6, v4

    sub-int p3, v4, p3

    .line 13
    iput p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mOffsetDelta:I

    if-nez p4, :cond_3

    .line 14
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 15
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v4, p6, :cond_4

    const/4 p3, -0x1

    :goto_1
    move v5, p3

    goto :goto_2

    :cond_4
    const/4 p3, 0x1

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->updateAppBarLayoutDrawableState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIZ)V

    return p5

    :cond_5
    move-object v1, p0

    return v0

    :cond_6
    move-object v1, p0

    .line 18
    iput v0, v1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mOffsetDelta:I

    return v0
.end method

.method public setScrollableSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mScrollableSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setScrollableSizeChangeable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mScrollableSizeChangeable:Z

    .line 2
    .line 3
    return-void
.end method

.method public stopFling()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->mHeaderExBehavior:Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->stopFling()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateAppBarLayoutDrawableState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIZ)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getAppBarChildOnOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_3

    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->RF()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    and-int/lit8 v1, v0, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    if-lez p4, :cond_0

    .line 25
    .line 26
    and-int/lit8 p4, v0, 0xc

    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    and-int/lit8 p4, v0, 0x2

    .line 38
    .line 39
    if-eqz p4, :cond_1

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    if-nez p5, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->shouldJumpElevationState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method
