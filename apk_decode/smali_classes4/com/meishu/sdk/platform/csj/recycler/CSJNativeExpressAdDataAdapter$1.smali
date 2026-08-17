.class Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;->setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

.field public final synthetic val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClickRetry()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoAdComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoCompleted()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdContinuePlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdPaused()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoAdStartPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoError(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u9519\u8bef\u4fe1\u606f "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoError(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onVideoLoad()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJNativeExpressAdDataAdapter$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoLoaded()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
