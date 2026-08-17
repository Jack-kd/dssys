.class public Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeView;


# instance fields
.field private final bannerContainer:Landroid/widget/FrameLayout;

.field private final height:I

.field private final mAdLogo:Landroid/widget/ImageView;

.field private mBannerView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

.field private final mContext:Landroid/content/Context;

.field private final mEvent:Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

.field private final material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

.field private nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;IILcom/fl/saas/adx/base/inner/banner/BannerViewEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    iput p3, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->width:I

    iput p4, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->height:I

    iput-object p5, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    sget p2, Lcom/fl/saas/R$layout;->fl_adx_banner:I

    invoke-static {p1, p2}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->bannerContainer:Landroid/widget/FrameLayout;

    sget p2, Lcom/fl/saas/R$id;->iv_ad_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mAdLogo:Landroid/widget/ImageView;

    sget p2, Lcom/fl/saas/R$id;->iv_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/fl/saas/adx/base/inner/banner/a;

    invoke-direct {p2, p0}, Lcom/fl/saas/adx/base/inner/banner/a;-><init>(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->loadView()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;->onDismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mBannerView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    return-object p0
.end method

.method private bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mBannerView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->bannerContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mBannerView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->loadAdIcon()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method private loadAdIcon()V
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mAdLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mAdLogo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private loadView()V
    .locals 5

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getImageUrlList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/Check;->findFirstNonNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    new-instance v0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->width:I

    iget v3, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->height:I

    invoke-direct {v0, v1, v2, v3}, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mBannerView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    invoke-interface {v0, p0}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    const/16 v1, 0x4fb5

    const-string v2, "media and imgUrl is empty"

    invoke-static {v1, v2}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_2
    new-instance v0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->width:I

    iget v4, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->height:I

    invoke-direct {v0, v2, v3, v4}, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mBannerView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    sget v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    invoke-interface {v0, p0}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    new-instance v2, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;-><init>(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    return-void
.end method


# virtual methods
.method public getCATView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClicks()[Landroid/view/View;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mBannerView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object v0

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    return-object v0
.end method

.method public getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->width:I

    iget v2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->height:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    return-object v0
.end method

.method public getSelfView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->bannerContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onClicked()V
    .locals 0

    return-void
.end method
