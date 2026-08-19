.class public Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJFeedAdListener"


# instance fields
.field private adNativeWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

.field private recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/meishu/sdk/core/ad/recycler/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 5
    .line 6
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onError, code: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", msg: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "CSJFeedAdListener"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 55
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
    goto :goto_0

    .line 62
    :cond_0
    return-void

    .line 63
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onFeedAdLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 27
    .line 28
    new-instance v2, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 31
    .line 32
    invoke-direct {v2, v3, v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 27
    .line 28
    new-instance v2, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->adNativeWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 31
    .line 32
    invoke-direct {v2, v3, v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;

    .line 36
    .line 37
    invoke-direct {v3, v2, v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdInteractionListenerAdapter;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v3}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->recyclerAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
