.class public Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;",
        "Lcom/meishu/sdk/core/ad/recycler/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJTTAdNativeWrapper"


# instance fields
.field private listener:Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->getTtAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/MeishuAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->listener:Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;)Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->listener:Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->loadMediationExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadMediationExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->listener:Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;->destroy()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->listener:Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    return-object v0
.end method

.method public loadAd()V
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 4
    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
