.class public Lcom/meishu/sdk/platform/ms/interstitial/b;
.super Lcom/meishu/sdk/platform/ms/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/ms/g<",
        "Lcom/meishu/sdk/meishu_ad/interstitial/b;",
        "Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;",
        "Lcom/meishu/sdk/core/ad/interstitial/b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/meishu/sdk/meishu_ad/v;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Lcom/meishu/sdk/meishu_ad/v;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/interstitial/b;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 5

    .line 1
    const-string v0, "MeishuAdNativeWrapper"

    .line 2
    .line 3
    const-string v1, "loadAd: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/b;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 25
    .line 26
    new-instance v1, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Lcom/meishu/sdk/platform/ms/interstitial/a;-><init>(Lcom/meishu/sdk/platform/ms/interstitial/b;Lcom/meishu/sdk/core/ad/interstitial/b;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 41
    .line 42
    check-cast v2, Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iput-object v3, v0, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    array-length v2, v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    new-instance v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 70
    .line 71
    invoke-direct {v2, p0, v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;-><init>(Lcom/meishu/sdk/platform/ms/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/a;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lcom/meishu/sdk/meishu_ad/e0;

    .line 79
    .line 80
    invoke-direct {v4, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/e0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/interstitial/a;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    const-string v2, "AdNative"

    .line 88
    .line 89
    const-string v3, "empty srcUrls"

    .line 90
    .line 91
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->EMPTY_SRC_URL:Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v0, v1, v3, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    .line 98
    .line 99
    :goto_2
    return-void
.end method
