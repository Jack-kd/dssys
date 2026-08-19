.class public Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;
.super Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/core/display/RoundedVignetteBitmapDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedVignetteDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/high16 v7, 0x3f800000    # 1.0f

    .line 19
    .line 20
    mul-float/2addr p1, v7

    .line 21
    const v8, 0x3f333333    # 0.7f

    .line 22
    .line 23
    .line 24
    div-float v2, p1, v8

    .line 25
    .line 26
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->mRect:Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const v3, 0x3fa66666    # 1.3f

    .line 33
    .line 34
    .line 35
    mul-float/2addr v3, p1

    .line 36
    const/4 p1, 0x0

    .line 37
    const/high16 v4, 0x7f000000

    .line 38
    .line 39
    filled-new-array {p1, p1, v4}, [I

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 p1, 0x3

    .line 44
    new-array v5, p1, [F

    .line 45
    .line 46
    fill-array-data v5, :array_0

    .line 47
    .line 48
    .line 49
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 50
    .line 51
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Landroid/graphics/Matrix;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->paint:Landroid/graphics/Paint;

    .line 66
    .line 67
    new-instance v1, Landroid/graphics/ComposeShader;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 70
    .line 71
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data
.end method
