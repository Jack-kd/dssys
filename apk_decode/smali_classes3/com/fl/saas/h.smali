.class public abstract Lcom/fl/saas/h;
.super Lcom/fl/saas/o;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->setContext(Landroid/content/Context;)Lcom/fl/saas/n;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/h;->a:Z

    invoke-virtual {p0}, Lcom/fl/saas/n;->reportRequestShow()V

    invoke-virtual {p0}, Lcom/fl/saas/h;->e()V

    return-void
.end method

.method public b()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/fl/saas/h;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v3

    iget v3, v3, Lcom/fl/saas/j;->D1:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-boolean v3, p0, Lcom/fl/saas/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v0
.end method

.method public c()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/fl/saas/j;->d:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Lcom/fl/saas/j;->d:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Lcom/fl/saas/j;->c:I

    .line 23
    .line 24
    :goto_0
    int-to-double v0, v0

    .line 25
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    instance-of v3, v2, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    check-cast v2, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 34
    .line 35
    invoke-interface {v2, v0, v1}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onVideoReward(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onVideoCompleted()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public abstract e()V
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/h;->a:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fl/saas/n;->reportRequestShow()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fl/saas/h;->e()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onClickedEvent()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->onClickedEvent()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onAdClick(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onClosedEvent()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onAdClose()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onLoadedEvent()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/h;->a:Z

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/fl/saas/h;->b:J

    .line 9
    .line 10
    invoke-super {p0}, Lcom/fl/saas/n;->onLoadedEvent()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onShowEvent()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/h;->a:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/fl/saas/n;->onShowEvent()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onAdShow()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->showAd()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fl/saas/o;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerVideoListener;->onVideoPrepared()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
