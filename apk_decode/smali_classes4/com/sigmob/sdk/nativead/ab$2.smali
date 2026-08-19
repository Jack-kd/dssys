.class Lcom/sigmob/sdk/nativead/ab$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/nativead/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/ab;->b(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

.field final synthetic b:Lcom/sigmob/sdk/nativead/t;

.field final synthetic c:Lcom/sigmob/sdk/nativead/ab;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/ab;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;Lcom/sigmob/sdk/nativead/t;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/ab$2;->a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

    iput-object p3, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "video_restart"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(JJ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v1}, Lcom/sigmob/sdk/nativead/t;->j()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->end_time:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/i;->a(JJ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/videoAd/d;

    iget-object p3, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {p3}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p3

    invoke-virtual {p2}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->j()I

    move-result v0

    invoke-interface {p3, p4, v0}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/czhj/sdk/common/track/AdTracker;->setTracked()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onVideoCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v1}, Lcom/sigmob/sdk/nativead/t;->e()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->end_time:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_last:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v1}, Lcom/sigmob/sdk/nativead/t;->j()I

    move-result v1

    const-string v2, "complete"

    invoke-interface {v0, v2, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "video_link"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/nativead/ab;->b(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;Z)Z

    return-void
.end method

.method public onVideoError(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->b(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoError(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public onVideoLoad()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoLoad()V

    return-void
.end method

.method public onVideoPause()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoPause()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->b(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "video_pause"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "video_link"

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onVideoResume()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoResume()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->b(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->type:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_first:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v2}, Lcom/sigmob/sdk/nativead/t;->j()I

    move-result v2

    iput v2, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->begin_time:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v1}, Lcom/sigmob/sdk/nativead/t;->j()I

    move-result v1

    const-string v2, "video_start"

    invoke-interface {v0, v2, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onVideoStart()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v1, v1, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setAdSize(II)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/ab$2;->b:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v1}, Lcom/sigmob/sdk/nativead/t;->e()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->video_time:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_first:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_last:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iput v2, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->end_time:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v3}, Lcom/sigmob/sdk/nativead/ab;->y()Lcom/sigmob/sdk/nativead/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/nativead/e;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    iput v3, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_auto_play:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->b(Lcom/sigmob/sdk/nativead/ab;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iput v3, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->scene:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->scene:I

    :goto_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/ab;->c(Lcom/sigmob/sdk/nativead/ab;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iput v1, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->type:I

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/nativead/ab;->c(Lcom/sigmob/sdk/nativead/ab;Z)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    iget-object v0, v0, Lcom/sigmob/sdk/nativead/ab;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object v0

    iput v3, v0, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->type:I

    :goto_2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->a:Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/nativead/ab;->a(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/nativead/ab;->b(Lcom/sigmob/sdk/nativead/ab;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/ab$2;->c:Lcom/sigmob/sdk/nativead/ab;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/ab;->j()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    const-string v1, "video_start"

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void
.end method
