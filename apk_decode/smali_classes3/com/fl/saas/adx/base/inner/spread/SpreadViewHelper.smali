.class public Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/spread/coustomView/NativeSpreadView;


# instance fields
.field private final clickArea:Landroid/view/View;

.field private final guideView:Landroid/widget/ImageView;

.field private final ivClickArea:Landroid/widget/ImageView;

.field private final mAdLogo:Landroid/widget/ImageView;

.field private final mClick:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

.field private final mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

.field private mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

.field private final material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

.field private nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

.field private final skipDes:Ljava/lang/String;

.field private final spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getSysLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh-CN"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8df3\u8fc7 "

    goto :goto_0

    :cond_0
    const-string v0, "Skip "

    :goto_0
    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->skipDes:Ljava/lang/String;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    sget p2, Lcom/fl/saas/R$layout;->fl_adx_spread:I

    invoke-static {p1, p2}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->setMatchParent()V

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    sget p2, Lcom/fl/saas/R$id;->iv_ad_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mAdLogo:Landroid/widget/ImageView;

    sget p2, Lcom/fl/saas/R$id;->v_skip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/fl/saas/adx/base/widget/SkipView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    sget p2, Lcom/fl/saas/R$id;->v_click:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mClick:Landroid/view/View;

    sget p2, Lcom/fl/saas/R$id;->yd_saas_click_area:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->clickArea:Landroid/view/View;

    sget p2, Lcom/fl/saas/R$id;->iv_click_area:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->ivClickArea:Landroid/widget/ImageView;

    sget p2, Lcom/fl/saas/R$id;->yd_saas_click_area_guide:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->guideView:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->cancelCountdown()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;->onDismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    return-object p0
.end method

.method private addAppInfo()V
    .locals 5

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeViewHelper;->createAppInfoView(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "#4D000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->skipDes:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->skipDes:Ljava/lang/String;

    .line 29
    .line 30
    return-object p0
.end method

.method private bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;FF)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->clickArea:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->clickArea:Landroid/view/View;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/fl/saas/adx/util/ViewHelper;->getViewRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    div-int/lit8 v0, v0, 0x2

    .line 21
    .line 22
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    const/high16 v2, 0x41e00000    # 28.0f

    .line 25
    .line 26
    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-int/2addr v1, v2

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    div-int/lit8 p0, p0, 0x2

    .line 36
    .line 37
    const/high16 v2, 0x41200000    # 10.0f

    .line 38
    .line 39
    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sub-int/2addr p0, v2

    .line 44
    int-to-float v0, v0

    .line 45
    sub-float/2addr p1, v0

    .line 46
    float-to-double v2, p1

    .line 47
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 48
    .line 49
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    int-to-float p1, v1

    .line 54
    sub-float/2addr p2, p1

    .line 55
    float-to-double p1, p2

    .line 56
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide p1

    .line 60
    add-double/2addr v2, p1

    .line 61
    int-to-double p0, p0

    .line 62
    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 63
    .line 64
    .line 65
    move-result-wide p0

    .line 66
    cmpg-double p0, v2, p0

    .line 67
    .line 68
    if-gtz p0, :cond_1

    .line 69
    .line 70
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 73
    return p0
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;->onDismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private loadAdIcon()V
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mAdLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mAdLogo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private loadView()V
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

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

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    invoke-interface {v0, p0}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    const/16 v1, 0x4fb5

    const-string v2, "media and imgUrl is empty"

    invoke-static {v1, v2}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_2
    sget v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getSize()Lcom/fl/saas/adx/base/bean/Size;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/bean/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/bean/Size;->getHeight()I

    move-result v0

    if-le v2, v0, :cond_3

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mEvent:Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    invoke-interface {v0, p0}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    :cond_5
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    new-instance v2, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;-><init>(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    return-void
.end method

.method private render()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->material:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->loadAdIcon()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getCATView()Landroid/view/View;

    move-result-object v1

    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    return-void
.end method

.method private setInterceptClick()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/h;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/spread/h;-><init>(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->setOutIntercept(Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    return-void
.end method

.method private setInterceptFilter()V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->setFilterPattern(I)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mClick:Landroid/view/View;

    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    return-void
.end method

.method private startGuideAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->clickArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->guideView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$anim;->fl_adx_anim_spread_guide:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->guideView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCountdown()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->cancel()V

    return-void
.end method

.method public getCATView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-static {v0}, Lcom/fl/saas/p0;->a(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/f;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/inner/interstitial/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getClicks()[Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSpreadView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mClick:Landroid/view/View;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->clickArea:Landroid/view/View;

    filled-new-array {v0, v1, v2}, [Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    return-object v0
.end method

.method public getSelfView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    return-object v0
.end method

.method public initView()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/e;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/spread/e;-><init>(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/SkipView;->setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/SkipView;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/f;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/spread/f;-><init>(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/SkipView;->setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/SkipView;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/g;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/spread/g;-><init>(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/SkipView;->setCancel(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->setInterceptClick()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->loadView()V

    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->onClick()V

    :cond_0
    return-void
.end method

.method public setClickAreaVisibility(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->clickArea:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->setInterceptFilter()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->spreadContainer:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->clickArea:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->guideView:Landroid/widget/ImageView;

    const-string v2, "https://creative.medproad.com/medpro/imgs/yd_saas_spread_guide.webp"

    invoke-virtual {p1, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->ivClickArea:Landroid/widget/ImageView;

    const-string v1, "https://creative.medproad.com/medpro/imgs/yd_saas_bg_click_area.webp"

    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->setInterceptFilter()V

    return-void
.end method

.method public setViewType(ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p3}, Lcom/fl/saas/adx/base/widget/SkipView;->setValue(II)V

    :cond_0
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-virtual {p2, p1}, Lcom/fl/saas/adx/base/widget/SkipView;->setShowCountDown(Z)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->render()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->addAppInfo()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mClick:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    return-void
.end method

.method public startCountdown()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/SkipView;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/SkipView;->start()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->startGuideAnimation()V

    return-void
.end method
