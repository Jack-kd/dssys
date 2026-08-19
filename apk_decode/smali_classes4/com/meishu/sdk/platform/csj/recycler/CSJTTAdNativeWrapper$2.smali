.class Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->loadMediationExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$800(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onFeedAdLoad(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;->isExpress()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    new-instance v3, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 47
    .line 48
    invoke-direct {v3, v4, v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v4, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;

    .line 55
    .line 56
    invoke-direct {v4, p0, v3, v2, v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v4}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setExpressRenderListener(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->render()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 75
    .line 76
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method
