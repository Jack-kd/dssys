.class public Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;
.super Lcom/meishu/sdk/core/ad/fullscreenvideo/b;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

.field private mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

.field private ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->adWrapper:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTTFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->adWrapper:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->adWrapper:Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAdWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/fullscreenvideo/CSJFullScreenVideoAd;->ttFullScreenVideoAd:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd(Landroid/app/Activity;)V

    return-void
.end method
