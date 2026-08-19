.class public Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;",
        "Lcom/meishu/sdk/core/ad/fullscreenvideo/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OPPOInterstitialAdLoader"


# instance fields
.field private interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->onFailed(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->onClick(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadVideo()V
    .locals 5

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;-><init>(Lcom/meishu/sdk/core/loader/d;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/app/Activity;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;

    .line 21
    .line 22
    invoke-direct {v4, p0, v0}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;-><init>(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v3, v4}, Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/heytap/msp/mobad/api/listener/IInterstitialVideoAdListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->setInterstitialVideoAd(Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;->loadAd()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private onClick(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "send onAdClick"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method private onFailed(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, " "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x2718

    .line 27
    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;->destroyAd()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->loadVideo()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
