.class public abstract Lcom/beizi/fusion/hn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    filled-new-array {p1, p2}, [I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/beizi/fusion/hn;->a()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/beizi/fusion/J;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/J;-><init>(Lcom/beizi/fusion/hn;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/beizi/fusion/hn$a;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/hn$a;-><init>(Lcom/beizi/fusion/hn;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 7
    iget-object p1, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/hn;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public c(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
