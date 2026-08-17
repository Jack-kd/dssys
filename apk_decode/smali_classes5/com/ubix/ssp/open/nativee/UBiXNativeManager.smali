.class public interface abstract Lcom/ubix/ssp/open/nativee/UBiXNativeManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBiddingToken()Ljava/lang/String;
.end method

.method public abstract loadAd()V
.end method

.method public abstract loadAd(I)V
.end method

.method public abstract loadBiddingAd(Ljava/lang/String;)V
.end method

.method public abstract loadNativeAd(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/open/nativee/UBiXNativeAdListener;)V
.end method

.method public abstract loadNativeAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;)V
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
