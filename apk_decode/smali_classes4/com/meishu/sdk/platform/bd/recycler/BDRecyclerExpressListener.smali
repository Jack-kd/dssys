.class public Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BDRecyclerExpressListen"


# instance fields
.field private adNativeWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/ExpressResponse;",
            ">;"
        }
    .end annotation
.end field

.field private loadListener:Lcom/meishu/sdk/core/ad/recycler/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;Lcom/meishu/sdk/core/ad/recycler/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->adNativeWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->adNativeWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;)Lcom/meishu/sdk/core/ad/recycler/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/ExpressResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;)V
    .locals 0

    .line 2
    const-string p1, "BDRecyclerExpressListen"

    const-string p2, "onNativeFail: "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/ExpressResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->list:Ljava/util/List;

    .line 2
    .line 3
    const-string v0, "BDRecyclerExpressListen"

    .line 4
    .line 5
    const-string v1, "onNativeLoad: "

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 38
    .line 39
    new-instance v2, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->adNativeWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 42
    .line 43
    invoke-direct {v2, v3, v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;Lcom/baidu/mobads/sdk/api/ExpressResponse;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;

    .line 47
    .line 48
    invoke-direct {v3, p0, v2}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$1;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v3}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setInteractionListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressInteractionListener;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;

    .line 55
    .line 56
    invoke-direct {v3, p0, v2, v1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener$2;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressAd;Lcom/baidu/mobads/sdk/api/ExpressResponse;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v3}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdDislikeListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->render()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 72
    .line 73
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 1

    .line 5
    :try_start_0
    const-string p1, "BDRecyclerExpressListen"

    const-string v0, "onNoAd: "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 6
    const-string p1, "exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->adNativeWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 0

    .line 1
    :try_start_0
    const-string p1, "BDRecyclerExpressListen"

    const-string p3, "onNoAd: "

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 2
    const-string p1, "exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->adNativeWrapper:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerExpressListener;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 0

    return-void
.end method
