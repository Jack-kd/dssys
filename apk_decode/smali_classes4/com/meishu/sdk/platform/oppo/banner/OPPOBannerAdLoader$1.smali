.class Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/msp/mobad/api/listener/IBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

.field public final synthetic val$bannerAd:Lcom/heytap/msp/mobad/api/ad/BannerAd;

.field public final synthetic val$oppoBannerAd:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;Lcom/heytap/msp/mobad/api/ad/BannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$oppoBannerAd:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$bannerAd:Lcom/heytap/msp/mobad/api/ad/BannerAd;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;->access$000()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "send onAdClick"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$oppoBannerAd:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;

    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$oppoBannerAd:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$oppoBannerAd:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdFailed(ILjava/lang/String;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/banner/b;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onAdReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$oppoBannerAd:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$bannerAd:Lcom/heytap/msp/mobad/api/ad/BannerAd;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/heytap/msp/mobad/api/ad/BannerAd;->getAdView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 13
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->val$oppoBannerAd:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
