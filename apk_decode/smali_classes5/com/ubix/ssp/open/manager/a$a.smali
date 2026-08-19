.class Lcom/ubix/ssp/open/manager/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/open/manager/a;->loadBannerAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

.field final synthetic b:Lcom/ubix/ssp/open/manager/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/manager/a;Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/a$a;->b:Lcom/ubix/ssp/open/manager/a;

    iput-object p2, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdClicked in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;->onAdClicked()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdClicked out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdClosed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;->onAdClosed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdClosed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdExposeFailed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdExposed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;->onAdExposed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdExposed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdLoadFailed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdLoadSucceed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/a$a;->a:Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;->onAdLoadSucceed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/a;->a:Ljava/lang/String;

    const-string v1, "onAdLoadSucceed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
