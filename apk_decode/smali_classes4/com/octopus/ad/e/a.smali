.class public Lcom/octopus/ad/e/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroid/animation/ValueAnimator;

.field private k:Landroid/content/Context;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/e/a;->d:Z

    .line 6
    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    iput v0, p0, Lcom/octopus/ad/e/a;->f:I

    .line 10
    .line 11
    const-string v0, "up"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    .line 14
    .line 15
    const/16 v0, 0x2d

    .line 16
    .line 17
    iput v0, p0, Lcom/octopus/ad/e/a;->h:I

    .line 18
    .line 19
    const/16 v0, 0xb4

    .line 20
    .line 21
    iput v0, p0, Lcom/octopus/ad/e/a;->i:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/octopus/ad/e/a;->a(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/e/a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/e/a;->j:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/e/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/e/a;->l:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/e/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/e/a;->m:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic c(Lcom/octopus/ad/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/e/a;->i:I

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/e/a;->j:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/octopus/ad/e/a$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/e/a$1;-><init>(Lcom/octopus/ad/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    new-instance v1, Lcom/octopus/ad/e/a$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/octopus/ad/e/a$2;-><init>(Lcom/octopus/ad/e/a;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnim animator != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/e/a;->j:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollClickUtil"

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/e/a;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/octopus/ad/e/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/e/a;->k:Landroid/content/Context;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/octopus/ad/e/a;->d:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/e/a;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/e/a;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 2
    const-string v0, "down"

    const-string v1, "up"

    :try_start_0
    iget-object v2, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/octopus/ad/e/a;->k:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_up:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/octopus/ad/e/a;->k:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_down:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 6
    :goto_0
    const-string v3, "OctopusAd"

    const-string v4, "A Throwable Caught"

    invoke-static {v3, v4, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iget-object v2, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/octopus/ad/e/a;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_up:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/octopus/ad/e/a;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_down:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    .line 11
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 12
    :cond_3
    sget v3, Lcom/octopus/ad/R$id;->hand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    .line 13
    iget-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->scrollbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->b:Landroid/widget/ImageView;

    .line 14
    iget-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->c:Landroid/widget/TextView;

    .line 15
    iget-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->scroll_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->l:Landroid/widget/FrameLayout;

    .line 16
    iget-object v2, p0, Lcom/octopus/ad/e/a;->n:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->scrollbar_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/octopus/ad/e/a;->m:Landroid/widget/FrameLayout;

    .line 17
    iget-object v2, p0, Lcom/octopus/ad/e/a;->k:Landroid/content/Context;

    iget v3, p0, Lcom/octopus/ad/e/a;->h:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/octopus/ad/e/a;->h:I

    .line 18
    iget-object v2, p0, Lcom/octopus/ad/e/a;->k:Landroid/content/Context;

    iget v3, p0, Lcom/octopus/ad/e/a;->i:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/octopus/ad/e/a;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/octopus/ad/e/a;->i:I

    .line 19
    iget-object v2, p0, Lcom/octopus/ad/e/a;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 20
    iget-object v3, p0, Lcom/octopus/ad/e/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v2, p0, Lcom/octopus/ad/e/a;->c:Landroid/widget/TextView;

    iget v3, p0, Lcom/octopus/ad/e/a;->f:I

    int-to-float v3, v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    :cond_4
    iget-object v2, p0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/octopus/ad/e/a;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/octopus/ad/e/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v2, :cond_5

    .line 25
    iget v4, p0, Lcom/octopus/ad/e/a;->h:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v3, :cond_5

    .line 27
    iget v2, p0, Lcom/octopus/ad/e/a;->i:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v4

    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 28
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    :cond_5
    iget-object v2, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-direct {p0}, Lcom/octopus/ad/e/a;->e()V

    goto :goto_2

    .line 31
    :cond_6
    iget-object v0, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    invoke-direct {p0}, Lcom/octopus/ad/e/a;->d()V

    goto :goto_2

    .line 33
    :cond_7
    const-string v0, "left"

    iget-object v1, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 34
    :cond_8
    const-string v0, "right"

    iget-object v1, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public setHandWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/e/a;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setScrollDirection(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/e/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollbarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/e/a;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setTitleFont(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/e/a;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/e/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
