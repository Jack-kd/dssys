.class Lcom/ubix/ssp/ad/e/p$b;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/p;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/p;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/p$b;->a:Lcom/ubix/ssp/ad/e/p;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/p$b;->a:Lcom/ubix/ssp/ad/e/p;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/p;->a(Lcom/ubix/ssp/ad/e/p;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/p$b;->a:Lcom/ubix/ssp/ad/e/p;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/p$b;->a:Lcom/ubix/ssp/ad/e/p;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/p;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
