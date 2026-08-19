.class public Lcom/octopus/ad/internal/e/g;
.super Lcom/octopus/ad/internal/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/e/g$a;,
        Lcom/octopus/ad/internal/e/g$b;
    }
.end annotation


# instance fields
.field private A:Lcom/octopus/ad/internal/e/c;

.field private B:Lcom/octopus/ad/internal/e/g$a;

.field protected t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/octopus/ad/internal/a/b;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/e/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/octopus/ad/internal/e/g;->z:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/octopus/ad/internal/e/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const-string p1, "OctopusAd_Time"

    const-string p2, "SplashAdViewImpl setup \u5f00\u59cb"

    invoke-static {p1, p2}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/octopus/ad/internal/e/g;->u:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/g;->t:Z

    .line 5
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/g;->w:Z

    .line 6
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/g;->x:Z

    .line 7
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    iget p1, p1, Lcom/octopus/ad/internal/q;->e:I

    if-nez p1, :cond_0

    .line 8
    new-instance v0, Lcom/octopus/ad/internal/a/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/a/i;->a:Lcom/octopus/ad/internal/a/i;

    sget-object v3, Lcom/octopus/ad/internal/a/h;->a:Lcom/octopus/ad/internal/a/h;

    const-wide/16 v4, 0x1f4

    invoke-direct/range {v0 .. v5}, Lcom/octopus/ad/internal/a/b;-><init>(Landroid/content/Context;Lcom/octopus/ad/internal/a/i;Lcom/octopus/ad/internal/a/h;J)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 12
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    int-to-float p2, p2

    .line 13
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->q()F

    move-result v1

    div-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p1, p1

    .line 14
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->p()F

    move-result v0

    div-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(I)V

    .line 16
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/d;->c(I)V

    .line 17
    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    .line 18
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    invoke-virtual {p2, p1}, Lcom/octopus/ad/internal/d;->a(Lcom/octopus/ad/internal/p;)V

    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    iget p2, p0, Lcom/octopus/ad/internal/e/g;->u:I

    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->z:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/octopus/ad/internal/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/a$a;)Z
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->h()V

    .line 21
    invoke-super {p0, p1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/b/a$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/g;->v:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/octopus/ad/internal/e/c;)Z
    .locals 4

    const v0, 0x138e6

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 23
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->j()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getAdWebView()Lcom/octopus/ad/internal/e/b;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    if-ne v2, p1, :cond_1

    .line 25
    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/a;->b(I)V

    return v1

    .line 26
    :cond_1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/g;->A:Lcom/octopus/ad/internal/e/c;

    .line 27
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/g;->getTransitionType()Lcom/octopus/ad/internal/a/i;

    move-result-object v0

    sget-object v2, Lcom/octopus/ad/internal/a/i;->a:Lcom/octopus/ad/internal/a/i;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_5

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->k()V

    .line 31
    :cond_2
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/octopus/ad/d;

    if-eqz v1, :cond_3

    const/high16 v1, -0x1000000

    .line 33
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/g;->getAdAlignment()Lcom/octopus/ad/internal/e/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/g$a;->a()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 37
    :cond_4
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->l()V

    goto/16 :goto_2

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    if-eqz v0, :cond_c

    .line 39
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 40
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/g;->getAdAlignment()Lcom/octopus/ad/internal/e/g$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/e/g$a;->a()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 41
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v3, :cond_7

    goto :goto_0

    .line 43
    :cond_7
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/d;

    if-eqz v0, :cond_8

    .line 44
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->l()V

    .line 45
    :cond_8
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showNext()V

    goto :goto_1

    .line 47
    :cond_9
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/octopus/ad/d;

    if-eqz v0, :cond_a

    .line 49
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->l()V

    .line 50
    :cond_a
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 51
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    if-eqz v0, :cond_c

    .line 53
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 54
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/e/g$b;

    iget-object v3, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    invoke-direct {v2, p0, v0, v3}, Lcom/octopus/ad/internal/e/g$b;-><init>(Lcom/octopus/ad/internal/e/g;Lcom/octopus/ad/internal/e/c;Lcom/octopus/ad/internal/a/b;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 55
    :cond_b
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->k()V

    .line 56
    :cond_c
    :goto_2
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    const/4 p1, 0x1

    return p1

    .line 57
    :cond_d
    :goto_3
    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/a;->b(I)V

    .line 58
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    const-string v0, "Loaded an ad with an invalid displayable"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getAdAlignment()Lcom/octopus/ad/internal/e/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->B:Lcom/octopus/ad/internal/e/g$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/octopus/ad/internal/e/g$a;->e:Lcom/octopus/ad/internal/e/g$a;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/octopus/ad/internal/e/g;->B:Lcom/octopus/ad/internal/e/g$a;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->B:Lcom/octopus/ad/internal/e/g$a;

    .line 10
    .line 11
    return-object v0
.end method

.method public getMediaType()Lcom/octopus/ad/internal/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResizeAdToFitContainer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/g;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTransitionType()Lcom/octopus/ad/internal/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->y:Lcom/octopus/ad/internal/a/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/a/b;->getTransitionType()Lcom/octopus/ad/internal/a/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/a/i;->a:Lcom/octopus/ad/internal/a/i;

    .line 11
    .line 12
    return-object v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/octopus/ad/internal/e/a;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move v0, p5

    .line 5
    move p5, p4

    .line 6
    move p4, p3

    .line 7
    move p3, p2

    .line 8
    move p2, p1

    .line 9
    move-object p1, p0

    .line 10
    iget-boolean v1, p1, Lcom/octopus/ad/internal/e/g;->x:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sub-int p3, p5, p3

    .line 21
    .line 22
    int-to-float p3, p3

    .line 23
    invoke-virtual {p2}, Lcom/octopus/ad/internal/q;->p()F

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    div-float/2addr p3, p5

    .line 28
    const/high16 p5, 0x3f000000    # 0.5f

    .line 29
    .line 30
    add-float/2addr p3, p5

    .line 31
    float-to-int p3, p3

    .line 32
    sub-int p4, v0, p4

    .line 33
    .line 34
    int-to-float p4, p4

    .line 35
    invoke-virtual {p2}, Lcom/octopus/ad/internal/q;->q()F

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    div-float/2addr p4, p2

    .line 40
    add-float/2addr p4, p5

    .line 41
    float-to-int p2, p4

    .line 42
    iget-object p4, p1, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 43
    .line 44
    invoke-virtual {p4}, Lcom/octopus/ad/internal/d;->j()I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-lt p3, p4, :cond_2

    .line 49
    .line 50
    iget-object p4, p1, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 51
    .line 52
    invoke-virtual {p4}, Lcom/octopus/ad/internal/d;->k()I

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-ge p2, p4, :cond_1

    .line 57
    .line 58
    if-lez p3, :cond_1

    .line 59
    .line 60
    if-lez p2, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p4, p1, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 64
    .line 65
    invoke-virtual {p4, p3}, Lcom/octopus/ad/internal/d;->b(I)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p1, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 69
    .line 70
    invoke-virtual {p3, p2}, Lcom/octopus/ad/internal/d;->c(I)V

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p1, Lcom/octopus/ad/internal/e/g;->x:Z

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_0
    iget-object p2, p1, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/octopus/ad/internal/c;->a()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of p1, p1, Landroid/webkit/WebView;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/webkit/WebView;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/c/t;->b(Landroid/webkit/WebView;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string p1, "OctopusAd"

    .line 26
    .line 27
    const-string v1, "enter onWindowVisibilityChanged before dismantleBroadcast"

    .line 28
    .line 29
    invoke-static {p1, v1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    .line 33
    .line 34
    sget v1, Lcom/octopus/ad/R$string;->hidden:I

    .line 35
    .line 36
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p1, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/octopus/ad/internal/e/g;->v:Z

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/g;->t()V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    instance-of p1, p1, Landroid/webkit/WebView;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/webkit/WebView;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/octopus/ad/internal/c/t;->c(Landroid/webkit/WebView;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g;->A:Lcom/octopus/ad/internal/e/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->o()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/octopus/ad/internal/e/g;->A:Lcom/octopus/ad/internal/e/c;

    .line 10
    .line 11
    :cond_0
    const-string v0, "OctopusAd"

    .line 12
    .line 13
    const-string v1, "enter activityOnDestroy before dismantleBroadcast"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/g;->t()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/octopus/ad/R$string;->stop:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/g;->v:Z

    .line 19
    .line 20
    return-void
.end method
