.class public Lcom/sigmob/sdk/videoplayer/l;
.super Landroid/view/TextureView;


# static fields
.field protected static final a:Ljava/lang/String; = "ResizeTextureView"


# instance fields
.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sigmob/sdk/videoplayer/l;->b:I

    iget v2, p0, Lcom/sigmob/sdk/videoplayer/l;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    sget v7, Lcom/sigmob/sdk/videoplayer/f;->u:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    move v11, v4

    move v4, v3

    move v3, v11

    :cond_1
    mul-int v2, v1, v3

    div-int/2addr v2, v4

    :cond_2
    if-eq v0, v6, :cond_3

    if-ne v0, v5, :cond_4

    :cond_3
    move v11, p2

    move p2, p1

    move p1, v11

    :cond_4
    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v7

    invoke-static {v2, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v8

    if-lez v1, :cond_d

    if-lez v2, :cond_d

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    const/high16 p1, 0x40000000    # 2.0f

    if-ne v7, p1, :cond_8

    if-ne v9, p1, :cond_8

    mul-int p1, v1, v10

    mul-int p2, v8, v2

    if-ge p1, p2, :cond_5

    :goto_0
    div-int v7, p1, v2

    :goto_1
    move v8, v10

    goto :goto_5

    :cond_5
    if-le p1, p2, :cond_7

    div-int p1, p2, v1

    :cond_6
    :goto_2
    move v7, v8

    move v8, p1

    goto :goto_5

    :cond_7
    move v7, v8

    goto :goto_1

    :cond_8
    const/high16 p2, -0x80000000

    if-ne v7, p1, :cond_9

    mul-int p1, v8, v2

    div-int/2addr p1, v1

    if-ne v9, p2, :cond_6

    if-le p1, v10, :cond_6

    mul-int p1, v10, v1

    goto :goto_0

    :cond_9
    if-ne v9, p1, :cond_b

    mul-int p1, v10, v1

    div-int/2addr p1, v2

    if-ne v7, p2, :cond_a

    if-le p1, v8, :cond_a

    :goto_3
    mul-int p1, v8, v2

    div-int/2addr p1, v1

    goto :goto_2

    :cond_a
    move v7, p1

    goto :goto_1

    :cond_b
    if-ne v9, p2, :cond_c

    if-le v2, v10, :cond_c

    mul-int p1, v10, v1

    div-int/2addr p1, v2

    goto :goto_4

    :cond_c
    move p1, v1

    move v10, v2

    :goto_4
    if-ne v7, p2, :cond_a

    if-le p1, v8, :cond_a

    goto :goto_3

    :cond_d
    :goto_5
    if-eqz v4, :cond_12

    if-eqz v3, :cond_12

    if-eqz v1, :cond_12

    if-eqz v2, :cond_12

    sget p1, Lcom/sigmob/sdk/videoplayer/f;->u:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_e

    goto :goto_6

    :cond_e
    const/4 p2, 0x2

    if-ne p1, p2, :cond_12

    if-eq v0, v6, :cond_f

    if-ne v0, v5, :cond_10

    :cond_f
    move v11, v4

    move v4, v3

    move v3, v11

    :cond_10
    int-to-double p1, v2

    int-to-double v0, v1

    div-double/2addr p1, v0

    int-to-double v0, v3

    int-to-double v5, v4

    div-double v9, v0, v5

    cmpl-double v2, p1, v9

    if-lez v2, :cond_11

    int-to-double p1, v7

    div-double/2addr v5, p1

    int-to-double p1, v8

    mul-double/2addr v5, p1

    double-to-int v2, v5

    move v1, v4

    goto :goto_6

    :cond_11
    cmpg-double p1, p1, v9

    if-gez p1, :cond_12

    int-to-double p1, v8

    div-double/2addr v0, p1

    int-to-double p1, v7

    mul-double/2addr v0, p1

    double-to-int v1, v0

    move v2, v3

    goto :goto_6

    :cond_12
    move v1, v7

    move v2, v8

    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
