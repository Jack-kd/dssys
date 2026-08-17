.class public Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KSSplashAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

.field private hasShown:Z

.field private splashAD:Lcom/kwad/sdk/api/KsSplashScreenAd;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->hasShown:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->view:Landroid/view/View;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->adWrapper:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->adWrapper:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->view:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/splash/c;->downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/splash/c;->downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/splash/c;->downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/splash/c;->downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/splash/c;->downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/splash/c;->downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->adWrapper:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->adWrapper:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setSplashAD(Lcom/kwad/sdk/api/KsSplashScreenAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->splashAD:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->hasShown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->splashAD:Lcom/kwad/sdk/api/KsSplashScreenAd;

    .line 14
    .line 15
    new-instance v2, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;

    .line 16
    .line 17
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/api/KsSplashScreenAd;->getView(Landroid/content/Context;Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->view:Landroid/view/View;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Landroid/app/Activity;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->view:Landroid/view/View;

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->adWrapper:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->adWrapper:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->hasShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
