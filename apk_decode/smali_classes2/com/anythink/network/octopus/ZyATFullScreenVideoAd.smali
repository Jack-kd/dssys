.class public Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;
.super Lcom/anythink/network/octopus/ZyATInterstitial;
.source "SourceFile"


# instance fields
.field private final a:Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

.field private b:Lcom/octopus/ad/FullScreenVideoAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/octopus/ZyATInterstitial;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->a:Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;)Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->a:Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;)Lcom/octopus/ad/FullScreenVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/FullScreenVideoAd;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/FullScreenVideoAd;->isValid()Z

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

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/octopus/ad/FullScreenVideoAd;

    .line 2
    .line 3
    new-instance v0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd$a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd$a;-><init>(Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p3, p1, p2, v0}, Lcom/octopus/ad/FullScreenVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/FullScreenVideoAdListener;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p3, p1}, Lcom/octopus/ad/FullScreenVideoAd;->openAdInNativeBrowser(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/octopus/ad/FullScreenVideoAd;->loadAd()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/FullScreenVideoAd;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->b:Lcom/octopus/ad/FullScreenVideoAd;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/octopus/ad/FullScreenVideoAd;->show(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATFullScreenVideoAd;->a:Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    const-string v1, "fullScreenVideoAd is null or is not ready"

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;->onAdFailedToPLay(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
