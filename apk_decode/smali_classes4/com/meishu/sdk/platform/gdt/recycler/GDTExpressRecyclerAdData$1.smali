.class Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeExpressMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;->setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

.field public final synthetic val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;->this$0:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onVideoCached(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoComplete(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoCompleted()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoError(Lcom/qq/e/ads/nativ/NativeExpressADView;Lcom/qq/e/comm/util/AdError;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, v0, p2}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onVideoInit(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoLoading(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoPageClose(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    return-void
.end method

.method public onVideoPause(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoReady(Lcom/qq/e/ads/nativ/NativeExpressADView;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoLoaded()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoStart(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressRecyclerAdData$1;->val$mediaListener:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoStart()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
