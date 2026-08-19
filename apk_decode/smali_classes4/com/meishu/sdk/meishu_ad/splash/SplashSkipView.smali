.class public Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Landroid/graphics/RectF;

.field public j:F

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroid/os/Handler;

.field public o:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x400ccccd    # 2.2f

    .line 2
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->d:F

    const p1, 0x4141999a    # 12.1f

    .line 3
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->e:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 4
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->f:F

    const/high16 p1, 0x41900000    # 18.0f

    .line 5
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->g:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->k:I

    const/16 v0, 0x1388

    .line 7
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->l:I

    const/16 v0, 0x64

    .line 8
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->m:I

    .line 9
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->p:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->q:Z

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    new-instance p1, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;-><init>(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->s:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x400ccccd    # 2.2f

    .line 14
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->d:F

    const p1, 0x4141999a    # 12.1f

    .line 15
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->e:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 16
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->f:F

    const/high16 p1, 0x41900000    # 18.0f

    .line 17
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->g:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->k:I

    const/16 p2, 0x1388

    .line 19
    iput p2, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->l:I

    const/16 p2, 0x64

    .line 20
    iput p2, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->m:I

    .line 21
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->p:Z

    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->q:Z

    .line 23
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    new-instance p1, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$a;-><init>(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->s:Ljava/lang/Runnable;

    .line 25
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->d:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->d:F

    .line 3
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->e:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->e:F

    .line 4
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->f:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->f:F

    .line 5
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->g:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->g:F

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a:Landroid/graphics/Paint;

    .line 7
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->e:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a:Landroid/graphics/Paint;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    const v3, -0x777778

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b:Landroid/graphics/Paint;

    .line 12
    const-string v1, "#b7ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c:Landroid/graphics/Paint;

    .line 17
    const-string v3, "#42c1f0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->d:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a:Landroid/graphics/Paint;

    const-string v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->j:F

    .line 22
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->g:F

    .line 23
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->h:F

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    iget v5, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->h:F

    mul-float/2addr v5, v2

    sub-float/2addr v5, v1

    sub-float/2addr v5, v3

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->i:Landroid/graphics/RectF;

    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->n:Landroid/os/Handler;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->o:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;->onSkip()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;->onTimeOver()V

    :goto_0
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->o:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->n:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->s:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->p:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->n:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->s:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getShowTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->r:Z

    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->r:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->o:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

    .line 19
    .line 20
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->i:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/high16 v3, 0x43b40000    # 360.0f

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr p1, v1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    div-float/2addr v2, v1

    .line 33
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 34
    .line 35
    invoke-virtual {v0, v3, p1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->k:I

    .line 39
    .line 40
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->m:I

    .line 41
    .line 42
    if-le p1, v2, :cond_0

    .line 43
    .line 44
    sub-int/2addr p1, v2

    .line 45
    int-to-float p1, p1

    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    .line 48
    mul-float/2addr p1, v3

    .line 49
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->l:I

    .line 50
    .line 51
    sub-int/2addr v3, v2

    .line 52
    int-to-float v2, v3

    .line 53
    div-float/2addr p1, v2

    .line 54
    const/high16 v2, 0x43b40000    # 360.0f

    .line 55
    .line 56
    mul-float/2addr p1, v2

    .line 57
    :goto_0
    move v9, p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->i:Landroid/graphics/RectF;

    .line 62
    .line 63
    iget-object v11, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c:Landroid/graphics/Paint;

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    move-object v6, v0

    .line 68
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 81
    .line 82
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    div-int/lit8 v3, v3, 0x2

    .line 89
    .line 90
    int-to-float v3, v3

    .line 91
    add-float/2addr v2, p1

    .line 92
    div-float/2addr v2, v1

    .line 93
    sub-float/2addr v3, v2

    .line 94
    float-to-int p1, v3

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    div-int/lit8 v2, v2, 0x2

    .line 100
    .line 101
    int-to-float v2, v2

    .line 102
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->j:F

    .line 103
    .line 104
    div-float/2addr v3, v1

    .line 105
    sub-float/2addr v2, v3

    .line 106
    int-to-float p1, p1

    .line 107
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a:Landroid/graphics/Paint;

    .line 108
    .line 109
    const-string v3, "\u8df3\u8fc7"

    .line 110
    .line 111
    invoke-virtual {v0, v3, v2, p1, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    const/high16 v2, -0x80000000

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->h:F

    .line 19
    .line 20
    mul-float/2addr p1, v1

    .line 21
    float-to-int p1, p1

    .line 22
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    iget p2, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->h:F

    .line 33
    .line 34
    mul-float/2addr p2, v1

    .line 35
    float-to-int p2, p2

    .line 36
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->a(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->r:Z

    .line 5
    .line 6
    const-string v1, "SplashSkipView"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->p:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->splashClickPause()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f()V

    .line 39
    .line 40
    .line 41
    const-string p1, "resume"

    .line 42
    .line 43
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->c()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->r:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    iget-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->p:Z

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->splashClickPause()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    const-string p1, "pause"

    .line 71
    .line 72
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->b()V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void
.end method

.method public setOnSkipListener(Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->o:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;

    .line 2
    .line 3
    return-void
.end method

.method public setShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTotalTime(I)V
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->l:I

    .line 5
    .line 6
    return-void
.end method
