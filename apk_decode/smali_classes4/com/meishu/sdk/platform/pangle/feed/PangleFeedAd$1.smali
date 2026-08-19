.class Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd;->bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd;

.field public final synthetic val$nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd$1;->this$0:Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd$1;->val$nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onVideoAdComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd$1;->val$nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoCompleted()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdPaused()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd$1;->val$nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd$1;->val$nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd$1;->val$nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoError()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
