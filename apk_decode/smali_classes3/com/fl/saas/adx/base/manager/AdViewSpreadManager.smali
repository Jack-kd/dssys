.class public Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;
.super Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager<",
        "Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder<",
        "*>;",
        "Lcom/fl/saas/g;",
        "Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/fl/saas/adx/base/bean/AdType;->Spread:Lcom/fl/saas/adx/base/bean/AdType;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;-><init>(Lcom/fl/saas/adx/base/bean/AdType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic initProxyEventListener(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    move-result-object p1

    return-object p1
.end method

.method public initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder<",
            "*>;)",
            "Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;

    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/manager/AdViewSpreadManager$1;-><init>(Lcom/fl/saas/adx/base/manager/AdViewSpreadManager;Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;)V

    return-object v0
.end method
