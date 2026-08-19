.class public interface abstract Lcom/ubix/ssp/open/splash/UBiXSplashManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getBiddingToken()Ljava/lang/String;
.end method

.method public abstract getParamsReview()Lcom/ubix/ssp/open/ParamsReview;
.end method

.method public abstract getPrice()J
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract isValid()Z
.end method

.method public abstract loadAd()V
.end method

.method public abstract loadBiddingAd(Ljava/lang/String;)V
.end method

.method public abstract loadSplashAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/splash/UBiXSplashAdListener;)V
.end method

.method public abstract lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
.end method

.method public abstract setExtraInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMaxTimeout(I)V
.end method

.method public abstract setSkipTime(I)V
.end method

.method public abstract showAd(Landroid/view/ViewGroup;)V
.end method

.method public abstract winNotice(J)V
.end method
