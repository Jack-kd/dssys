.class public Lcom/anythink/network/toutiao/TTATCustomVideo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/ATCustomVideo;


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public reportVideoAutoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoAutoStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportVideoBreak(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoBreak(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportVideoContinue(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoContinue(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportVideoError(JII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoError(JII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportVideoFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoFinish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportVideoPause(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoPause(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportVideoStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reportVideoStartError(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATCustomVideo;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->reportVideoStartError(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
