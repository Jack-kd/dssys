.class public Lcom/androidquery/util/RatioDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field private adjusted:Z

.field private anchor:F

.field private m:Landroid/graphics/Matrix;

.field private ratio:F

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput p4, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    .line 12
    .line 13
    iput p5, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    .line 14
    .line 15
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 16
    .line 17
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Matrix;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-direct {p0, p3, p2, p1}, Lcom/androidquery/util/RatioDrawable;->adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/androidquery/util/RatioDrawable;->getWidth(Landroid/widget/ImageView;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-direct {p0, v1, p2, v0}, Lcom/androidquery/util/RatioDrawable;->targetHeight(III)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr p2, v0

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/2addr p2, v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    if-eq p2, v1, :cond_2

    .line 40
    .line 41
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    if-eqz p3, :cond_3

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/androidquery/util/RatioDrawable;->adjusted:Z

    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/androidquery/util/RatioDrawable;->getMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    if-gtz v1, :cond_0

    if-lez v2, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 12
    :cond_2
    iget-boolean p1, p0, Lcom/androidquery/util/RatioDrawable;->adjusted:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, p2, p3, p1}, Lcom/androidquery/util/RatioDrawable;->adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    :cond_3
    return-void
.end method

.method private getMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-direct {p0, p1}, Lcom/androidquery/util/RatioDrawable;->getWidth(Landroid/widget/ImageView;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-direct {p0, v0, p2, p1}, Lcom/androidquery/util/RatioDrawable;->targetHeight(III)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v0, :cond_5

    .line 27
    .line 28
    if-lez p2, :cond_5

    .line 29
    .line 30
    if-lez p1, :cond_5

    .line 31
    .line 32
    if-gtz v1, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget v2, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    .line 40
    .line 41
    if-eq v0, v2, :cond_4

    .line 42
    .line 43
    :cond_2
    new-instance v2, Landroid/graphics/Matrix;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 49
    .line 50
    mul-int v2, v0, v1

    .line 51
    .line 52
    mul-int v3, p1, p2

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    if-lt v2, v3, :cond_3

    .line 56
    .line 57
    int-to-float v1, v1

    .line 58
    int-to-float p2, p2

    .line 59
    div-float/2addr v1, p2

    .line 60
    int-to-float p1, p1

    .line 61
    int-to-float p2, v0

    .line 62
    mul-float/2addr p2, v1

    .line 63
    sub-float/2addr p1, p2

    .line 64
    const/high16 p2, 0x3f000000    # 0.5f

    .line 65
    .line 66
    mul-float/2addr p1, p2

    .line 67
    move v5, v4

    .line 68
    move v4, p1

    .line 69
    :goto_0
    move p1, v5

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    int-to-float p1, p1

    .line 72
    int-to-float v2, v0

    .line 73
    div-float/2addr p1, v2

    .line 74
    invoke-direct {p0, v0, p2}, Lcom/androidquery/util/RatioDrawable;->getYOffset(II)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-float v1, v1

    .line 79
    int-to-float p2, p2

    .line 80
    mul-float/2addr p2, p1

    .line 81
    sub-float/2addr v1, p2

    .line 82
    mul-float/2addr v1, v2

    .line 83
    move v5, v1

    .line 84
    move v1, p1

    .line 85
    goto :goto_0

    .line 86
    :goto_1
    iget-object p2, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 87
    .line 88
    invoke-virtual {p2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 92
    .line 93
    invoke-virtual {p2, v4, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 94
    .line 95
    .line 96
    iput v0, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    .line 97
    .line 98
    :cond_4
    iget-object p1, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 102
    return-object p1
.end method

.method private getWidth(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-gtz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :cond_1
    if-lez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr v0, v1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sub-int/2addr v0, p1

    .line 29
    :cond_2
    return v0
.end method

.method private getYOffset(II)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    .line 2
    .line 3
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 4
    .line 5
    .line 6
    cmpl-float v1, v0, v1

    .line 7
    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sub-float/2addr v3, v0

    .line 15
    div-float/2addr v3, v2

    .line 16
    return v3

    .line 17
    :cond_0
    int-to-float p2, p2

    .line 18
    int-to-float p1, p1

    .line 19
    div-float/2addr p2, p1

    .line 20
    const/high16 p1, 0x3fc00000    # 1.5f

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    sub-float/2addr p1, p2

    .line 31
    div-float/2addr p1, v2

    .line 32
    const/high16 p2, 0x3e800000    # 0.25f

    .line 33
    .line 34
    add-float/2addr p1, p2

    .line 35
    return p1
.end method

.method private targetHeight(III)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    .line 2
    .line 3
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 4
    .line 5
    .line 6
    cmpl-float v1, v0, v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    int-to-float p2, p2

    .line 11
    int-to-float p1, p1

    .line 12
    div-float v0, p2, p1

    .line 13
    .line 14
    :cond_0
    int-to-float p1, p3

    .line 15
    mul-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/androidquery/util/RatioDrawable;->draw(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void

    .line 6
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
