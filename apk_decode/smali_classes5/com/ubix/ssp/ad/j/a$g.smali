.class Lcom/ubix/ssp/ad/j/a$g;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/j/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/a$g;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$g;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/j/a;->f(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/j/a$l;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$g;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$g;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/j/a;->g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
