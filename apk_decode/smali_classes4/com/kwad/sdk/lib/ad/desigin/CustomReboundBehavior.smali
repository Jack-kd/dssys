.class public Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_REBOUND_MAX_OFFSET:I = 0x96

.field private static final REBOUND_ANIM_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mAppBartReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mCoordinatorReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomReboundOffsetCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/lib/ad/desigin/CustomReboundOffsetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableRebound:Z

.field private mHeaderTopBottomOffsetChangeListener:Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$a;

.field private mOffsetDelta:I

.field private mOffsetRebound:I

.field private mPreHeadHeight:I

.field private final mReboundMaxOffset:I

.field private mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

.field private mReboundView:Landroid/view/View;

.field private final mReboundViewId:I

.field private mReboundViewOriginHeight:I

.field private mReboundViewOriginWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 8
    sget v1, Lcom/kwad/sdk/R$attr;->ksad_reboundMaxOffset:I

    .line 9
    sget v2, Lcom/kwad/sdk/R$attr;->ksad_reboundViewId:I

    .line 10
    sget v3, Lcom/kwad/sdk/R$attr;->ksad_enableRebound:I

    .line 11
    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    .line 12
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 13
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    invoke-static {v4, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundMaxOffset:I

    .line 15
    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewId:I

    .line 16
    invoke-static {v4, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mEnableRebound:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "should set rebound view id , with \'reboundViewId\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;-><init>(Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;)V

    .line 2
    iget v0, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;->mReboundMaxOffset:I

    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundMaxOffset:I

    .line 3
    iget-boolean v0, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;->mEnableRebound:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mEnableRebound:Z

    .line 4
    iget p1, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarBehaviorParams;->mReboundViewId:I

    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewId:I

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should set rebound view id , with \'reboundViewId\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->updateReboundHeaderHeight(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private animateReboundRecover(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    const-wide/16 v1, 0xc8

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    new-instance v1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;-><init>(Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    iget p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetRebound:I

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    filled-new-array {p2, v0}, [I

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private checkShouldReboundRecover(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetRebound:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->animateReboundRecover(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private getHeaderExpandedHeight(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 19
    .line 20
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 21
    .line 22
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 23
    .line 24
    add-int/2addr v6, v5

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    add-int/2addr v6, v4

    .line 30
    add-int/2addr v3, v6

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method private static getScreenWidthPx(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    .line 20
    .line 21
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    .line 23
    return p0
.end method

.method private updateReboundByScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mPreHeadHeight:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p3, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return p4

    .line 14
    :cond_1
    :goto_0
    iget p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetRebound:I

    .line 15
    .line 16
    div-int/lit8 v0, p4, 0x3

    .line 17
    .line 18
    add-int/2addr p3, v0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->updateReboundOffsetByScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sub-int/2addr p1, p4

    .line 27
    return p1
.end method

.method private updateReboundHeaderHeight(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mPreHeadHeight:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_3

    .line 8
    .line 9
    if-ltz p3, :cond_3

    .line 10
    .line 11
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundMaxOffset:I

    .line 12
    .line 13
    if-gt p3, v0, :cond_3

    .line 14
    .line 15
    iput p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetRebound:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCustomReboundOffsetCallbacks:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mEnableRebound:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    int-to-float v2, p3

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    .line 28
    mul-float/2addr v2, v3

    .line 29
    int-to-float v0, v0

    .line 30
    div-float/2addr v2, v0

    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    :goto_0
    if-ltz v0, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCustomReboundOffsetCallbacks:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundOffsetCallback;

    .line 46
    .line 47
    iget v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetRebound:I

    .line 48
    .line 49
    invoke-interface {v1, p4, v2, v3}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundOffsetCallback;->rebound(IFI)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundView:Landroid/view/View;

    .line 56
    .line 57
    if-eqz p4, :cond_2

    .line 58
    .line 59
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewOriginHeight:I

    .line 64
    .line 65
    add-int/2addr v0, p3

    .line 66
    iput v0, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    .line 68
    iget p3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    .line 70
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewOriginWidth:I

    .line 71
    .line 72
    if-eq p3, v0, :cond_1

    .line 73
    .line 74
    iput v0, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    .line 76
    :cond_1
    iget-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundView:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method private updateReboundOffsetByScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->updateReboundHeaderHeight(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public addReboundOffsetCallback(Lcom/kwad/sdk/lib/ad/desigin/CustomReboundOffsetCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCustomReboundOffsetCallbacks:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCustomReboundOffsetCallbacks:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCustomReboundOffsetCallbacks:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public clearReboundOffsetCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCustomReboundOffsetCallbacks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getOffsetDelta()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetDelta:I

    .line 2
    .line 3
    return v0
.end method

.method public getOffsetRebound()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetRebound:I

    .line 2
    .line 3
    return v0
.end method

.method public getReboundMaxOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundMaxOffset:I

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
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetDelta:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public isEnableRebound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mEnableRebound:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    return-void
.end method

.method public onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->checkShouldReboundRecover(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z
    .locals 2

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)Z

    move-result p3

    move-object p4, p2

    move-object p2, p1

    move-object p1, p0

    .line 3
    iget p5, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mPreHeadHeight:I

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    if-eq p5, p6, :cond_0

    .line 4
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    if-eqz p5, :cond_0

    .line 5
    invoke-direct {p0, p4}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->getHeaderExpandedHeight(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I

    move-result p5

    iput p5, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mPreHeadHeight:I

    .line 6
    :cond_0
    iget-object p5, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundView:Landroid/view/View;

    if-nez p5, :cond_1

    .line 7
    iget p5, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewId:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    .line 8
    sget-object p6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewId:I

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "find rebound view with id %d is null"

    invoke-static {p6, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 10
    invoke-static {p5, p6}, Lcom/kwad/sdk/utils/az;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    iput p6, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewOriginHeight:I

    .line 12
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->getScreenWidthPx(Landroid/content/Context;)I

    move-result p6

    iput p6, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundViewOriginWidth:I

    .line 13
    iput-object p5, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundView:Landroid/view/View;

    .line 14
    :cond_1
    iget-object p5, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCoordinatorReference:Ljava/lang/ref/WeakReference;

    if-nez p5, :cond_2

    .line 15
    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCoordinatorReference:Ljava/lang/ref/WeakReference;

    .line 16
    :cond_2
    iget-object p2, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mAppBartReference:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_3

    .line 17
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mAppBartReference:Ljava/lang/ref/WeakReference;

    :cond_3
    return p3
.end method

.method public bridge synthetic onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;IIIII)V
    .locals 1

    if-gez p7, :cond_0

    const/4 v0, 0x1

    if-ne p8, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mHeaderTopBottomOffsetChangeListener:Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 4
    invoke-virtual {p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getDownNestedScrollRange()I

    .line 5
    :cond_0
    invoke-super/range {p0 .. p8}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->onNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    move-object p2, p0

    if-eqz p1, :cond_0

    .line 3
    iget-object p3, p2, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    iget-object p3, p2, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mReboundRecoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/View;I)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->checkShouldReboundRecover(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    return-void
.end method

.method public removeReboundOffsetCallback(Lcom/kwad/sdk/lib/ad/desigin/CustomReboundOffsetCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCustomReboundOffsetCallbacks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setEnableRebound(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mEnableRebound:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCoordinatorReference:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mAppBartReference:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mCoordinatorReference:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mAppBartReference:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->animateReboundRecover(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 2
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I

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
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;III)I

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
    invoke-virtual/range {v0 .. v6}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)I

    move-result p1

    return p1
.end method

.method public setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)I
    .locals 5

    .line 5
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mEnableRebound:Z

    if-nez v0, :cond_0

    .line 6
    invoke-super/range {p0 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIII)I

    move-result p1

    move-object p2, p0

    return p1

    :cond_0
    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p0

    .line 7
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    .line 8
    iget v2, p2, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetRebound:I

    if-lez v2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p2, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mPreHeadHeight:I

    if-lt v2, v3, :cond_1

    .line 9
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->updateReboundByScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)I

    move-result p1

    return p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->getScrollableSize()I

    move-result v2

    sub-int v3, p4, v1

    if-gtz v3, :cond_3

    if-gtz v2, :cond_2

    neg-int p1, v3

    return p1

    :cond_2
    add-int v3, v2, p4

    if-gtz v3, :cond_3

    neg-int p1, v2

    .line 11
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    return v3

    :cond_3
    const/4 v2, 0x0

    if-eqz p5, :cond_9

    if-lt v1, p5, :cond_9

    if-gt v1, p6, :cond_9

    .line 12
    invoke-static {p4, p5, p6}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p6

    if-eq v1, p6, :cond_7

    .line 13
    invoke-virtual {p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->hasChildWithInterpolator()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 14
    invoke-virtual {p0, p3, p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->interpolateOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)I

    move-result p4

    goto :goto_0

    :cond_4
    move p4, p6

    .line 15
    :goto_0
    invoke-virtual {p0, p4}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    move-result p5

    sub-int p4, p6, p4

    .line 16
    iput p4, p2, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetDelta:I

    sub-int v0, v1, p6

    if-nez p5, :cond_5

    .line 17
    invoke-virtual {p3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->hasChildWithInterpolator()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 18
    invoke-virtual {p1, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 19
    :cond_5
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge p6, v1, :cond_6

    const/4 p4, -0x1

    :goto_1
    move p5, p4

    move p4, p6

    goto :goto_2

    :cond_6
    const/4 p4, 0x1

    goto :goto_1

    :goto_2
    const/4 p6, 0x0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 20
    invoke-virtual/range {p1 .. p6}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarLayoutBehavior;->updateAppBarLayoutDrawableState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIZ)V

    return v0

    :cond_7
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    if-eq v1, p5, :cond_8

    .line 21
    invoke-direct {p0, p2, p3, v0, p4}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->updateReboundByScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)I

    move-result p2

    return p2

    :cond_8
    return v2

    :cond_9
    move-object p1, p2

    .line 22
    iput v2, p1, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mOffsetDelta:I

    return v2
.end method

.method public setHeaderTopBottomOffsetChangeListener(Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->mHeaderTopBottomOffsetChangeListener:Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$a;

    .line 2
    .line 3
    return-void
.end method
