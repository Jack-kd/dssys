.class public Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$a;
    value = Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$d;,
        Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;,
        Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;,
        Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$c;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mTotalScrollRange:I

    .line 4
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownPreScrollRange:I

    .line 5
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownScrollRange:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mPendingAction:I

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->setOrientation(I)V

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    invoke-static {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 10
    sget v2, Lcom/kwad/sdk/R$style;->ksad_Widget_Design_KSAppBarLayout:I

    invoke-static {p0, p2, v0, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 11
    sget-object v2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout:[I

    sget v3, Lcom/kwad/sdk/R$style;->ksad_Widget_Design_KSAppBarLayout:I

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout_ksad_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 13
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout_ksad_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout_ksad_expanded:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-direct {p0, p2, v0, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->setExpanded(ZZZ)V

    :cond_0
    const/16 p2, 0x1a

    if-lt v1, p2, :cond_2

    .line 15
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout_ksad_keyboardNavigationCluster:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout_ksad_keyboardNavigationCluster:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p0, p2}, Lcom/kwad/sdk/lib/ad/desigin/a;->a(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Z)V

    .line 17
    :cond_1
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout_ksad_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_AppBarLayout_ksad_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 19
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    new-instance p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$1;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$1;-><init>(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mTotalScrollRange:I

    .line 3
    .line 4
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownPreScrollRange:I

    .line 5
    .line 6
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownScrollRange:I

    .line 7
    .line 8
    return-void
.end method

.method private setCollapsibleState(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mCollapsible:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mCollapsible:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method private setExpanded(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 3
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mPendingAction:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateCollapsible()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->RH()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->setCollapsibleState(Z)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mListeners:Ljava/util/List;

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
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mListeners:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mListeners:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 2
    .line 3
    return p1
.end method

.method public dispatchOffsetUpdates(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->generateDefaultLayoutParams()Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->generateDefaultLayoutParams()Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;
    .locals 3

    .line 3
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;
    .locals 1

    .line 6
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDownNestedPreScrollRange()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownPreScrollRange:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ltz v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    iget v6, v4, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->bhO:I

    .line 32
    .line 33
    and-int/lit8 v7, v6, 0x5

    .line 34
    .line 35
    const/4 v8, 0x5

    .line 36
    if-ne v7, v8, :cond_3

    .line 37
    .line 38
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 39
    .line 40
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 41
    .line 42
    add-int/2addr v7, v4

    .line 43
    add-int/2addr v2, v7

    .line 44
    and-int/lit8 v4, v6, 0x8

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/2addr v2, v3

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    and-int/lit8 v4, v6, 0x2

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :goto_1
    sub-int/2addr v5, v3

    .line 63
    add-int/2addr v2, v5

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    if-gtz v2, :cond_4

    .line 71
    .line 72
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownPreScrollRange:I

    .line 80
    .line 81
    return v0
.end method

.method public getDownNestedScrollRange()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownScrollRange:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v2, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 31
    .line 32
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 33
    .line 34
    add-int/2addr v7, v8

    .line 35
    add-int/2addr v6, v7

    .line 36
    iget v5, v5, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->bhO:I

    .line 37
    .line 38
    and-int/lit8 v7, v5, 0x1

    .line 39
    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    add-int/2addr v3, v6

    .line 43
    and-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/2addr v0, v2

    .line 56
    sub-int/2addr v3, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mDownScrollRange:I

    .line 66
    .line 67
    return v0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :goto_0
    mul-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    div-int/lit8 v0, v0, 0x3

    .line 41
    .line 42
    return v0
.end method

.method public getPendingAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mPendingAction:I

    .line 2
    .line 3
    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getTopInset()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mTotalScrollRange:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v2, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget v7, v5, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->bhO:I

    .line 31
    .line 32
    and-int/lit8 v8, v7, 0x1

    .line 33
    .line 34
    if-eqz v8, :cond_2

    .line 35
    .line 36
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 37
    .line 38
    add-int/2addr v6, v8

    .line 39
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 40
    .line 41
    add-int/2addr v6, v5

    .line 42
    add-int/2addr v3, v6

    .line 43
    and-int/lit8 v5, v7, 0x2

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v3, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTopInset()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sub-int/2addr v3, v0

    .line 61
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mTotalScrollRange:I

    .line 66
    .line 67
    return v0
.end method

.method public getUpNestedPreScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasChildWithInterpolator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasScrollableChildren()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mTmpStatesArray:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mTmpStatesArray:[I

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mTmpStatesArray:[I

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    add-int/2addr p1, v1

    .line 14
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-boolean v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mCollapsible:Z

    .line 19
    .line 20
    sget v2, Lcom/kwad/sdk/R$attr;->ksad_state_collapsible:I

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    neg-int v2, v2

    .line 26
    :goto_0
    const/4 v3, 0x0

    .line 27
    aput v2, v0, v3

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mCollapsed:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    sget v1, Lcom/kwad/sdk/R$attr;->ksad_state_collapsed:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    sget v1, Lcom/kwad/sdk/R$attr;->ksad_state_collapsed:I

    .line 39
    .line 40
    neg-int v1, v1

    .line 41
    :goto_1
    const/4 v2, 0x1

    .line 42
    aput v1, v0, v2

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->invalidateScrollRanges()V

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    :goto_0
    if-ge p2, p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    check-cast p4, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;

    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$b;->RG()Landroid/view/animation/Interpolator;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->updateCollapsible()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->invalidateScrollRanges()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->invalidateScrollRanges()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public resetPendingAction()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mPendingAction:I

    .line 3
    .line 4
    return-void
.end method

.method public setCollapsedState(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mCollapsed:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->mCollapsed:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setTargetElevation(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
