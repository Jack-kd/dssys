.class Lcom/ubix/ssp/open/manager/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/open/manager/f;->loadRewardVideoAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/video/UBiXRewardVideoExtra;Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

.field final synthetic b:Lcom/ubix/ssp/open/manager/f;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/manager/f;Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/f$a;->b:Lcom/ubix/ssp/open/manager/f;

    iput-object p2, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;ILjava/lang/String;Lcom/ubix/ssp/open/AdError;)V
    .locals 8

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoRewardVerify in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/ubix/ssp/open/manager/f$a$a;

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/ubix/ssp/open/manager/f$a$a;-><init>(Lcom/ubix/ssp/open/manager/f$a;Ljava/lang/String;ILjava/lang/String;Lcom/ubix/ssp/open/AdError;)V

    iget-object p2, v3, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {p2, p1, v2}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onVideoRewardVerify(ZLcom/ubix/ssp/open/video/UBiXRewardInfo;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    sget-object p1, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string p2, "onVideoRewardVerify out"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->b:Lcom/ubix/ssp/open/manager/f;

    invoke-static {v0}, Lcom/ubix/ssp/open/manager/f;->a(Lcom/ubix/ssp/open/manager/f;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->b:Lcom/ubix/ssp/open/manager/f;

    invoke-static {v0}, Lcom/ubix/ssp/open/manager/f;->a(Lcom/ubix/ssp/open/manager/f;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onAdClosed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onAdClosed()V

    :cond_1
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onAdClosed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdExposed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onAdExposed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onAdExposed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onAdExposed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadSucceed()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onAdLoadSucceed in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onAdLoadSucceed()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onAdLoadSucceed out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/ubix/ssp/open/AdError;)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onError in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0, p1}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError out: ErrorCode:"

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

.method public onVideoCached()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoCached in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onVideoCached()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoCached out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoClicked()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoClicked in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onVideoClicked()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoClicked out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPlayCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayCompleted in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onVideoPlayCompleted()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayCompleted out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoPlayStarted()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayStarted in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onVideoPlayStarted()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayStarted out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoRewarded()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoRewarded in"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a;->a:Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;

    invoke-interface {v0}, Lcom/ubix/ssp/open/video/UBiXRewardVideoAdListener;->onVideoRewarded()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/open/manager/f;->a:Ljava/lang/String;

    const-string v1, "onVideoRewarded out"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
