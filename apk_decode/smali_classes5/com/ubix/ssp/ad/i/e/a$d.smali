.class Lcom/ubix/ssp/ad/i/e/a$d;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/e/a;->o()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/i/e/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$d;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$d;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$d;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$d;->a:Lcom/ubix/ssp/ad/i/e/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/i/e/a;->a(Lcom/ubix/ssp/ad/i/e/a;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$d;->a:Lcom/ubix/ssp/ad/i/e/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;Z)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$d;->a:Lcom/ubix/ssp/ad/i/e/a;

    const p2, 0x1f20c1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
