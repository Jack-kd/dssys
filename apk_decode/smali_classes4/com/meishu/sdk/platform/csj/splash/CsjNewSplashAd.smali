.class public Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/core/loader/d;

.field private showed:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 0

    .line 1
    const-string p2, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;->showed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;->showed:Z

    .line 20
    .line 21
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 51
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
