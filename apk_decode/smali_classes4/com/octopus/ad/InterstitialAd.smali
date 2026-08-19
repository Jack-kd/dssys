.class public final Lcom/octopus/ad/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/AdLifeControl;
.implements Lcom/octopus/ad/IBidding;


# instance fields
.field private final a:Lcom/octopus/ad/internal/e/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/InterstitialAdListener;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/octopus/ad/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/InterstitialAdListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/InterstitialAdListener;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/e/f;

    sget-object v1, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p4}, Lcom/octopus/ad/internal/e/f;-><init>(Landroid/content/Context;Lcom/octopus/ad/internal/p;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 5
    invoke-virtual {v0, p2}, Lcom/octopus/ad/internal/e/a;->setAdSlotId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/octopus/ad/internal/e/a;->setInterstitialAdListener(Lcom/octopus/ad/InterstitialAdListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/InterstitialAd;->onDestroyLifeCycle()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/octopus/ad/InterstitialAd;->cancel()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getAdSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getPrice()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getTagId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    invoke-virtual {p0}, Lcom/octopus/ad/InterstitialAd;->isLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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

.method public loadAd()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    new-instance v0, Lcom/octopus/ad/AdRequest$Builder;

    invoke-direct {v0}, Lcom/octopus/ad/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/octopus/ad/AdRequest$Builder;->build()Lcom/octopus/ad/AdRequest;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {v0}, Lcom/octopus/ad/AdRequest;->a()Lcom/octopus/ad/internal/b/a$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/e/f;->a(Lcom/octopus/ad/internal/b/a$a;)Z

    return-void
.end method

.method public loadAd(Lcom/octopus/ad/AdRequest;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    invoke-virtual {p1}, Lcom/octopus/ad/AdRequest;->a()Lcom/octopus/ad/internal/b/a$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/f;->a(Lcom/octopus/ad/internal/b/a$a;)Z

    return-void
.end method

.method public onCreateLifeCycle()V
    .locals 0

    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/f;->onDestroyLifeCycle()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 0

    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStopLifeCycle()V
    .locals 0

    return-void
.end method

.method public openAdInNativeBrowser(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setOpensNativeBrowser(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setChannel(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setClickBackClose(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/a;->setClickBackClose(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnCpaListener(Lcom/octopus/ad/listener/OnCpaListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

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

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/InterstitialAd;->a:Lcom/octopus/ad/internal/e/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/e/f;->a(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
