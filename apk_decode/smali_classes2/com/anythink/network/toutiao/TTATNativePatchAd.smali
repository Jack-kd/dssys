.class public Lcom/anythink/network/toutiao/TTATNativePatchAd;
.super Lcom/anythink/network/toutiao/TTATNativeAd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;IZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/anythink/network/toutiao/TTATNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getNativeType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setAdData(ZLandroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/anythink/network/toutiao/TTATNativeAd;->setAdData(ZLandroid/graphics/Bitmap;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
