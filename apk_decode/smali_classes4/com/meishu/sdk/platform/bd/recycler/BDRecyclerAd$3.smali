.class Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

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
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$200(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$200(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 24
    .line 25
    const-string v1, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onVideoMute()V
    .locals 0

    return-void
.end method

.method public onVideoOneHalf()V
    .locals 0

    return-void
.end method

.method public onVideoOneQuarter()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoReplay()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$3;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onVideoThreeQuarter()V
    .locals 0

    return-void
.end method

.method public onVideoUnmute()V
    .locals 0

    return-void
.end method
