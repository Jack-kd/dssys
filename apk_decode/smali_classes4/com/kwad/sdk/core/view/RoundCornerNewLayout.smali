.class public Lcom/kwad/sdk/core/view/RoundCornerNewLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private baS:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private baT:I

.field private baU:I

.field private baV:I

.field private baW:I

.field private baX:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baX:Z

    return-void
.end method

.method private Pt()V
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baX:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baT:I

    .line 7
    .line 8
    iget v2, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baU:I

    .line 9
    .line 10
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v2, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baV:I

    .line 15
    .line 16
    iget v3, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baW:I

    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    :goto_0
    move v8, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    neg-int v4, v2

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_2
    move v10, v0

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v0, v2

    .line 46
    goto :goto_2

    .line 47
    :goto_3
    new-instance v5, Lcom/kwad/sdk/core/view/a;

    .line 48
    .line 49
    int-to-float v6, v3

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    invoke-direct/range {v5 .. v10}, Lcom/kwad/sdk/core/view/a;-><init>(FIIII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_2
    new-instance v6, Lcom/kwad/sdk/core/view/a;

    .line 66
    .line 67
    iget v0, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baT:I

    .line 68
    .line 69
    int-to-float v7, v0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iget v2, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baT:I

    .line 79
    .line 80
    add-int v11, v0, v2

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v9, 0x0

    .line 84
    invoke-direct/range {v6 .. v11}, Lcom/kwad/sdk/core/view/a;-><init>(FIIII)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v6}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 88
    .line 89
    .line 90
    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static a(IIIIIIII)Landroid/graphics/Path;
    .locals 3

    .line 1
    new-instance p0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    int-to-float p1, p4

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9
    .line 10
    .line 11
    const/high16 p1, 0x42b40000    # 90.0f

    .line 12
    .line 13
    if-ltz p4, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/graphics/RectF;

    .line 16
    .line 17
    mul-int/lit8 p4, p4, 0x2

    .line 18
    .line 19
    int-to-float p4, p4

    .line 20
    invoke-direct {v1, v0, v0, p4, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 21
    .line 22
    .line 23
    const/high16 p4, -0x3ccc0000    # -180.0f

    .line 24
    .line 25
    invoke-virtual {p0, v1, p4, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sub-int p4, p2, p5

    .line 29
    .line 30
    int-to-float p4, p4

    .line 31
    invoke-virtual {p0, p4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    .line 33
    .line 34
    if-ltz p5, :cond_1

    .line 35
    .line 36
    new-instance p4, Landroid/graphics/RectF;

    .line 37
    .line 38
    mul-int/lit8 p5, p5, 0x2

    .line 39
    .line 40
    sub-int v1, p2, p5

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    int-to-float v2, p2

    .line 44
    int-to-float p5, p5

    .line 45
    invoke-direct {p4, v1, v0, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 46
    .line 47
    .line 48
    const/high16 p5, -0x3d4c0000    # -90.0f

    .line 49
    .line 50
    invoke-virtual {p0, p4, p5, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 51
    .line 52
    .line 53
    :cond_1
    int-to-float p4, p2

    .line 54
    sub-int p5, p3, p6

    .line 55
    .line 56
    int-to-float p5, p5

    .line 57
    invoke-virtual {p0, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    .line 59
    .line 60
    if-eqz p6, :cond_2

    .line 61
    .line 62
    new-instance p5, Landroid/graphics/RectF;

    .line 63
    .line 64
    mul-int/lit8 p6, p6, 0x2

    .line 65
    .line 66
    sub-int/2addr p2, p6

    .line 67
    int-to-float p2, p2

    .line 68
    sub-int p6, p3, p6

    .line 69
    .line 70
    int-to-float p6, p6

    .line 71
    int-to-float v1, p3

    .line 72
    invoke-direct {p5, p2, p6, p4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p5, v0, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 76
    .line 77
    .line 78
    :cond_2
    int-to-float p2, p7

    .line 79
    int-to-float p4, p3

    .line 80
    invoke-virtual {p0, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    .line 82
    .line 83
    if-eqz p7, :cond_3

    .line 84
    .line 85
    new-instance p2, Landroid/graphics/RectF;

    .line 86
    .line 87
    mul-int/lit8 p7, p7, 0x2

    .line 88
    .line 89
    sub-int/2addr p3, p7

    .line 90
    int-to-float p3, p3

    .line 91
    int-to-float p5, p7

    .line 92
    invoke-direct {p2, v0, p3, p5, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2, p1, p1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->Pt()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baS:Landroid/graphics/Path;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->Pt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setCalculateRadius(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baX:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTopRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baT:I

    .line 2
    .line 3
    iput p1, p0, Lcom/kwad/sdk/core/view/RoundCornerNewLayout;->baU:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
