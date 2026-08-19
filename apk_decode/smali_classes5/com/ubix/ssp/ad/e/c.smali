.class public Lcom/ubix/ssp/ad/e/c;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/c$b;
    }
.end annotation


# instance fields
.field private final A:I

.field private B:Landroid/graphics/Rect;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Z

.field private m:D

.field n:I

.field private o:Z

.field private p:Z

.field private q:Landroid/os/Handler;

.field r:Landroid/os/HandlerThread;

.field s:Landroid/graphics/Paint;

.field t:Landroid/graphics/RectF;

.field u:I

.field v:I

.field w:J

.field x:J

.field private y:I

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/c;->a:Ljava/lang/String;

    const-string v0, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/c;->b:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/c;->e:Landroid/graphics/Paint;

    const/16 v0, 0x10

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->f:I

    const/16 v2, 0xc

    iput v2, p0, Lcom/ubix/ssp/ad/e/c;->g:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/c;->j:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/c;->k:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/c;->l:Z

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    iput-wide v2, p0, Lcom/ubix/ssp/ad/e/c;->m:D

    const/4 v2, 0x0

    iput v2, p0, Lcom/ubix/ssp/ad/e/c;->n:I

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/c;->o:Z

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/c;->p:Z

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ButtonDraw"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/c;->r:Landroid/os/HandlerThread;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    iput-object v3, p0, Lcom/ubix/ssp/ad/e/c;->t:Landroid/graphics/RectF;

    const/4 v3, 0x2

    iput v3, p0, Lcom/ubix/ssp/ad/e/c;->u:I

    const/16 v3, 0x9

    iput v3, p0, Lcom/ubix/ssp/ad/e/c;->v:I

    iput v2, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/ubix/ssp/ad/e/c;->z:I

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->A:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/c;->B:Landroid/graphics/Rect;

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/e/c;->l:Z

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/c;->m:D

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ubix/ssp/ad/e/c;->f:I

    int-to-float p2, p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/c;->g:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->j:Landroid/graphics/Paint;

    const/high16 p2, 0x66000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    const p2, 0x3e0f5c29    # 0.14f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    return p0
.end method

