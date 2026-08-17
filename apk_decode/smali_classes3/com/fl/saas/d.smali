.class public abstract Lcom/fl/saas/d;
.super Lcom/fl/saas/o;
.source "SourceFile"


# instance fields
.field private height:I

.field private isBannerReady:Z

.field private responseTime:J

.field private view:Landroid/view/View;

.field private width:I


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

.method private static synthetic a(Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lcom/fl/saas/adx/base/base/listener/InnerBannerListener;->onAdClick(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic b(Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/d;->view:Landroid/view/View;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/base/listener/InnerBannerListener;->onReceived(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/d;->a(Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V

    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/d;Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/d;->b(Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fl/saas/d;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/fl/saas/d;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public isBannerReady()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    iget-wide v3, p0, Lcom/fl/saas/d;->responseTime:J

    .line 7
    .line 8
    sub-long/2addr v1, v3

    .line 9
    const-wide/16 v3, 0x3e8

    .line 10
    .line 11
    div-long/2addr v1, v3

    .line 12
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget v3, v3, Lcom/fl/saas/j;->D1:I

    .line 17
    .line 18
    int-to-long v3, v3

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    move v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v0

    .line 27
    :goto_0
    iget-boolean v3, p0, Lcom/fl/saas/d;->isBannerReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    return v0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return v0
.end method

.method public onClickedEvent()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->onClickedEvent()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fl/saas/P1;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/fl/saas/P1;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->handleListenerEvent(Lcom/fl/saas/B;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onClosedEvent()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/O1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fl/saas/O1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->handleListenerEvent(Lcom/fl/saas/B;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLoadedEvent(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/d;->isBannerReady:Z

    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/fl/saas/d;->responseTime:J

    .line 9
    .line 10
    iput-object p1, p0, Lcom/fl/saas/d;->view:Landroid/view/View;

    .line 11
    .line 12
    invoke-super {p0}, Lcom/fl/saas/n;->onLoadedEvent()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onShowEvent()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->onShowEvent()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/d;->isBannerReady:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fl/saas/n;->reportRequestShow()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/fl/saas/Q1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/fl/saas/Q1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->handleListenerEvent(Lcom/fl/saas/B;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic setBuilder(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/o;
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;

    invoke-virtual {p0, p1}, Lcom/fl/saas/d;->setBuilder(Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;)Lcom/fl/saas/o;

    move-result-object p1

    return-object p1
.end method

.method public setBuilder(Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;)Lcom/fl/saas/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder<",
            "*>;)",
            "Lcom/fl/saas/o;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/fl/saas/o;->setBuilder(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/o;

    new-instance p1, Lcom/fl/saas/M1;

    invoke-direct {p1}, Lcom/fl/saas/M1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/fl/saas/o;->getBuilderFieldOptional(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/fl/saas/d;->width:I

    new-instance p1, Lcom/fl/saas/N1;

    invoke-direct {p1}, Lcom/fl/saas/N1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/fl/saas/o;->getBuilderFieldOptional(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/fl/saas/d;->height:I

    return-object p0
.end method

.method public showAd()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->showAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fl/saas/d;->view:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/fl/saas/L1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/fl/saas/L1;-><init>(Lcom/fl/saas/d;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/fl/saas/o;->handleListenerEvent(Lcom/fl/saas/B;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
