.class Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/InterstitialAd$InterstitialAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->showAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    const-string v0, "MimoInterstitialAd"

    .line 2
    .line 3
    const-string v1, "send onAdClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->setClick()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    const-string v0, "MimoInterstitialAd"

    .line 2
    .line 3
    const-string v1, "send onAdClosed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    const-string v0, "MimoInterstitialAd"

    .line 2
    .line 3
    const-string v1, "send onAdShow"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onRenderFail(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 24
    .line 25
    invoke-interface {v0, p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "onRenderFail, code: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ", msg: "

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "MimoInterstitialAd"

    .line 54
    .line 55
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onVideoEnd()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
