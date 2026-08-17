.class Lcom/ubix/ssp/ad/i/e/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/e/a;->n()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/ubix/ssp/ad/i/e/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/e/a;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$c;->b:Lcom/ubix/ssp/ad/i/e/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/e/a$c;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$c;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$c;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$c;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$c;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$c;->b:Lcom/ubix/ssp/ad/i/e/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/i/e/a;->a(Lcom/ubix/ssp/ad/i/e/a;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    :cond_2
    const-string p1, "startShakeAnim shifangle"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
