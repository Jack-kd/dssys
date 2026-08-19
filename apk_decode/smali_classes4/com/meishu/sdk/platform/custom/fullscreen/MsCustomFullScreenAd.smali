.class public abstract Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;
.super Lcom/meishu/sdk/core/ad/fullscreenvideo/b;
.source "SourceFile"


# instance fields
.field private fullscreenAdMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;)V
    .locals 1

    .line 1
    const-string v0, "CUSTOM"

    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;-><init>(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAdapter;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMediaListener()Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;->fullscreenAdMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMediaListener(Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/custom/fullscreen/MsCustomFullScreenAd;->fullscreenAdMediaListener:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 2
    .line 3
    return-void
.end method

.method public showAd()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/fullscreenvideo/b;->showAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
