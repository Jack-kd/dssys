.class public Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BDAdInteractionListener"


# instance fields
.field private adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

.field private bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

.field private recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/a;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public adActReward(I)V
    .locals 0

    return-void
.end method

.method public adActRewardSuccess()V
    .locals 0

    return-void
.end method

.method public onADExposed()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->isHasExposed()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->setHasExposed(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onADExposureFailed(I)V
    .locals 0

    return-void
.end method

.method public onADStatusChanged()V
    .locals 0

    return-void
.end method

.method public onAdClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

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
    const-string v0, "BDAdInteractionListener"

    .line 26
    .line 27
    const-string v1, "send onClick"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDAdInteractionListener;->adData:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_1
    return-void

    .line 109
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public onAdUnionClick()V
    .locals 0

    return-void
.end method
