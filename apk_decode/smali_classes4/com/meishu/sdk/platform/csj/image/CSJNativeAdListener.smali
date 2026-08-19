.class public Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJNativeAdListener"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;

.field private meishuAdListener:Lcom/meishu/sdk/core/ad/image/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;Lcom/meishu/sdk/core/ad/image/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;->adWrapper:Lcom/meishu/sdk/platform/csj/image/CSJTTAdNativeWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/image/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdExposure()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/image/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    const-string v1, "CSJNativeAdListener"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/image/b;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onNativeAdLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/image/b;

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
    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 27
    .line 28
    new-instance v2, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;

    .line 29
    .line 30
    invoke-direct {v2, v1, p0}, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;-><init>(Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/image/b;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
