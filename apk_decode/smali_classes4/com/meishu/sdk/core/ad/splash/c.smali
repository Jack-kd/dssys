.class public abstract Lcom/meishu/sdk/core/ad/splash/c;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/splash/ISplashAd;


# instance fields
.field public adContainer:Landroid/view/ViewGroup;

.field private adWrapper:Lcom/meishu/sdk/core/loader/d;

.field public downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

.field private finishingTouchListener:Lcom/meishu/sdk/core/ad/splash/b;

.field public height:Ljava/lang/Integer;

.field private isFinishingTouch:Z

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/splash/c;->height:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsFinishingTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/c;->isFinishingTouch:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSplashFinishingTouchListener()Lcom/meishu/sdk/core/ad/splash/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/splash/c;->finishingTouchListener:Lcom/meishu/sdk/core/ad/splash/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/splash/c;->width:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->adContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadDialogListener(Lcom/meishu/sdk/core/ad/splash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->downloadDialogListener:Lcom/meishu/sdk/core/ad/splash/a;

    .line 2
    .line 3
    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->height:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setIsFinishingTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->isFinishingTouch:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSplashFinishingTouchListener(Lcom/meishu/sdk/core/ad/splash/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->finishingTouchListener:Lcom/meishu/sdk/core/ad/splash/b;

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->width:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/splash/c;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public splashAnimationFinish()V
    .locals 0

    return-void
.end method
