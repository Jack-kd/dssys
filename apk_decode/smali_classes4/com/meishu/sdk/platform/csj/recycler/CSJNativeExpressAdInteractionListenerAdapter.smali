.class public Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJNativeExpressAdInteractionListenerAdapter"


# instance fields
.field private adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

.field private ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

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
    const-string p1, "CSJNativeExpressAdInteractionListenerAdapter"

    .line 30
    .line 31
    const-string p2, "send onAdClicked"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 55
    .line 56
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void

    .line 125
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->isHasExposed()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->setHasExposed(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void

    .line 74
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 1
    :try_start_0
    const-string p1, "CSJNativeExpressAdInteractionListenerAdapter"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onRenderFail: "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, p2, p3}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 1
    :try_start_0
    const-string p1, "CSJNativeExpressAdInteractionListenerAdapter"

    .line 2
    .line 3
    const-string p2, "onRenderSuccess"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;->adData:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
