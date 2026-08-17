.class public Lcom/meishu/sdk/core/ad/splash/f;
.super Lcom/meishu/sdk/core/loader/b;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/splash/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/core/loader/b<",
        "Lcom/meishu/sdk/core/ad/splash/ISplashAd;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;",
        "Lcom/meishu/sdk/core/ad/splash/d;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/ad/splash/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/loader/b;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAdTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTick(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/b;->b:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
