.class public Lcom/fl/saas/adx/base/innterNative/CycleNativeAdUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCycleView(Landroid/app/Activity;Lcom/fl/saas/adx/api/mixNative/NativeAd;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->isNativeExpress()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-direct {p2, p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p0

    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p0

    invoke-interface {p0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {p1, p2, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    return-object p2

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/fl/saas/R$layout;->fl_adx_view_cycle_native:I

    invoke-static {p0, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    move-result v2

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/fl/saas/adx/api/AdParams;->getExpressHeight()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v3

    :cond_3
    invoke-virtual {p2}, Lcom/fl/saas/adx/api/AdParams;->getExpressWidth()F

    move-result p2

    invoke-static {p2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p1, v1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    sget p2, Lcom/fl/saas/R$id;->iv_closed:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget v2, Lcom/fl/saas/R$id;->img_logo:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/fl/saas/R$id;->text_name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/fl/saas/R$id;->text_desc:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/fl/saas/R$id;->img_poster:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sget v6, Lcom/fl/saas/R$id;->fl_mediaview:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    sget v7, Lcom/fl/saas/R$id;->iv_ad:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    invoke-static {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v3

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_6

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getImageUrlList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/adx/util/Check;->findFirstNonNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p0

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_a
    :goto_1
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    invoke-virtual {p3, p2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setCloseView(Landroid/view/View;)V

    return-object v1

    :cond_b
    :goto_2
    return-object v0
.end method
