.class public interface abstract Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;
.end method

.method public abstract getAdLogo()Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdLogoBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getAdLogoUrl()Ljava/lang/String;
.end method

.method public abstract getAdMediaView()Landroid/view/View;
.end method

.method public abstract getAdType()I
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageUrlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMainImageUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMaterial()Lcom/fl/saas/adx/base/bean/MaterialBean;
.end method

.method public abstract getSize()Lcom/fl/saas/adx/base/bean/Size;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoDuration()D
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract isNativeAppAd()Z
.end method
