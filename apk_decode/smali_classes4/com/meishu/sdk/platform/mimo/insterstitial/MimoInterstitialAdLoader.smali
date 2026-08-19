.class public Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;",
        "Lcom/meishu/sdk/core/ad/interstitial/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoInterstitialAdLoader"


# instance fields
.field private nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;)Lcom/miui/zeus/mimo/sdk/InterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;->nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;->nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/zeus/mimo/sdk/InterstitialAd;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

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
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/miui/zeus/mimo/sdk/InterstitialAd;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;->nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader$1;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader$1;-><init>(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/mimo/sdk/InterstitialAd;->loadAd(Ljava/lang/String;Lcom/miui/zeus/mimo/sdk/InterstitialAd$InterstitialAdLoadListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
