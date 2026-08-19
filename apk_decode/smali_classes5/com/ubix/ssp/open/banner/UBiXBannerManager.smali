.class public interface abstract Lcom/ubix/ssp/open/banner/UBiXBannerManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getBannerView()Landroid/view/View;
.end method

.method public abstract getParamsReview()Lcom/ubix/ssp/open/ParamsReview;
.end method

.method public abstract getPrice()J
.end method

.method public abstract isValid()Z
.end method

.method public abstract loadAd()V
.end method

.method public abstract loadAd(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loadBannerAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;)V
.end method

.method public abstract loadBannerAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/banner/UBiXBannerAdListener;)V
.end method

.method public abstract lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
.end method

.method public abstract winNotice(J)V
.end method
