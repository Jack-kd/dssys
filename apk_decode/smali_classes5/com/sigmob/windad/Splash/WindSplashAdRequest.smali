.class public Lcom/sigmob/windad/Splash/WindSplashAdRequest;
.super Lcom/sigmob/windad/WindAdRequest;


# instance fields
.field private b:I

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

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/windad/WindAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->c:Z

    return-void
.end method


# virtual methods
.method public getFetchDelay()I
    .locals 2

    iget v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isDisableAutoHideAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->c:Z

    return v0
.end method

.method public setDisableAutoHideAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->c:Z

    return-void
.end method

.method public setFetchDelay(I)V
    .locals 0

    iput p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    return-void
.end method
