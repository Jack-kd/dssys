.class public Lcom/meishu/sdk/core/webview/listener/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/listener/d;


# instance fields
.field public final a:Lcom/meishu/sdk/core/webview/listener/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/listener/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clickAppDownloadInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/webview/listener/d;->clickAppDownloadInfo(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public dismissAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/listener/d;->dismissAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getActivityState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/listener/d;->getActivityState()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/listener/d;->getDeviceInfo()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public isAppBackground()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/listener/d;->isAppBackground()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isSoundsOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/listener/d;->isSoundsOpen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public notifyRewarded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/listener/d;->notifyRewarded()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setShakeOrTurnState(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/webview/listener/d;->setShakeOrTurnState(Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    return p1
.end method

.method public setSoundsOpen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/webview/listener/d;->setSoundsOpen(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoPlayState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/listener/e;->a:Lcom/meishu/sdk/core/webview/listener/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/webview/listener/d;->setVideoPlayState(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
