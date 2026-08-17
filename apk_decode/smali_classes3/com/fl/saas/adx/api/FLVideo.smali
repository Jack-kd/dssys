.class public Lcom/fl/saas/adx/api/FLVideo;
.super Lcom/fl/saas/adx/base/base/BaseAPI;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fl/saas/adx/base/annotation/API;
    value = .enum Lcom/fl/saas/adx/base/bean/AdType;->RewardVideo:Lcom/fl/saas/adx/base/bean/AdType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/api/FLVideo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/BaseAPI<",
        "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder<",
        "*>;",
        "Lcom/fl/saas/adx/base/manager/AdViewVideoManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerVideoBuilder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseAPI;-><init>(Lcom/fl/saas/adx/base/base/BaseBuilder;)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestRewardVideo()V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/BaseAPI;->request()V

    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->show()V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/manager/AdViewVideoManager;->show(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method
