.class Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->createAnimatorSet(Landroid/view/View;F)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->access$510(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)I

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
