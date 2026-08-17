.class public Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

.field private adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

.field private meishuInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CSJAdInteractionListenerAdapter"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->meishuInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "CSJAdInteractionListenerAdapter"

    .line 30
    .line 31
    const-string p2, "send onAdClicked"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 65
    .line 66
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->meishuInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void

    .line 111
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGmShowEcpm(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_2
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->isHasExposed()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->setHasExposed(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;->meishuInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_3
    return-void
.end method
