.class Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->onProgressUpdate(JJ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playCompletion()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playResume()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playPause()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playRenderingStart()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoError(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->onVideoError(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$3;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->onVideoLoad()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
