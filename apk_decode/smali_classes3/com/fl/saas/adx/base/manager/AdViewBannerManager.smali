.class public Lcom/fl/saas/adx/base/manager/AdViewBannerManager;
.super Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager<",
        "Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder<",
        "*>;",
        "Lcom/fl/saas/d;",
        "Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;",
        ">;"
    }
.end annotation


# instance fields
.field private bannerView:Landroid/widget/FrameLayout;

.field private hasDestroy:Z

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/bean/AdType;->Banner:Lcom/fl/saas/adx/base/bean/AdType;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;-><init>(Lcom/fl/saas/adx/base/bean/AdType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->hasDestroy:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->bannerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->bannerView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->hasDestroy:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->setRefresh()V

    return-void
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->cancelRefresh()V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->innerAutoRefresh()V

    return-void
.end method

.method private cancelRefresh()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private innerAutoRefresh()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->bannerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->hasDestroy:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->bannerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->bannerView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    sget-object v0, Lcom/fl/saas/adx/base/bean/AdType;->Banner:Lcom/fl/saas/adx/base/bean/AdType;

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->restManagerLoad(Lcom/fl/saas/adx/base/bean/AdType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->cancelRefresh()V

    return-void
.end method

.method private setRefresh()V
    .locals 8

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    instance-of v0, v0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/fl/saas/j;->e0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/fl/saas/j;->f0:I

    if-lez v1, :cond_0

    new-instance v3, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$2;

    invoke-direct {v3, p0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$2;-><init>(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->cancelRefresh()V

    iget v0, v0, Lcom/fl/saas/j;->f0:I

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->mTimer:Ljava/util/Timer;

    move-wide v6, v4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->hasDestroy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->bannerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getValidAdapter()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/a;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->cancelRefresh()V

    invoke-super {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->destroy()V

    return-void
.end method

.method public initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder<",
            "*>;)",
            "Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;-><init>(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V

    return-object v1
.end method

.method public bridge synthetic initProxyEventListener(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/d;

    invoke-virtual {v0}, Lcom/fl/saas/d;->isBannerReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
