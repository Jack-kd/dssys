.class public Lcom/ubix/ssp/ad/e/g;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/g$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:F

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Lcom/ubix/ssp/ad/e/g$b;

.field private q:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x3fffffff    # 1.9999999f

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->b:I

    const p1, -0x59000001

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->d:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->f:I

    const p1, -0xdededf

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->h:I

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->i:F

    const-string p1, ""

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    const/16 p1, 0x64

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->l:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/g;->m:J

    iput-wide v0, p0, Lcom/ubix/ssp/ad/e/g;->n:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/g;->o:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/g;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3fffffff    # 1.9999999f

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->b:I

    const p1, -0x59000001

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->d:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->f:I

    const p1, -0xdededf

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->h:I

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->i:F

    const-string p1, ""

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    const/16 p1, 0x64

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->l:I

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/g;->m:J

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/g;->n:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/g;->o:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/g;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3fffffff    # 1.9999999f

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->b:I

    const p1, -0x59000001

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->d:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->f:I

    const p1, -0xdededf

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->h:I

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->i:F

    const-string p1, ""

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    const/16 p1, 0x64

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->l:I

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/g;->m:J

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/g;->n:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/g;->o:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/g;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/g;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/ubix/ssp/ad/e/g;->l:I

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/g;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->l:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/g;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/g;->n:J

    return-wide p1
.end method

.method private a()V
    .locals 5

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/e/g;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->c:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/ubix/ssp/ad/e/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/ubix/ssp/ad/e/g;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/g;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance v4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/ubix/ssp/ad/e/g;->k:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/g;->k:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/ubix/ssp/ad/e/g;->k:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v4, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/g;->b()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/g;->c:Landroid/graphics/Paint;

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/ubix/ssp/ad/e/g;->e:Landroid/graphics/Paint;

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/ubix/ssp/ad/e/g;->l:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static b(Landroid/content/Context;F)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/g;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/g;->m:J

    return-wide v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/g;->g:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/g;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/g;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/g;)Lcom/ubix/ssp/ad/e/g$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/g;->p:Lcom/ubix/ssp/ad/e/g$b;

    return-object p0
.end method

.method private f()V
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/g;->q:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/g;->m:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/e/g$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/g$a;-><init>(Lcom/ubix/ssp/ad/e/g;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/g;->f()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/g;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/g;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/g;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/g;->i:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ubix/ssp/ad/e/g;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/ubix/ssp/ad/e/g;->k:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/g;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/g;->o:Z

    :cond_0
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/g;->o:Z

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/ubix/ssp/ad/e/g;->n:J

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    iget-wide v6, p0, Lcom/ubix/ssp/ad/e/g;->m:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-long v0, v1

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/ubix/ssp/ad/e/g;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    const-string v0, "0"

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    :cond_3
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/g;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/g;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/ubix/ssp/ad/e/g;->a(Landroid/content/Context;F)I

    move-result v0

    :cond_0
    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/ubix/ssp/ad/e/g;->a(Landroid/content/Context;F)I

    move-result p1

    :cond_1
    if-eq v0, p1, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move p1, v0

    :cond_2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->b:I

    return-void
.end method

.method public setCountdownListener(Lcom/ubix/ssp/ad/e/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/g;->p:Lcom/ubix/ssp/ad/e/g$b;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ubix/ssp/ad/e/g;->m:J

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->d:I

    return-void
.end method

.method public setProgressLightColor(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->f:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/g;->j:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/g;->o:Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->h:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/g;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ubix/ssp/ad/e/g;->i:F

    return-void
.end method
