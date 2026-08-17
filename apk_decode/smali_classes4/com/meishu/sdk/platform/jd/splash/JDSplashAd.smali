.class public Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

.field private container:Landroid/view/ViewGroup;

.field private showed:Z

.field private splashAd:Lcom/jd/ad/sdk/splash/JADSplash;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    const-string v0, "JD"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->adWrapper:Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->container:Landroid/view/ViewGroup;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getSplashAd()Lcom/jd/ad/sdk/splash/JADSplash;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->splashAd:Lcom/jd/ad/sdk/splash/JADSplash;

    .line 2
    .line 3
    return-object v0
.end method

.method public setSplashAD(Lcom/jd/ad/sdk/splash/JADSplash;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->splashAd:Lcom/jd/ad/sdk/splash/JADSplash;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->showed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->showed:Z

    .line 16
    .line 17
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
