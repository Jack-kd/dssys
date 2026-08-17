.class Lcom/ubix/ssp/ad/e/j$b;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/j;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/j;->a(Lcom/ubix/ssp/ad/e/j;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    const/4 v0, 0x0

    iput v0, p1, Lcom/ubix/ssp/ad/e/j;->u:F

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/j;->a(Lcom/ubix/ssp/ad/e/j;F)F

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/j;->a(Lcom/ubix/ssp/ad/e/j;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/j;->b(Lcom/ubix/ssp/ad/e/j;)F

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/j;->c(Lcom/ubix/ssp/ad/e/j;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/j;->a(Lcom/ubix/ssp/ad/e/j;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    iget v1, v1, Lcom/ubix/ssp/ad/e/j;->n:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/j;->d(Lcom/ubix/ssp/ad/e/j;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$b;->a:Lcom/ubix/ssp/ad/e/j;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/j;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
