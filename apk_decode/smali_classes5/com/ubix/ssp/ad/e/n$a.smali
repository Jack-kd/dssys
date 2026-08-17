.class Lcom/ubix/ssp/ad/e/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/n;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/n;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/n$a;->a:Lcom/ubix/ssp/ad/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/n$a;->a:Lcom/ubix/ssp/ad/e/n;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/n;->a(Lcom/ubix/ssp/ad/e/n;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/n$a;->a:Lcom/ubix/ssp/ad/e/n;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/n;->a(Lcom/ubix/ssp/ad/e/n;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
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
