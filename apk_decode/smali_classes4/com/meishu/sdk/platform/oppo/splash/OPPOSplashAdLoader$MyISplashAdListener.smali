.class Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/msp/mobad/api/listener/ISplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyISplashAdListener"
.end annotation


# instance fields
.field private oppoSplashAd:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

.field private splashAd:Lcom/heytap/msp/mobad/api/ad/SplashAd;

.field public final synthetic this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

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
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;->access$000()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->oppoSplashAd:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->oppoSplashAd:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->oppoSplashAd:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

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

.method public onAdDismissed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

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
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;->access$000()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->splashAd:Lcom/heytap/msp/mobad/api/ad/SplashAd;

    invoke-virtual {p1}, Lcom/heytap/msp/mobad/api/ad/SplashAd;->destroyAd()V

    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->oppoSplashAd:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->oppoSplashAd:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->this$0:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public setOPPOSplashAd(Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->oppoSplashAd:Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

    .line 2
    .line 3
    return-void
.end method

.method public setSplashAd(Lcom/heytap/msp/mobad/api/ad/SplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->splashAd:Lcom/heytap/msp/mobad/api/ad/SplashAd;

    .line 2
    .line 3
    return-void
.end method
