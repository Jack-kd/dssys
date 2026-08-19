.class Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1$2;->this$1:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper$1;->val$csjFullScreenVideoAd:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
