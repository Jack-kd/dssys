.class public Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/funlink/FunlinkATInterstitialLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/funlink/FunlinkATInterstitialLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialLoader"
.end annotation


# instance fields
.field private a:Lcom/fl/saas/adx/api/FLInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;)Lcom/fl/saas/adx/api/FLInterstitial;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a:Lcom/fl/saas/adx/api/FLInterstitial;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a:Lcom/fl/saas/adx/api/FLInterstitial;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a:Lcom/fl/saas/adx/api/FLInterstitial;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a:Lcom/fl/saas/adx/api/FLInterstitial;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fl/saas/adx/api/FLInterstitial;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/api/FLInterstitial$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/fl/saas/adx/api/FLInterstitial$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/fl/saas/adx/base/base/BaseBuilder;->setKey(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/fl/saas/adx/api/FLInterstitial$Builder;

    .line 11
    .line 12
    new-instance p2, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;

    .line 13
    .line 14
    invoke-direct {p2, p0, p3}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;-><init>(Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/api/FLInterstitial$Builder;->setInterstitialListener(Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;)Lcom/fl/saas/adx/api/FLInterstitial$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLInterstitial$Builder;->build()Lcom/fl/saas/adx/api/FLInterstitial;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a:Lcom/fl/saas/adx/api/FLInterstitial;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/fl/saas/adx/api/FLInterstitial;->requestInterstitial()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a:Lcom/fl/saas/adx/api/FLInterstitial;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fl/saas/adx/api/FLInterstitial;->isReady()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a:Lcom/fl/saas/adx/api/FLInterstitial;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/FLInterstitial;->show(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
