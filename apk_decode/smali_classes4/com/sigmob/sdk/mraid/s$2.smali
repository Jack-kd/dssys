.class Lcom/sigmob/sdk/mraid/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/s;->a()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/s;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const-string v0, "adImpression() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;I)I

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    iget-object v0, p1, Lcom/sigmob/sdk/mraid/s;->g:Lcom/sigmob/sdk/base/common/v;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/s;->d(Lcom/sigmob/sdk/mraid/s;)I

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->l()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/v;->a(II)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    :try_start_0
    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "playerHandles"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomLandPageUrl(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/s;->a(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomDeeplink(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/s;->c(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adClickThru() called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v0, "adClickThru"

    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/s$2;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adError() called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "adPlaying() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/s$2;->b:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    const-string v0, "adVideoComplete() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "play_quarter"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    const-string v0, "adVideoFirstQuartile() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "play_three_quarters"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    const-string v0, "adVideoThirdQuartile() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "play_two_quarters"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    const-string v0, "adVideoMidpoint() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "ad_video_start"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/s$2;->a:Lcom/sigmob/sdk/mraid/s;

    const-string v1, "action.rewardedvideo.play"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/s;->b(Lcom/sigmob/sdk/mraid/s;Ljava/lang/String;)V

    const-string v0, "adVideoStart() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
