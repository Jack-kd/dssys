.class public Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;
.super Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager<",
        "Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder<",
        "*>;",
        "Lcom/fl/saas/e;",
        "Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/bean/AdType;->Interstitial:Lcom/fl/saas/adx/base/bean/AdType;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;-><init>(Lcom/fl/saas/adx/base/bean/AdType;)V

    return-void
.end method


# virtual methods
.method public initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder<",
            "*>;)",
            "Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;

    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;-><init>(Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;)V

    return-object v0
.end method

.method public bridge synthetic initProxyEventListener(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 0

    .line 2
    check-cast p1, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    move-result-object p1

    return-object p1
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

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getValidAdapter()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/b;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/h;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fl/saas/h;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/h;->f()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/fl/saas/h;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/fl/saas/e;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/fl/saas/e;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/fl/saas/e;->showInterstitialAd(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/fl/saas/g;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/fl/saas/g;

    if-nez p1, :cond_4

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/fl/saas/g;->startActivityShow(Landroid/app/Activity;)V

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget-boolean v0, v0, Lcom/fl/saas/j;->j0:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/fl/saas/J;->b()Lcom/fl/saas/J;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fl/saas/J;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
