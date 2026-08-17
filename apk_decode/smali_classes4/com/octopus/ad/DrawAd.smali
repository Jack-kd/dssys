.class public final Lcom/octopus/ad/DrawAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/AdLifeControl;
.implements Lcom/octopus/ad/IBidding;


# instance fields
.field private final a:Lcom/octopus/ad/internal/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/DrawAdListener;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/octopus/ad/DrawAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/NativeAdListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/NativeAdListener;Ljava/lang/String;)V
    .locals 2
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
    new-instance v0, Lcom/octopus/ad/internal/b/c;

    sget-object v1, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    invoke-direct {v0, p1, p2, v1, p4}, Lcom/octopus/ad/internal/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/internal/p;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 5
    invoke-virtual {v0, p3}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/NativeAdListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/octopus/ad/internal/b/c;->b:Lcom/octopus/ad/internal/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/DrawAd;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAdSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

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
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->e()I

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
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->i()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

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
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->f()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->g()Z

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
    invoke-virtual {p0}, Lcom/octopus/ad/DrawAd;->isLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/c;->h()Z

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

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/octopus/ad/AdRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/AdRequest$Builder;->build()Lcom/octopus/ad/AdRequest;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/AdRequest;->a()Lcom/octopus/ad/internal/b/a$a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/a$a;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onCreateLifeCycle()V
    .locals 0

    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 0

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
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/c;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/b/c;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public sendWinNotice(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/c;->sendWinNotice(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAdSlotId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/c;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/DrawAd;->a:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
