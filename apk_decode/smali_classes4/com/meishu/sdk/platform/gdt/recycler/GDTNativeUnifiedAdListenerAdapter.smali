.class public Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTNativeUnifiedAdListenerAdapter"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->list:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 54
    .line 55
    invoke-direct {v2, v3, v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdData;-><init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 71
    .line 72
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void

    .line 87
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "GDTNativeUnifiedAdListenerAdapter"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onNoAD, code: "

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
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, p1, v1}, Lcom/meishu/sdk/platform/gdt/GDTPlatformError;-><init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->adWrapper:Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
