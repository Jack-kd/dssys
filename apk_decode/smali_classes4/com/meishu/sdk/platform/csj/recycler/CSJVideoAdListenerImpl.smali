.class public Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJVideoAdListenerImpl"


# instance fields
.field private meishuRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;->meishuRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;->meishuRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoCompleted()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 1

    .line 1
    const-string p1, "CSJVideoAdListenerImpl"

    .line 2
    .line 3
    const-string v0, "onVideoAdContinuePlay: "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;->meishuRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;->meishuRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoError(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;->meishuRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoError()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;->meishuRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoLoaded()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
