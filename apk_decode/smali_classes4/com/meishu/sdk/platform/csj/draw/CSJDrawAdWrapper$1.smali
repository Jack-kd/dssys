.class Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;->loadMediationExpressAd(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDrawFeedAdLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 15
    .line 16
    new-instance v0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 19
    .line 20
    invoke-direct {v0, v1, p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;-><init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 49
    .line 50
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :cond_1
    :try_start_0
    const-string p1, "CSJDrawAdWrapper"

    .line 55
    .line 56
    const-string v0, "onError, code: -1, msg: ad list is null"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 62
    .line 63
    const-string v0, "ad list is null"

    .line 64
    .line 65
    const/4 v1, -0x1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {p1, v0, v1, v2}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "CSJDrawAdWrapper"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onError, code: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ", msg: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
