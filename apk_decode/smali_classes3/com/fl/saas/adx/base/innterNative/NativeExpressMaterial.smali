.class public abstract Lcom/fl/saas/adx/base/innterNative/NativeExpressMaterial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeMaterial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdLogoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdLogoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()Lcom/fl/saas/adx/base/bean/Size;
    .locals 2

    new-instance v0, Lcom/fl/saas/adx/base/bean/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/fl/saas/adx/base/bean/Size;-><init>(II)V

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNativeAppAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
