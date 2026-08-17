.class public final Lcom/kwad/components/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/kwad/sdk/g/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/g/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->GV()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/kwad/sdk/g/a;->accept(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/kwad/components/core/b$14;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/kwad/components/core/b$14;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/g/a;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/m;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static oD()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->Gu()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method


# virtual methods
.method public final getBidRequestToken(Lcom/kwad/sdk/api/KsScene;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/ad/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/components/ad/b/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/kwad/components/ad/b/b;->getBidRequestToken(Lcom/kwad/sdk/api/KsScene;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const-string p1, ""

    .line 17
    .line 18
    return-object p1
.end method

.method public final getBidRequestTokenV2(Lcom/kwad/sdk/api/KsScene;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/ad/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/components/ad/b/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/kwad/components/ad/b/b;->getBidRequestTokenV2(Lcom/kwad/sdk/api/KsScene;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const-string p1, ""

    .line 17
    .line 18
    return-object p1
.end method

.method public final loadBannerAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/a;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/a;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$7;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$7;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/a;->loadBannerAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$8;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$8;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/d;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/d;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$19;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$19;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/d;->loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$20;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$20;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/c;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/c;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$21;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$21;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/c;->loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$2;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$2;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final loadFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/d;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/d;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$17;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$17;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/d;->loadFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$18;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$18;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final loadFullScreenVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/e;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/e;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$1;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$1;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/e;->loadFullScreenVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$12;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$12;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final loadInterstitialAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/api/KsScene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/f;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/f;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$11;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$11;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/f;->loadInterstitialAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$13;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$13;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    move-result-object v0

    check-cast v0, Lcom/kwad/components/ad/b/g;

    .line 4
    new-instance v1, Lcom/kwad/components/core/b$3;

    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$3;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/g;->loadNativeAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$4;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$4;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public final loadNativeAd(Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/g;

    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    move-result-object v0

    check-cast v0, Lcom/kwad/components/ad/b/g;

    .line 12
    new-instance v1, Lcom/kwad/components/core/b$5;

    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$5;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/g;->loadNativeAd(Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$6;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$6;-><init>(Lcom/kwad/components/core/b;Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 16
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public final loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
    .locals 2
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/h;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/h;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$15;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$15;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/h;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$16;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$16;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
    .locals 2
    .param p1    # Lcom/kwad/sdk/api/KsScene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/b;->oD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;->onError(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v0, Lcom/kwad/components/ad/b/i;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/kwad/components/ad/b/i;

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/core/b$9;

    .line 28
    .line 29
    invoke-direct {v1, p0, p2}, Lcom/kwad/components/core/b$9;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/i;->loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/kwad/components/core/b$10;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/kwad/components/core/b$10;-><init>(Lcom/kwad/components/core/b;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/kwad/components/core/b;->a(Lcom/kwad/sdk/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    .line 51
    .line 52
    iget v0, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 53
    .line 54
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {p2, v0, p1}, Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;->onError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final showInstallDialog(Landroid/app/Activity;Lcom/kwad/sdk/api/KsExitInstallListener;)Z
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/ad/b/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/components/ad/b/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lcom/kwad/components/ad/b/b;->showInstallDialog(Landroid/app/Activity;Lcom/kwad/sdk/api/KsExitInstallListener;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method
