.class Lcom/ubix/ssp/ad/i/e/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/e/a;->o()Landroid/view/animation/Animation;
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$e;->b:Lcom/ubix/ssp/ad/i/e/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/e/a$e;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$e;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$e;->b:Lcom/ubix/ssp/ad/i/e/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;Z)Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$e;->b:Lcom/ubix/ssp/ad/i/e/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;Z)Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$e;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$e;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/e/a;->b(Lcom/ubix/ssp/ad/i/e/a;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$e;->b:Lcom/ubix/ssp/ad/i/e/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/i/e/a;->a(Lcom/ubix/ssp/ad/i/e/a;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