.method private a()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/e/c;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->n:I

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/c;->o:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->f:I

    const/16 v0, 0xa

    :goto_0
    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->g:I

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->f:I

    const/16 v0, 0xc

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/c;->f:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/c;->g:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/c;->x:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v4, p0, Lcom/ubix/ssp/ad/e/c;->x:J

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/c;->w:J

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iget v4, p0, Lcom/ubix/ssp/ad/e/c;->v:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/c;->t:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-ltz v5, :cond_2

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v5, v4

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ubix/ssp/ad/e/c;->u:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v0

    iput v5, v2, Landroid/graphics/RectF;->top:F

    iget v1, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/RectF;->right:F

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    const/high16 v1, 0x43900000    # 288.0f

    invoke-virtual {p1, v2, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_0
    iget p1, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v3, p1

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/ubix/ssp/ad/e/c;->c:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/ubix/ssp/ad/e/c;->d:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/c;->x:J

    return-void
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/e/c;->c:I

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/c;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/e/c;->d:I

    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 5

    .line 3
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/c;->m:D

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    mul-int/lit8 v1, v0, 0x2

    sub-int v2, p1, v1

    iget v3, p0, Lcom/ubix/ssp/ad/e/c;->c:I

    if-ne v2, v3, :cond_0

    sub-int v3, p2, v1

    iget v4, p0, Lcom/ubix/ssp/ad/e/c;->d:I

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    div-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->u:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->v:I

    iput v2, p0, Lcom/ubix/ssp/ad/e/c;->c:I

    sub-int v0, p2, v1

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->d:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/c;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/c;->o:Z

    const/16 v0, 0xe

    iput v0, p0, Lcom/ubix/ssp/ad/e/c;->f:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/ubix/ssp/ad/e/c;->g:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/c;->g:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c;->r:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/c;->r:Landroid/os/HandlerThread;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/ubix/ssp/ad/e/c;->q:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v2, v0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget-object v3, v0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v6, v6

    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v6, v7

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    int-to-float v7, v7

    const/high16 v8, 0x40200000    # 2.5f

    div-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const/16 v6, 0xc

    if-ge v5, v6, :cond_0

    iget v2, v0, Lcom/ubix/ssp/ad/e/c;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/ubix/ssp/ad/e/c;->f:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    goto :goto_0

    :cond_0
    :goto_1
    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v5, v5

    iget v6, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v5, v6

    iget v6, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    iget v3, v0, Lcom/ubix/ssp/ad/e/c;->g:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/ubix/ssp/ad/e/c;->g:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    int-to-float v3, v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->j:Landroid/graphics/Paint;

    iget v5, v0, Lcom/ubix/ssp/ad/e/c;->f:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->k:Landroid/graphics/Paint;

    iget v5, v0, Lcom/ubix/ssp/ad/e/c;->g:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/r;->d(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v4, v0, Lcom/ubix/ssp/ad/e/c;->l:Z

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->a:Ljava/lang/String;

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v7, v7

    iget v8, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    iget v10, v0, Lcom/ubix/ssp/ad/e/c;->c:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    int-to-float v11, v8

    div-float v12, v11, v5

    sub-float/2addr v10, v12

    float-to-int v10, v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    add-float/2addr v9, v7

    div-float/2addr v11, v6

    div-float/2addr v11, v6

    iget v10, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v10, v10

    iget v12, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v10, v12

    div-float/2addr v10, v6

    add-float/2addr v11, v10

    sub-float/2addr v11, v12

    div-int/lit8 v8, v8, 0x10

    int-to-float v8, v8

    add-float/2addr v11, v8

    add-float/2addr v7, v11

    iget-object v8, v0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->b:Ljava/lang/String;

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v7, v7

    iget v8, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    iget v10, v0, Lcom/ubix/ssp/ad/e/c;->c:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    int-to-float v11, v8

    div-float v12, v11, v5

    sub-float/2addr v10, v12

    float-to-int v10, v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    add-float/2addr v9, v7

    div-float/2addr v11, v6

    div-float v10, v11, v6

    add-float/2addr v11, v10

    iget v10, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v10, v10

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v10, v3

    div-float/2addr v10, v6

    add-float/2addr v11, v10

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v11, v2

    div-int/lit8 v8, v8, 0x10

    int-to-float v2, v8

    sub-float/2addr v11, v2

    add-float/2addr v7, v11

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v9, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_2
    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->a:Ljava/lang/String;

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v7, v7

    iget v8, v0, Lcom/ubix/ssp/ad/e/c;->c:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v8, v7

    add-float/2addr v8, v5

    iget v9, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    int-to-float v10, v9

    div-float/2addr v10, v6

    div-float/2addr v10, v6

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    iget v12, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v11, v12

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    sub-float/2addr v10, v12

    div-int/lit8 v9, v9, 0x10

    int-to-float v9, v9

    add-float/2addr v10, v9

    add-float/2addr v7, v10

    add-float/2addr v7, v5

    iget-object v9, v0, Lcom/ubix/ssp/ad/e/c;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->b:Ljava/lang/String;

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v7, v7

    iget v8, v0, Lcom/ubix/ssp/ad/e/c;->c:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v8, v7

    add-float/2addr v8, v5

    iget v9, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    int-to-float v10, v9

    div-float/2addr v10, v6

    div-float v11, v10, v6

    add-float/2addr v10, v11

    iget v11, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    iget v12, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v11, v12

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v10, v11

    div-int/lit8 v9, v9, 0x10

    int-to-float v9, v9

    sub-float/2addr v10, v9

    add-float/2addr v7, v10

    add-float/2addr v7, v5

    iget-object v9, v0, Lcom/ubix/ssp/ad/e/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->a:Ljava/lang/String;

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v7, v7

    iget v8, v0, Lcom/ubix/ssp/ad/e/c;->c:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v8, v7

    iget v9, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    int-to-float v10, v9

    div-float/2addr v10, v6

    div-float/2addr v10, v6

    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    iget v12, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v11, v12

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    sub-float/2addr v10, v12

    div-int/lit8 v9, v9, 0x10

    int-to-float v9, v9

    add-float/2addr v10, v9

    add-float/2addr v7, v10

    iget-object v9, v0, Lcom/ubix/ssp/ad/e/c;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->b:Ljava/lang/String;

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v7, v7

    iget v8, v0, Lcom/ubix/ssp/ad/e/c;->c:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v8, v7

    iget v9, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    int-to-float v10, v9

    div-float/2addr v10, v6

    div-float v11, v10, v6

    add-float/2addr v10, v11

    iget v11, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v11, v11

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v11, v3

    div-float/2addr v11, v6

    add-float/2addr v10, v11

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v10, v2

    div-int/lit8 v9, v9, 0x10

    int-to-float v2, v9

    sub-float/2addr v10, v2

    add-float/2addr v7, v10

    iget-object v2, v0, Lcom/ubix/ssp/ad/e/c;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v8, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    iget-boolean v2, v0, Lcom/ubix/ssp/ad/e/c;->l:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ubix/ic_bottom_right_arrow.webp"

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/ubix/ssp/ad/e/c;->B:Landroid/graphics/Rect;

    iget v4, v0, Lcom/ubix/ssp/ad/e/c;->y:I

    iget v7, v0, Lcom/ubix/ssp/ad/e/c;->c:I

    int-to-double v7, v7

    iget v9, v0, Lcom/ubix/ssp/ad/e/c;->d:I

    div-int/lit8 v10, v9, 0x2

    int-to-double v10, v10

    iget-boolean v12, v0, Lcom/ubix/ssp/ad/e/c;->o:Z

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    if-eqz v12, :cond_3

    move-wide/from16 v17, v15

    goto :goto_3

    :cond_3
    const-wide v17, 0x3ff3333333333333L    # 1.2

    :goto_3
    mul-double v10, v10, v17

    sub-double v10, v7, v10

    double-to-int v10, v10

    add-int/2addr v10, v4

    int-to-float v11, v9

    div-float v17, v11, v6

    div-float/2addr v11, v5

    div-float v5, v11, v6

    sub-float v6, v17, v5

    float-to-int v6, v6

    add-int/2addr v6, v4

    div-int/lit8 v9, v9, 0x2

    int-to-double v13, v9

    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    const-wide v15, 0x3ff3333333333333L    # 1.2

    :goto_4
    mul-double/2addr v13, v15

    sub-double/2addr v7, v13

    float-to-double v11, v11

    add-double/2addr v7, v11

    double-to-int v7, v7

    add-int/2addr v7, v4

    add-float v5, v17, v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v10, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lcom/ubix/ssp/ad/e/c;->B:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/ubix/ssp/ad/e/c;->e:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    iget-boolean v2, v0, Lcom/ubix/ssp/ad/e/c;->p:Z

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/ubix/ssp/ad/e/c;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/ubix/ssp/ad/e/c;->c:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/ubix/ssp/ad/e/c;->d:I

    iget v3, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, Lcom/ubix/ssp/ad/e/c$a;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/e/c$a;-><init>(Lcom/ubix/ssp/ad/e/c;Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNeedWave(Z)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/c;->p:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/c;->p:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->r:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/ubix/ssp/ad/e/c$b;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/e/c$b;-><init>(Lcom/ubix/ssp/ad/e/c;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/c;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/c;->q:Landroid/os/Handler;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/c;->m:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/c;->s:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/ubix/ssp/ad/e/c;->y:I

    int-to-float v1, v0

    iget v2, p0, Lcom/ubix/ssp/ad/e/c;->c:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/c;->d:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-direct {p1, v1, v1, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c;->t:Landroid/graphics/RectF;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
