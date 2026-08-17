.class public abstract Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;
.super Lcom/fl/saas/d;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;
.implements Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;


# instance fields
.field private bannerViewHelper:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

.field private handler:Lcom/fl/saas/k0;

.field private height:I

.field private mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/d;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/k0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->handler:Lcom/fl/saas/k0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Lcom/fl/saas/b1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->bindC2SBidECPM(Lcom/fl/saas/b1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->bannerViewHelper:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/d;->onClosedEvent()V

    return-void
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Landroid/app/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/n;->getActivityOrNull()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->width:I

    return p0
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->height:I

    return p0
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fl/saas/d;->onLoadedEvent(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/fl/saas/d;->onClosedEvent()V

    return-void
.end method

.method public static synthetic h(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/n;->canUseEcpm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/fl/saas/j;->g()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 8

    instance-of v0, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    new-instance v1, Lcom/fl/saas/adx/base/inner/banner/b;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/banner/b;-><init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setEcpmMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;)V

    new-instance v1, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$2;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$2;-><init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setAdInfoMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;)V

    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v4

    new-instance v2, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->width:I

    iget v6, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->height:I

    new-instance v7, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;

    invoke-direct {v7, p0}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;-><init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V

    invoke-direct/range {v2 .. v7}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;IILcom/fl/saas/adx/base/inner/banner/BannerViewEvent;)V

    iput-object v2, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->bannerViewHelper:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    new-instance v0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;-><init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/fl/saas/n;->destroy()V

    invoke-virtual {p0}, Lcom/fl/saas/n;->isCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->handler:Lcom/fl/saas/k0;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-interface {p0, v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->innerDestroy(Lcom/fl/saas/k0;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    :cond_0
    return-void
.end method

.method public getNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 4

    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->loadNativeHandler()Lcom/fl/saas/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {p0}, Lcom/fl/saas/d;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->width:I

    invoke-virtual {p0}, Lcom/fl/saas/d;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->height:I

    new-instance v0, Lcom/fl/saas/adx/api/AdParams$Builder;

    invoke-virtual {p0}, Lcom/fl/saas/o;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/AdParams$Builder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/AdParams$Builder;->setIsMixNative(Z)Lcom/fl/saas/adx/api/AdParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/api/AdParams$Builder;->build()Lcom/fl/saas/adx/api/AdParams;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {p0}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fl/saas/k0;->setContext(Landroid/content/Context;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fl/saas/n;->getPosId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fl/saas/j0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fl/saas/n;->getLinkId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fl/saas/j0;->setLinkId(Ljava/lang/String;)Lcom/fl/saas/j0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/AdParams;)Lcom/fl/saas/j0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$1;-><init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V

    invoke-interface {v0, v1}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)Lcom/fl/saas/j0;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {p0}, Lcom/fl/saas/n;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->a(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->handler:Lcom/fl/saas/k0;

    sget-object v1, Lcom/fl/saas/adx/base/innterNative/NativeStyle;->NATIVE:Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->a(Lcom/fl/saas/adx/base/innterNative/NativeStyle;)Lcom/fl/saas/k0;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->handler:Lcom/fl/saas/k0;

    invoke-virtual {v0, p1}, Lcom/fl/saas/k0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->mNativeAd:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;->setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
