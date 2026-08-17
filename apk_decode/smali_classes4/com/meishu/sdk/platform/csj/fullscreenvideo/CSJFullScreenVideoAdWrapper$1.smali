.class Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

.field public final synthetic val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

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

.method public onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$1;-><init>(Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->setTTFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;-><init>(Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onFullScreenVideoCached()V
    .locals 0

    .line 1
    return-void
.end method

.method public onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 0

    .line 2
    return-void
.end method
