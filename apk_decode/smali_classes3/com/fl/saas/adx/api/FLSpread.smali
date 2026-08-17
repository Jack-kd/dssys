.class public Lcom/fl/saas/adx/api/FLSpread;
.super Lcom/fl/saas/adx/base/base/BaseAPI;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fl/saas/adx/base/annotation/API;
    value = .enum Lcom/fl/saas/adx/base/bean/AdType;->Spread:Lcom/fl/saas/adx/base/bean/AdType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/api/FLSpread$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/BaseAPI<",
        "Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder<",
        "*>;",
        "Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseAPI;-><init>(Lcom/fl/saas/adx/base/base/BaseBuilder;)V

    return-void
.end method


# virtual methods
.method public requestSpread()V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/BaseAPI;->request()V

    return-void
.end method
