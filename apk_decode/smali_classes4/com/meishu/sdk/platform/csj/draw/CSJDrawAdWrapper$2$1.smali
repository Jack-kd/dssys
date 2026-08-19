.class Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2;->onDrawFeedAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2;

.field public final synthetic val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2;Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->onProgressUpdate(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playCompletion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playRenderingStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoError(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->onVideoError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper$2$1;->val$csjNativeDrawAd:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->onVideoLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
