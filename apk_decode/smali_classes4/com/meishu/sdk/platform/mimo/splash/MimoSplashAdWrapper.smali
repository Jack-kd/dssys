.class public Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoSplashAdWrapper"


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public loadAd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "KEY_AUTO_SHOW"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 28
    .line 29
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;-><init>(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 61
    .line 62
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lcom/miui/zeus/mimo/sdk/SplashAd;

    .line 69
    .line 70
    invoke-direct {v2}, Lcom/miui/zeus/mimo/sdk/SplashAd;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;

    .line 89
    .line 90
    invoke-direct {v4, p0, v0}, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/zeus/mimo/sdk/SplashAd;->loadAndShow(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/miui/zeus/mimo/sdk/SplashAd$SplashAdListener;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
