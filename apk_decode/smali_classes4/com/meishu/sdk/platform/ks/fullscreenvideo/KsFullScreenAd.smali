.class public Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;
.super Lcom/meishu/sdk/core/ad/fullscreenvideo/b;
.source "SourceFile"


# instance fields
.field public adWrapper:Lcom/meishu/sdk/platform/ks/fullscreenvideo/KSFullScreenAdWrapper;

.field private mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

.field public mFullScreenVideoAd:Lcom/kwad/sdk/api/KsFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsFullScreenVideoAd;Lcom/meishu/sdk/platform/ks/fullscreenvideo/KSFullScreenAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->mFullScreenVideoAd:Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->adWrapper:Lcom/meishu/sdk/platform/ks/fullscreenvideo/KSFullScreenAdWrapper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getAdWrapper()Lcom/meishu/sdk/platform/ks/fullscreenvideo/KSFullScreenAdWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->adWrapper:Lcom/meishu/sdk/platform/ks/fullscreenvideo/KSFullScreenAdWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->mFullScreenVideoAd:Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->adWrapper:Lcom/meishu/sdk/platform/ks/fullscreenvideo/KSFullScreenAdWrapper;

    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v2, v0}, Lcom/kwad/sdk/api/KsFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :goto_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/api/KsVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsVideoPlayConfig;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/fullscreenvideo/KsFullScreenAd;->mFullScreenVideoAd:Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    invoke-interface {v1, p1, v0}, Lcom/kwad/sdk/api/KsFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;Lcom/kwad/sdk/api/KsVideoPlayConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :goto_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd(Landroid/app/Activity;)V

    return-void
.end method
