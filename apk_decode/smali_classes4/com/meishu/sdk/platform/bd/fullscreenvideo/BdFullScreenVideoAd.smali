.class public Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;
.super Lcom/meishu/sdk/core/ad/fullscreenvideo/b;
.source "SourceFile"


# instance fields
.field private mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

.field private mFullScreenVideoAd:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;)V
    .locals 1

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;->mFullScreenVideoAd:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;->mFullScreenVideoAd:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->show()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/fullscreenvideo/BdFullScreenVideoAd;->mFullScreenVideoAd:Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FullScreenVideoAd;->show()V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd(Landroid/app/Activity;)V

    return-void
.end method
