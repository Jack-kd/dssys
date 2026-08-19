.class public Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTAdInteractionListene"


# instance fields
.field private adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

.field private meishuRecylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->meishuRecylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "GDTAdInteractionListene"

    .line 22
    .line 23
    const-string v1, "send onADClicked"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->meishuRecylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public onADError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "GDTAdInteractionListene"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onADError, code: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", msg: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onADExposed()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->isHasExposed()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->setHasExposed(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->adData:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;->getAdWrapper()Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTAdInteractionListener;->meishuRecylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onADStatusChanged()V
    .locals 0

    return-void
.end method
