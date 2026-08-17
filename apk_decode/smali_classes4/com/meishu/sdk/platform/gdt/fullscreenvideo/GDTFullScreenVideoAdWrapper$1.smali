.class Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;->access$000(Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;)Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAd;->getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;->onVideoCompleted()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/gdt/fullscreenvideo/GDTFullScreenVideoAdWrapper;

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
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-interface {v0, v1, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPageClose()V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoReady(J)V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
