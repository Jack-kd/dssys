.class public interface abstract Lcom/fl/saas/adx/api/mixNative/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/MediaExtraInfo;


# virtual methods
.method public abstract destroy()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
.end method

.method public getCustomizeVideo()Lcom/fl/saas/adx/api/mixNative/NativeCustomizeVideo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getReqId()Ljava/lang/String;
.end method

.method public abstract isNativeExpress()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isShakeType()Z
.end method

.method public abstract onDetachedVideo()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
.end method

.method public abstract release()V
.end method

.method public abstract renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V
.end method

.method public abstract setCanRefresh(Z)V
.end method

.method public abstract setClickCallBackListener(Lcom/fl/saas/adx/api/mixNative/NativeClickCallbackListener;)V
.end method

.method public abstract setNativeAdParams(Lcom/fl/saas/adx/api/AdParams;)V
.end method

.method public abstract setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
.end method

.method public abstract setOnNativeReleaseListener(Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;)V
.end method
