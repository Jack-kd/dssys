.class abstract Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlayTop:I

.field final mTempRect1:Landroid/graphics/Rect;

.field final mTempRect2:Landroid/graphics/Rect;

.field private mVerticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method public abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 12
    .line 13
    int-to-float v2, v0

    .line 14
    mul-float/2addr p1, v2

    .line 15
    float-to-int p1, p1

    .line 16
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public final getOverlayTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 2
    .line 3
    return v0
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final getVerticalLayoutGap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 2
    .line 3
    return v0
.end method

.method public layoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 24
    .line 25
    add-int/2addr v2, v3

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    .line 32
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    sub-int/2addr v4, v6

    .line 42
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    .line 44
    sub-int/2addr v4, v6

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    add-int/2addr v6, v7

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    sub-int/2addr v6, v7

    .line 59
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 60
    .line 61
    sub-int/2addr v6, v7

    .line 62
    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_0

    .line 82
    .line 83
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    add-int/2addr p1, v3

    .line 90
    iput p1, v5, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    iget p1, v5, Landroid/graphics/Rect;->right:I

    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    sub-int/2addr p1, v2

    .line 99
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    :cond_0
    iget-object v6, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 102
    .line 103
    iget p1, v1, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;->gravity:I

    .line 104
    .line 105
    invoke-static {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->resolveGravity(I)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    move v7, p3

    .line 118
    invoke-static/range {v2 .. v7}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget p3, v6, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 128
    .line 129
    sub-int/2addr v1, p1

    .line 130
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 131
    .line 132
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 133
    .line 134
    sub-int/2addr v3, p1

    .line 135
    invoke-virtual {p2, p3, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 136
    .line 137
    .line 138
    iget p1, v6, Landroid/graphics/Rect;->top:I

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    sub-int/2addr p1, p2

    .line 145
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 146
    .line 147
    return-void

    .line 148
    :cond_1
    move v7, p3

    .line 149
    invoke-super {p0, p1, p2, v7}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->layoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)V

    .line 150
    .line 151
    .line 152
    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 154
    .line 155
    return-void
.end method

.method public onMeasureChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v2, -0x2

    .line 11
    if-ne v0, v2, :cond_4

    .line 12
    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2, v4}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 46
    .line 47
    .line 48
    return v4

    .line 49
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sub-int/2addr v3, v5

    .line 64
    invoke-virtual {p0, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/2addr v3, v2

    .line 69
    if-ne v0, v1, :cond_3

    .line 70
    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/high16 v0, -0x80000000

    .line 75
    .line 76
    :goto_0
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    move-object v5, p1

    .line 81
    move-object v6, p2

    .line 82
    move v7, p3

    .line 83
    move v8, p4

    .line 84
    move/from16 v10, p6

    .line 85
    .line 86
    invoke-virtual/range {v5 .. v10}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 87
    .line 88
    .line 89
    return v4

    .line 90
    :cond_4
    const/4 p1, 0x0

    .line 91
    return p1
.end method

.method public final setOverlayTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderScrollingViewBehavior;->mOverlayTop:I

    .line 2
    .line 3
    return-void
.end method
