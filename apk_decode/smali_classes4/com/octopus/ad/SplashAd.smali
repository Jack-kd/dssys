.class public final Lcom/octopus/ad/SplashAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/AdLifeControl;
.implements Lcom/octopus/ad/IBidding;


# instance fields
.field private final a:Lcom/octopus/ad/internal/e/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/octopus/ad/SplashAdListener;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 3
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/octopus/ad/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/octopus/ad/SplashAdListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/octopus/ad/SplashAdListener;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object p1

    .line 6
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/e/g;

    invoke-direct {v0, p1, p3, p5}, Lcom/octopus/ad/internal/e/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 7
    invoke-virtual {v0, p4}, Lcom/octopus/ad/internal/e/a;->setSplashAdListener(Lcom/octopus/ad/SplashAdListener;)V

    .line 8
    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/e/a;->setAdSlotId(Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/octopus/ad/AdRequest$Builder;

    invoke-direct {p1}, Lcom/octopus/ad/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/octopus/ad/AdRequest$Builder;->build()Lcom/octopus/ad/AdRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/AdRequest;->a()Lcom/octopus/ad/internal/b/a$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/g;->a(Lcom/octopus/ad/internal/b/a$a;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/SplashAdListener;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v3, 0x0

    .line 1
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/octopus/ad/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/octopus/ad/SplashAdListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/SplashAdListener;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/octopus/ad/SplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/octopus/ad/SplashAdListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/SplashAd;)Lcom/octopus/ad/internal/e/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/SplashAd;->onDestroyLifeCycle()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/SplashAd;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAdSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdSlotId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 11
    .line 12
    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getPrice()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getRequestId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getShakeValue()Lcom/octopus/ad/model/ShakeValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getShakeValue()Lcom/octopus/ad/model/ShakeValue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getTagId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/SplashAd;->isLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public onCreateLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->onCreateLifeCycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->onDestroyLifeCycle()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->onPauseLifeCycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->onRestartLifeCycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->onResumeLifeCycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStartLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->onStartLifeCycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStopLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->onStopLifeCycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public openAdInNativeBrowser(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/e/a;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public sendWinNotice(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->sendWinNotice(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAdSlotId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setAdSlotId(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setChannel(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCountDownTime(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setCountDownTime(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnCpaListener(Lcom/octopus/ad/listener/OnCpaListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setOnCpaListener(Lcom/octopus/ad/listener/OnCpaListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOnSensorListener(Lcom/octopus/ad/OnSensorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setOnSensorListener(Lcom/octopus/ad/OnSensorListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setRequestId(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoStateListener(Lcom/octopus/ad/internal/video/VideoStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/SplashAd;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setVideoStateListener(Lcom/octopus/ad/internal/video/VideoStateListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public showAd()V
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/SplashAd$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/SplashAd$1;-><init>(Lcom/octopus/ad/SplashAd;)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/octopus/ad/SplashAd$2;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/SplashAd$2;-><init>(Lcom/octopus/ad/SplashAd;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
