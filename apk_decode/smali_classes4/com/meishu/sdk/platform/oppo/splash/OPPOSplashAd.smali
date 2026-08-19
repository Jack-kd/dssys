.class Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# instance fields
.field private splashAd:Lcom/heytap/msp/mobad/api/ad/SplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;)V
    .locals 1

    .line 1
    const-string v0, "OPPO"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;->splashAd:Lcom/heytap/msp/mobad/api/ad/SplashAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/SplashAd;->destroyAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOPPOSplashAd(Lcom/heytap/msp/mobad/api/ad/SplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;->splashAd:Lcom/heytap/msp/mobad/api/ad/SplashAd;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
