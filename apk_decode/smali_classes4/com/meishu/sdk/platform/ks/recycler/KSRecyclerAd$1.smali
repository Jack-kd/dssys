.class Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoPlayComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$100(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/kwad/sdk/api/KsNativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->reportAdVideoPlayEnd()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoCompleted()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onVideoPlayError "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " "

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "KSRecyclerAd"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoError()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public onVideoPlayPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoPause()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayReady()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoLoaded()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoResume()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onVideoPlayStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$100(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/kwad/sdk/api/KsNativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->reportAdVideoPlayStart()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoStart()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
