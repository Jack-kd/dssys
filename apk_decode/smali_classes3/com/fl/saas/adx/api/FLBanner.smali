.class public Lcom/fl/saas/adx/api/FLBanner;
.super Lcom/fl/saas/adx/base/base/BaseAPI;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fl/saas/adx/base/annotation/API;
    value = .enum Lcom/fl/saas/adx/base/bean/AdType;->Banner:Lcom/fl/saas/adx/base/bean/AdType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/api/FLBanner$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/BaseAPI<",
        "Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder<",
        "*>;",
        "Lcom/fl/saas/adx/base/manager/AdViewBannerManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder<",
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

    check-cast v0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestBanner()V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/BaseAPI;->request()V

    return-void
.end method
