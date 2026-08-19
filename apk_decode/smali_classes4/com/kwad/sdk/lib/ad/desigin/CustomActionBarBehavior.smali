.class public abstract Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior<",
        "Landroid/widget/RelativeLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionBarBgColor:I

.field private mActionBarColorChangeRange:F

.field private mActionBarHeight:F

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActivity:Landroid/app/Activity;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarBgColor:I

    .line 21
    .line 22
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_title_bar_height:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    float-to-int v0, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    sget v1, Lcom/kwad/sdk/R$attr;->ksad_action_bar_height:I

    .line 32
    .line 33
    sget v2, Lcom/kwad/sdk/R$attr;->ksad_action_bar_bg_color:I

    .line 34
    .line 35
    sget v3, Lcom/kwad/sdk/R$attr;->ksad_color_change_range:I

    .line 36
    .line 37
    filled-new-array {v1, v2, v3}, [I

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v4, v1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    int-to-float p2, p2

    .line 57
    iput p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarHeight:F

    .line 58
    .line 59
    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarBgColor:I

    .line 64
    .line 65
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarBgColor:I

    .line 70
    .line 71
    invoke-static {v4, v3}, Ljava/util/Arrays;->binarySearch([II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    int-to-float p2, p2

    .line 80
    iput p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarColorChangeRange:F

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public getColorWithAlpha(FI)I
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/16 v0, 0xff

    .line 11
    .line 12
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    shl-int/lit8 p1, p1, 0x18

    .line 17
    .line 18
    const v0, 0xffffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p2, v0

    .line 22
    add-int/2addr p1, p2

    .line 23
    return p1
.end method

.method public abstract initView(Landroid/widget/RelativeLayout;)V
.end method

.method public bridge synthetic layoutDependsOn(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->layoutDependsOn(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z
    .locals 0

    .line 2
    instance-of p1, p3, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    return p1
.end method

.method public onActionBarHeightChanged(Landroid/widget/RelativeLayout;F)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->initView(Landroid/widget/RelativeLayout;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x3da3d70a    # 0.08f

    .line 5
    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, p2}, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->transRatio(FFF)F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarBgColor:I

    .line 14
    .line 15
    invoke-virtual {p0, p2, v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->getColorWithAlpha(FI)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->onDependentViewChanged(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/widget/RelativeLayout;Landroid/view/View;)Z
    .locals 1

    .line 2
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    .line 3
    iget p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarColorChangeRange:F

    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarHeight:F

    sub-float/2addr p3, v0

    div-float/2addr p1, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->onActionBarHeightChanged(Landroid/widget/RelativeLayout;F)V

    const/4 p1, 0x1

    return p1
.end method

.method public setActionBarColorChangeRange(I)V
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomActionBarBehavior;->mActionBarColorChangeRange:F

    .line 3
    .line 4
    return-void
.end method

.method public transRatio(FFF)F
    .locals 1

    cmpg-float v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_1
    sub-float/2addr p3, p1

    sub-float/2addr p2, p1

    div-float/2addr p3, p2

    return p3
.end method
