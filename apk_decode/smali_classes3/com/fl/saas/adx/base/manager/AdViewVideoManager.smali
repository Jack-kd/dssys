.class public Lcom/fl/saas/adx/base/manager/AdViewVideoManager;
.super Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager<",
        "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder<",
        "*>;",
        "Lcom/fl/saas/h;",
        "Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;",
        ">;"
    }
.end annotation


# instance fields
.field private isRequestAd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/bean/AdType;->RewardVideo:Lcom/fl/saas/adx/base/bean/AdType;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;-><init>(Lcom/fl/saas/adx/base/bean/AdType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->isRequestAd:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->isServerVerifyShowLoad()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->isServerVerify()Z

    move-result p0

    return p0
.end method

.method private isServerVerify()Z
    .locals 1

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/fl/saas/j;->p0:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isServerVerifyShowLoad()Z
    .locals 3

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/fl/saas/j;->q0:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public bridge synthetic initProxyEventListener(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    move-result-object p1

    return-object p1
.end method

.method public initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder<",
            "*>;)",
            "Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;->getCheckListener()Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager$1;-><init>(Lcom/fl/saas/adx/base/manager/AdViewVideoManager;Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;Lcom/fl/saas/adx/base/interfaces/AdViewVideoListener;Lcom/fl/saas/adx/base/interfaces/AdViewVideoCheckListener;)V

    return-object v2
.end method

.method public isReady()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/h;

    invoke-virtual {v0}, Lcom/fl/saas/h;->b()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/fl/saas/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fl/saas/e;

    invoke-virtual {v0}, Lcom/fl/saas/e;->isIntersReady()Z

    move-result v0

    return v0

    :cond_1
    instance-of v1, v0, Lcom/fl/saas/g;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/fl/saas/g;

    invoke-virtual {v0}, Lcom/fl/saas/g;->isAdReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic request(Lcom/fl/saas/adx/base/base/BaseBuilder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->request(Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;)V

    return-void
.end method

.method public request(Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->request(Lcom/fl/saas/adx/base/base/BaseBuilder;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->isRequestAd:Z

    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->isRequestAd:Z

    const/16 v1, 0x4fba

    const-string v2, "FLSDK-Video"

    if-nez v0, :cond_0

    const-string p1, "\u8c03\u7528show()\u65b9\u6cd5\u524d\uff0c\u5fc5\u987b\u5148\u8c03\u7528requestAd()\u65b9\u6cd5"

    invoke-static {v2, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/fl/saas/adx/base/exception/FLError;

    const-string v0, "\u672a\u6267\u884crequestAd()\u65b9\u6cd5"

    invoke-direct {p1, v1, v0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u8c03\u7528show()\u65b9\u6cd5\u524d\uff0c\u5fc5\u987b\u5148\u68c0\u67e5isReady()\u72b6\u6001\uff0c\u6216\u8005\u5728onVideoPrepared()\u56de\u8c03\u540e\u8c03\u7528"

    invoke-static {v2, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    invoke-direct {v0, v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/h;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/fl/saas/h;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/fl/saas/h;->b(Landroid/app/Activity;)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/fl/saas/e;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/fl/saas/e;

    if-nez p1, :cond_4

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/fl/saas/e;->showInterstitialAd(Landroid/app/Activity;)V

    return-void

    :cond_5
    instance-of v1, v0, Lcom/fl/saas/g;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/fl/saas/g;

    if-nez p1, :cond_6

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/fl/saas/g;->startActivityShow(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
