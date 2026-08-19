.class Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/msp/mobad/api/listener/IInterstitialVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->loadVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

.field public final synthetic val$oppoFullScreenVideoAd:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->val$oppoFullScreenVideoAd:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->val$oppoFullScreenVideoAd:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->access$100(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdFailed(ILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;->access$000(Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;ILjava/lang/String;)V

    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public onAdReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->val$oppoFullScreenVideoAd:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/fullscreenvideo/c;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onVideoPlayComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->val$oppoFullScreenVideoAd:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAdLoader$1;->val$oppoFullScreenVideoAd:Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;->onVideoCompleted()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
