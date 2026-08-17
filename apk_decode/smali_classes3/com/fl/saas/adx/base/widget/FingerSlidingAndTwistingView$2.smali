.class Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$2;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$2;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$400(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
