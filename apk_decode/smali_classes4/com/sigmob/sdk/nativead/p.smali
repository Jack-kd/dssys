.class public Lcom/sigmob/sdk/nativead/p;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/sigmob/sdk/nativead/ad;

.field private b:Z

.field private c:Z

.field private d:Lcom/sigmob/sdk/nativead/a;

.field private e:I

.field private f:J

.field private g:I

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/nativead/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/nativead/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/p;->b:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sigmob/sdk/nativead/p;->c:Z

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    iput p1, p0, Lcom/sigmob/sdk/nativead/p;->g:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/sigmob/sdk/nativead/p;->h:I

    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    iput p2, p0, Lcom/sigmob/sdk/nativead/p;->j:I

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/p;)Lcom/sigmob/sdk/nativead/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    return-object p0
.end method

.method private b()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/p;->a()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/nativead/p;->a(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v5, v0

    const/4 v0, 0x1

    if-lez v5, :cond_0

    int-to-float v6, v4

    iget v7, p0, Lcom/sigmob/sdk/nativead/p;->e:I

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    int-to-float v5, v5

    mul-float/2addr v7, v5

    cmpl-float v5, v6, v7

    if-ltz v5, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-lez v4, :cond_1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/sigmob/sdk/nativead/a;->f()V

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    iput-wide v1, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/sigmob/sdk/nativead/a;->e()V

    :cond_2
    :goto_1
    if-lez v4, :cond_9

    if-eqz v5, :cond_6

    iget-boolean v4, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    cmp-long v4, v4, v1

    if-nez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    :cond_3
    iget-wide v4, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    cmp-long v1, v4, v1

    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    sub-long/2addr v1, v4

    iget v4, p0, Lcom/sigmob/sdk/nativead/p;->g:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v1, v1, v4

    if-ltz v1, :cond_4

    move v3, v0

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/a;->d()V

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v0, :cond_a

    invoke-interface {v0, v3}, Lcom/sigmob/sdk/nativead/a;->a(Z)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/a;->c()V

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v0, :cond_8

    invoke-interface {v0, v3}, Lcom/sigmob/sdk/nativead/a;->a(Z)V

    :cond_8
    iput-wide v1, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    if-eqz v1, :cond_a

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/a;->e()V

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    if-eqz v0, :cond_c

    iget-boolean v4, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    if-eqz v4, :cond_c

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/a;->e()V

    :cond_c
    iput-boolean v3, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    iput-wide v1, p0, Lcom/sigmob/sdk/nativead/p;->f:J

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ad;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-----------startTimer----------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ad;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/ad;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/p;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/nativead/p;->h:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sigmob/sdk/nativead/p;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-----------stopTimer----------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/ad;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(II)V
    .locals 2

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/p;->c:Z

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->c()V

    :cond_0
    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/p;->c:Z

    iput p1, p0, Lcom/sigmob/sdk/nativead/p;->e:I

    iput p2, p0, Lcom/sigmob/sdk/nativead/p;->g:I

    new-instance p1, Lcom/sigmob/sdk/nativead/p$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sigmob/sdk/nativead/p$1;-><init>(Lcom/sigmob/sdk/nativead/p;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/p;->a:Lcom/sigmob/sdk/nativead/ad;

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->d()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sigmob/sdk/nativead/p;->j:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/p;->b:Z

    const-string v0, "---------onAttachedToWindow---------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->d()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/p;->b:Z

    const-string v0, "---------onDetachedFromWindow----------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->f()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    const-string v0, "---------onFinishTemporaryDetach-------------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->d()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    const-string v0, "---------onStartTemporaryDetach-----------"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->f()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---------onVisibilityChanged---------"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iput p2, p0, Lcom/sigmob/sdk/nativead/p;->j:I

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->d()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->f()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------onWindowFocusChanged: hasWindowFocus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/p;->c:Z

    iget-boolean p1, p0, Lcom/sigmob/sdk/nativead/p;->i:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->b()V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iput p1, p0, Lcom/sigmob/sdk/nativead/p;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------onWindowVisibilityChanged: visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->d()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/p;->f()V

    return-void
.end method

.method public setAdVisibilityStatusChangeListener(Lcom/sigmob/sdk/nativead/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/p;->d:Lcom/sigmob/sdk/nativead/a;

    return-void
.end method
