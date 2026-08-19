.class Lcom/ubix/ssp/ad/e/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/m;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/m;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/m$a;->a:Lcom/ubix/ssp/ad/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/m$a;->a:Lcom/ubix/ssp/ad/e/m;

    iget-boolean v0, p1, Lcom/ubix/ssp/ad/e/m;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/m;->a(Lcom/ubix/ssp/ad/e/m;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/m$a;->a:Lcom/ubix/ssp/ad/e/m;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/m;->a(Lcom/ubix/ssp/ad/e/m;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
