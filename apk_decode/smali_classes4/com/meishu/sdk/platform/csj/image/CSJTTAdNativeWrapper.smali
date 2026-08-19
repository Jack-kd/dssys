.class public Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adListener:Lcom/meishu/sdk/core/ad/image/b;

.field private posId:Ljava/lang/String;

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/meishu/sdk/core/ad/image/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;->posId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;->adListener:Lcom/meishu/sdk/core/ad/image/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;->posId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v2, 0x258

    .line 18
    .line 19
    const/16 v3, 0x101

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 38
    .line 39
    new-instance v2, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;->adListener:Lcom/meishu/sdk/core/ad/image/b;

    .line 42
    .line 43
    invoke-direct {v2, p0, v3}, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;-><init>(Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;Lcom/meishu/sdk/core/ad/image/b;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
