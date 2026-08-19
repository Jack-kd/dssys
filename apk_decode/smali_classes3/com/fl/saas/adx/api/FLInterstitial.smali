.class public Lcom/fl/saas/adx/api/FLInterstitial;
.super Lcom/fl/saas/adx/base/base/BaseAPI;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fl/saas/adx/base/annotation/API;
    value = .enum Lcom/fl/saas/adx/base/bean/AdType;->Interstitial:Lcom/fl/saas/adx/base/bean/AdType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/api/FLInterstitial$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/BaseAPI<",
        "Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder<",
        "*>;",
        "Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;",
        ">;"
    }
.end annotation


# instance fields
.field private hasShow:Z


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseAPI;-><init>(Lcom/fl/saas/adx/base/base/BaseBuilder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/api/FLInterstitial;->hasShow:Z

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestInterstitial()V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/BaseAPI;->request()V

    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/api/FLInterstitial;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLSDK--hasShow\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/fl/saas/adx/api/FLInterstitial;->hasShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "--activity\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fl/saas/adx/api/FLInterstitial;->hasShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/api/FLInterstitial;->hasShow:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
