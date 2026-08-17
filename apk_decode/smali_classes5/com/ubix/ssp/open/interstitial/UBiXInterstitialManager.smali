.class public interface abstract Lcom/ubix/ssp/open/interstitial/UBiXInterstitialManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getBiddingToken()Ljava/lang/String;
.end method

.method public abstract getParamsReview()Lcom/ubix/ssp/open/ParamsReview;
.end method

.method public abstract getPrice()J
.end method

.method public abstract isValid()Z
.end method

.method public abstract isVideoAd()Z
.end method

.method public abstract loadAd()V
.end method

.method public abstract loadBiddingAd(Ljava/lang/String;)V
.end method

.method public abstract loadInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/interstitial/UBiXInterstitialAdListener;)V
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

.method public abstract showAd(Landroid/content/Context;)V
.end method

.method public abstract winNotice(J)V
.end method
