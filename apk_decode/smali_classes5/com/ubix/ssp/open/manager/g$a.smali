.class Lcom/ubix/ssp/open/manager/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/open/manager/g;->loadSplashAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

.field final synthetic b:Lcom/ubix/ssp/open/manager/g;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/manager/g;Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/g$a;->b:Lcom/ubix/ssp/open/manager/g;

    iput-object p2, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v0, "onAdClicked in"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {p1}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdClicked()V

    :cond_0
    sget-object p1, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v0, "onAdClicked out"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdClosed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdClosed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdClosed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdExposeFailed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdExposeFailed out: ErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   ErrorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdExposed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdExposed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdExposed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdExposed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdLoadFailed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoadFailed out: ErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   ErrorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadSucceed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdLoadSucceed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdLoadSucceed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdLoadSucceed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdResponseSucceed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdResponseSucceed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdResponseSucceed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdResponseSucceed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdSkipped()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdSkipped in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/g$a;->a:Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;->onAdSkipped()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/g;->a:Ljava/lang/String;

    const-string v1, "onAdSkipped out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
