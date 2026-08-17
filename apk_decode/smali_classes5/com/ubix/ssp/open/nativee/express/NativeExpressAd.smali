.class public interface abstract Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;
.super Ljava/lang/Object;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAdType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCreativeType()I
.end method

.method public abstract getNativeExpressView()Landroid/view/View;
.end method

.method public abstract getParamsReview()Lcom/ubix/ssp/open/ParamsReview;
.end method

.method public abstract getPrice()J
.end method

.method public abstract getVideoDuration()J
.end method

.method public abstract isValid()Z
.end method

.method public abstract isVideoAd()Z
.end method

.method public abstract lossNotice(Lcom/ubix/ssp/open/UBiXAdLossInfo;)V
.end method

.method public abstract renderExpressNativeAd(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
.end method

.method public abstract setNativeExpressVideoListener(Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressVideoListener;)V
.end method

.method public abstract winNotice(J)V
.end method
