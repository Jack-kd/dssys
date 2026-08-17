.class public Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BDSplashAd"


# instance fields
.field private adContainer:Landroid/view/ViewGroup;

.field private autoShow:Z

.field private bdSplashAdLoader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

.field private sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

.field private showed:Z

.field private splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;


# direct methods
.method public constructor <init>(ZLandroid/view/ViewGroup;Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)V
    .locals 1

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    invoke-direct {p0, p3, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->autoShow:Z

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->adContainer:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->bdSplashAdLoader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public finishAndJump(Landroid/content/Intent;Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$1;-><init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;Lcom/meishu/sdk/platform/bd/splash/BDSplashAd$OnFinishJumpListener;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobads/sdk/api/SplashAd;->finishAndJump(Landroid/content/Intent;Lcom/baidu/mobads/sdk/api/SplashAd$OnFinishListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getSplashAd()Lcom/baidu/mobads/sdk/api/SplashAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public setSplashAD(Lcom/baidu/mobads/sdk/api/SplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->showed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->splashAd:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/SplashAd;->show(Landroid/view/ViewGroup;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->showed:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->bdSplashAdLoader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAd;->bdSplashAdLoader:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->showAd(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 45
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
