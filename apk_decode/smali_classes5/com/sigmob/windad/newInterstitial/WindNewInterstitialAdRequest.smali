.class public Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;
.super Lcom/sigmob/windad/WindAdRequest;


# instance fields
.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/windad/WindAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public isEnableKeepOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;->c:Z

    return v0
.end method

.method public isEnableScreenLockDisPlayAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;->b:Z

    return v0
.end method

.method public setEnableKeepOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;->c:Z

    return-void
.end method

.method public setEnableScreenLockDisPlayAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdRequest;->b:Z

    return-void
.end method
