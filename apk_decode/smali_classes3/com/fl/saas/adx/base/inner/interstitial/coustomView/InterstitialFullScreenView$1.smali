.class Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

.field final synthetic val$videoSoundControlListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;->val$videoSoundControlListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeSystemSound(Z)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->access$102(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;->val$videoSoundControlListener:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;->getSoundEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez p1, :cond_0

    sget p1, Lcom/fl/saas/R$drawable;->fl_adx_volume_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public changeViewVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
