.class public Lcom/octopus/ad/widget/FlickerProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/PorterDuffXfermode;

.field private b:I

.field private final c:F

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/Canvas;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:Landroid/graphics/Bitmap;

.field private p:F

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/octopus/ad/widget/FlickerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/octopus/ad/widget/FlickerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->a:Landroid/graphics/PorterDuffXfermode;

    const/high16 p1, 0x42c80000    # 100.0f

    .line 5
    iput p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->c:F

    .line 6
    invoke-direct {p0, p2}, Lcom/octopus/ad/widget/FlickerProgressBar;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->n:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/R$styleable;->OctFlickerProgressBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    sget v0, Lcom/octopus/ad/R$styleable;->OctFlickerProgressBar_octTextSize:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->m:I

    .line 3
    sget v0, Lcom/octopus/ad/R$styleable;->OctFlickerProgressBar_octLoadingColor:I

    const-string v1, "#40c4ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->q:I

    .line 4
    sget v0, Lcom/octopus/ad/R$styleable;->OctFlickerProgressBar_octStopColor:I

    const-string v1, "#ff9800"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->r:I

    .line 5
    sget v0, Lcom/octopus/ad/R$styleable;->OctFlickerProgressBar_octRadius:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->n:I

    .line 6
    sget v0, Lcom/octopus/ad/R$styleable;->OctFlickerProgressBar_octBorderWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->b:I

    .line 7
    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    throw v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->p:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->j:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->j:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->j:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->j:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 7
    iget-boolean v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->l:Z

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->f:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->o:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 11
    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->n:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->e:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->f:Landroid/graphics/Paint;

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->d:Landroid/graphics/Paint;

    .line 7
    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->m:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->h:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->b:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->i:Landroid/graphics/RectF;

    .line 10
    iget-boolean v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->l:Z

    if-eqz v0, :cond_0

    .line 11
    iget v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->r:I

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->q:I

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    .line 13
    :goto_0
    invoke-direct {p0}, Lcom/octopus/ad/widget/FlickerProgressBar;->d()V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->h:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 16
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, v2

    .line 20
    iget-object v2, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->b:I

    sub-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->o:Landroid/graphics/Bitmap;

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->j:Landroid/graphics/Canvas;

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr v1, v3

    .line 8
    iget v3, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->p:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 10
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 12
    const-string v0, "\u70b9\u51fb\u5b89\u88c5"

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->k:Z

    .line 14
    invoke-virtual {p0, v0}, Lcom/octopus/ad/widget/FlickerProgressBar;->setStop(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/octopus/ad/widget/FlickerProgressBar;->setStop(Z)V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->p:F

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->k:Z

    .line 16
    iput-boolean v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->l:Z

    .line 17
    iget v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->q:I

    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    .line 18
    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    iput-object v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/octopus/ad/widget/FlickerProgressBar;->d()V

    return-void
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->p:F

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/octopus/ad/widget/FlickerProgressBar;->a(Landroid/graphics/Canvas;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/octopus/ad/widget/FlickerProgressBar;->b(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/octopus/ad/widget/FlickerProgressBar;->c(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/octopus/ad/widget/FlickerProgressBar;->d(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/high16 v1, -0x80000000

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/high16 v1, 0x40000000    # 2.0f

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/high16 v0, 0x42100000    # 36.0f

    .line 33
    .line 34
    invoke-static {p2, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->o:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/octopus/ad/widget/FlickerProgressBar;->c()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    .line 7
    cmpg-float v1, p1, v0

    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->p:F

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->p:F

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/octopus/ad/widget/FlickerProgressBar;->a()V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public setStatus(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x10

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "\u4e0b\u8f7d\u5931\u8d25"

    .line 18
    .line 19
    iput-object p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput-boolean v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->k:Z

    .line 23
    .line 24
    const-string p1, "\u70b9\u51fb\u5b89\u88c5"

    .line 25
    .line 26
    iput-object p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iput-boolean v1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->l:Z

    .line 30
    .line 31
    const-string p1, "\u7ee7\u7eed\u4e0b\u8f7d"

    .line 32
    .line 33
    iput-object p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->l:Z

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->p:F

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "%"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->g:Ljava/lang/String;

    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setStop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->l:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->r:I

    .line 6
    .line 7
    iput p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->q:I

    .line 11
    .line 12
    iput p1, p0, Lcom/octopus/ad/widget/FlickerProgressBar;->s:I

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
