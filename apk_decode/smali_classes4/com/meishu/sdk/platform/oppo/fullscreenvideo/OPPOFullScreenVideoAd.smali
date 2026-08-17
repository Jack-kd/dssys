.class public Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;
.super Lcom/meishu/sdk/core/ad/fullscreenvideo/b;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPPOInterstitialAdLoader"


# instance fields
.field private interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

.field private mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;)V
    .locals 1

    .line 1
    const-string v0, "OPPO"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getInterstitialVideoAd()Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setInterstitialVideoAd(Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    .line 2
    .line 3
    return-void
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->mFullScreenMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;->showAd()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/fullscreenvideo/OPPOFullScreenVideoAd;->interstitialVideoAd:Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;

    invoke-virtual {p1}, Lcom/heytap/msp/mobad/api/ad/InterstitialVideoAd;->showAd()V

    return-void
.end method
