.class public Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$OnAdCloseListener;
    }
.end annotation


# instance fields
.field private final adContainer:Landroid/widget/FrameLayout;

.field private alpha:D

.field private animalStartTime:I

.field private animalTime:I

.field private clickType:I

.field private closeView:Landroid/widget/ImageView;

.field private count:I

.field private envelopeCloseView:Landroid/widget/ImageView;

.field private envelopeVClose:Landroid/view/View;

.field private final fl_app_info:Landroid/widget/FrameLayout;

.field private interstitialStyle:Lcom/fl/saas/q0;

.field private isDestroyed:Z

.field private isFullScreenInterstitial:Z

.field private isShakeType:Z

.field private isVisible:Z

.field private final mAdLogo:Landroid/widget/ImageView;

.field private mAdxInfo:Lcom/fl/saas/j;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

.field private mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

.field private mIsAutoClose:Z

.field private final mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

.field private final mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

.field private final mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

.field private mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

.field private nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

.field private onAdCloseListener:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$OnAdCloseListener;

.field private pos:Lcom/fl/saas/s;

.field private scaleSize:I

.field private showShake:Z

.field private smallEnvelope:Z

.field private speed:I

.field private vBottomArea:Landroid/view/View;

.field private vClose:Landroid/view/View;

.field private vTopArea:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/fl/saas/adx/api/mixNative/NativeMaterial;Lcom/fl/saas/q0;Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;Lcom/fl/saas/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->smallEnvelope:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isFullScreenInterstitial:Z

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->showShake:Z

    .line 19
    .line 20
    iput-object p4, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->interstitialStyle:Lcom/fl/saas/q0;

    .line 23
    .line 24
    iput-object p6, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    sget p2, Lcom/fl/saas/R$layout;->fl_adx_fullscreen_interstitial:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget p2, Lcom/fl/saas/R$layout;->fl_adx_interstitial:I

    .line 32
    .line 33
    :goto_0
    invoke-static {p1, p2}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    .line 40
    .line 41
    sget p2, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    sget p2, Lcom/fl/saas/R$id;->fl_app_info:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/FrameLayout;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->fl_app_info:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    sget p2, Lcom/fl/saas/R$id;->tv_skip:I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 68
    .line 69
    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 70
    .line 71
    sget p2, Lcom/fl/saas/R$id;->iv_ad_logo:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mAdLogo:Landroid/widget/ImageView;

    .line 80
    .line 81
    sget p2, Lcom/fl/saas/R$id;->iv_close:I

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Landroid/widget/ImageView;

    .line 88
    .line 89
    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    .line 90
    .line 91
    sget p2, Lcom/fl/saas/R$id;->v_close:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    .line 98
    .line 99
    sget p2, Lcom/fl/saas/R$id;->v_top:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    .line 106
    .line 107
    sget p2, Lcom/fl/saas/R$id;->v_bottom:I

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vBottomArea:Landroid/view/View;

    .line 114
    .line 115
    iput-object p7, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mAdxInfo:Lcom/fl/saas/j;

    .line 116
    .line 117
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    .line 118
    .line 119
    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/c;

    .line 120
    .line 121
    invoke-direct {p2, p0}, Lcom/fl/saas/adx/base/inner/interstitial/c;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/q0;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->createAdView(Lcom/fl/saas/q0;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private addAdView()Z
    .locals 5

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isFullScreenInterstitial:Z

    if-eqz v2, :cond_1

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getInterstitialSize()Landroidx/core/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->interstitialStyle:Lcom/fl/saas/q0;

    sget-object v4, Lcom/fl/saas/q0;->c:Lcom/fl/saas/q0;

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->smallEnvelope:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_0
    const/4 v2, -0x2

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0

    :goto_3
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return v1
.end method

.method private addAppInfo()V
    .locals 5

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeViewHelper;->createAppInfoView(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isFullScreenInterstitial:Z

    if-nez v1, :cond_2

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

    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->fl_app_info:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic c(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "s"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private createAdView(Lcom/fl/saas/q0;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_13

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isFullScreenInterstitial:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/content/Context;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 30
    .line 31
    invoke-direct {p1, v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->interstitialStyle:Lcom/fl/saas/q0;

    .line 36
    .line 37
    sget-object v1, Lcom/fl/saas/q0;->c:Lcom/fl/saas/q0;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    const/4 v3, 0x1

    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    sget-object v0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;->$SwitchMap$com$fl$saas$base$bean$Orientation:[I

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    aget p1, v0, p1

    .line 50
    .line 51
    if-eq p1, v3, :cond_3

    .line 52
    .line 53
    if-eq p1, v2, :cond_2

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/content/Context;

    .line 66
    .line 67
    invoke-direct {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_3
    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/content/Context;

    .line 80
    .line 81
    invoke-direct {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_4
    sget-object v1, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    .line 86
    .line 87
    if-ne v0, v1, :cond_7

    .line 88
    .line 89
    sget-object v0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;->$SwitchMap$com$fl$saas$base$bean$Orientation:[I

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    aget p1, v0, p1

    .line 96
    .line 97
    if-eq p1, v3, :cond_6

    .line 98
    .line 99
    if-eq p1, v2, :cond_5

    .line 100
    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_5
    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/content/Context;

    .line 112
    .line 113
    invoke-direct {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_6
    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/content/Context;

    .line 126
    .line 127
    invoke-direct {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_7
    sget-object v1, Lcom/fl/saas/q0;->d:Lcom/fl/saas/q0;

    .line 132
    .line 133
    if-ne v0, v1, :cond_12

    .line 134
    .line 135
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 136
    .line 137
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 142
    .line 143
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getDescription()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 148
    .line 149
    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_8

    .line 158
    .line 159
    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 160
    .line 161
    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    goto :goto_0

    .line 166
    :cond_8
    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 167
    .line 168
    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getImageUrlList()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v2}, Lcom/fl/saas/adx/util/Check;->findFirstNonNull(Ljava/util/List;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/String;

    .line 177
    .line 178
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    const/4 v4, 0x0

    .line 183
    if-nez v2, :cond_a

    .line 184
    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_a

    .line 190
    .line 191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_9

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_9
    move v0, v4

    .line 199
    goto :goto_2

    .line 200
    :cond_a
    :goto_1
    move v0, v3

    .line 201
    :goto_2
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->smallEnvelope:Z

    .line 202
    .line 203
    new-instance v5, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    .line 204
    .line 205
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    move-object v6, v0

    .line 212
    check-cast v6, Landroid/content/Context;

    .line 213
    .line 214
    iget-boolean v8, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->smallEnvelope:Z

    .line 215
    .line 216
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->pos:Lcom/fl/saas/s;

    .line 217
    .line 218
    sget-object v1, Lcom/fl/saas/s;->d:Lcom/fl/saas/s;

    .line 219
    .line 220
    if-ne v0, v1, :cond_b

    .line 221
    .line 222
    move v9, v3

    .line 223
    goto :goto_3

    .line 224
    :cond_b
    move v9, v4

    .line 225
    :goto_3
    iget v10, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->animalStartTime:I

    .line 226
    .line 227
    iget v11, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->animalTime:I

    .line 228
    .line 229
    iget-boolean v12, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->showShake:Z

    .line 230
    .line 231
    iget-object v13, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mAdxInfo:Lcom/fl/saas/j;

    .line 232
    .line 233
    move-object v7, p1

    .line 234
    invoke-direct/range {v5 .. v13}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;-><init>(Landroid/content/Context;Lcom/fl/saas/q0;ZZIIZLcom/fl/saas/j;)V

    .line 235
    .line 236
    .line 237
    iget p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->speed:I

    .line 238
    .line 239
    invoke-virtual {v5, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->setSpeed(I)V

    .line 240
    .line 241
    .line 242
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isOnlyButton()Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    invoke-virtual {v5, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->setOnlyButton(Z)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->pos:Lcom/fl/saas/s;

    .line 250
    .line 251
    sget-object v0, Lcom/fl/saas/s;->b:Lcom/fl/saas/s;

    .line 252
    .line 253
    const/16 v2, 0x8

    .line 254
    .line 255
    if-eq p1, v0, :cond_d

    .line 256
    .line 257
    if-ne p1, v1, :cond_c

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_c
    invoke-virtual {v5}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->getSkip()Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 265
    .line 266
    invoke-virtual {v5}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->getCloseView()Landroid/widget/ImageView;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 271
    .line 272
    invoke-virtual {v5}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->getSpaceView()Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 277
    .line 278
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 279
    .line 280
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 284
    .line 285
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 289
    .line 290
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    return-object v5

    .line 294
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 295
    .line 296
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    .line 300
    .line 301
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    .line 305
    .line 306
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->getSkip()Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 314
    .line 315
    invoke-virtual {v5}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->getCloseView()Landroid/widget/ImageView;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 320
    .line 321
    invoke-virtual {v5}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->getSpaceView()Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 326
    .line 327
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    .line 328
    .line 329
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 330
    .line 331
    new-array v1, v3, [Landroid/view/View;

    .line 332
    .line 333
    aput-object v0, v1, v4

    .line 334
    .line 335
    invoke-virtual {p1, v1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    .line 339
    .line 340
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 341
    .line 342
    filled-new-array {v0}, [Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 350
    .line 351
    if-eqz p1, :cond_e

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 354
    .line 355
    .line 356
    :cond_e
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 357
    .line 358
    if-eqz p1, :cond_f

    .line 359
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 361
    .line 362
    .line 363
    :cond_f
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isVisible:Z

    .line 364
    .line 365
    const/4 v0, 0x4

    .line 366
    if-nez p1, :cond_10

    .line 367
    .line 368
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 369
    .line 370
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 374
    .line 375
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 379
    .line 380
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 384
    .line 385
    iget v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->count:I

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setCount(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_10
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 392
    .line 393
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 394
    .line 395
    .line 396
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    .line 400
    .line 401
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 402
    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 404
    .line 405
    .line 406
    :goto_5
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 407
    .line 408
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/k;

    .line 409
    .line 410
    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/k;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    .line 416
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 417
    .line 418
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/l;

    .line 419
    .line 420
    invoke-direct {v0}, Lcom/fl/saas/adx/base/inner/interstitial/l;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 424
    .line 425
    .line 426
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 427
    .line 428
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/m;

    .line 429
    .line 430
    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/m;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 434
    .line 435
    .line 436
    iget p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->scaleSize:I

    .line 437
    .line 438
    if-lez p1, :cond_11

    .line 439
    .line 440
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 441
    .line 442
    if-eqz p1, :cond_11

    .line 443
    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    iget v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->scaleSize:I

    .line 449
    .line 450
    mul-int/lit8 v0, v0, 0x14

    .line 451
    .line 452
    int-to-float v0, v0

    .line 453
    const/high16 v1, 0x42480000    # 50.0f

    .line 454
    .line 455
    div-float/2addr v0, v1

    .line 456
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 461
    .line 462
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 463
    .line 464
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 465
    .line 466
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    .line 468
    .line 469
    :cond_11
    return-object v5

    .line 470
    :cond_12
    :goto_6
    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;

    .line 471
    .line 472
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    .line 473
    .line 474
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Landroid/content/Context;

    .line 479
    .line 480
    invoke-direct {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;-><init>(Landroid/content/Context;)V

    .line 481
    .line 482
    .line 483
    return-object p1

    .line 484
    :cond_13
    :goto_7
    const/4 p1, 0x0

    .line 485
    return-object p1
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz p3, :cond_1

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1, p3}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public static getInterstitialSize()Landroidx/core/util/Pair;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    int-to-float v0, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p0, "s"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->loadAdIcon(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private isOnlyButton()Z
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->clickType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic j(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic l(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private loadAdIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    instance-of v1, v0, Lcom/fl/saas/adx/base/inner/InnerNativeAdLogo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fl/saas/adx/base/inner/InnerNativeAdLogo;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/inner/InnerNativeAdLogo;->setAdLogo(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mAdLogo:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mAdLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mAdLogo:Landroid/widget/ImageView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic m(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private render()V
    .locals 7

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->loadAdIcon(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/interstitial/n;

    invoke-direct {v3, v0}, Lcom/fl/saas/adx/base/inner/interstitial/n;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {v2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getCATView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    iget-object v4, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vBottomArea:Landroid/view/View;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-virtual {v0, v5}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public addActionView(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    instance-of v1, v0, Lcom/fl/saas/adx/base/innterNative/BindActionView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BindActionView;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/innterNative/BindActionView;->bindActionView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public click()V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/g;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/g;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/h;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/h;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public closeInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;->onDismiss()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->onAdCloseListener:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$OnAdCloseListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$OnAdCloseListener;->onClose()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->cancelAnimal()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    invoke-interface {v2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    :cond_4
    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getAlpha()D
    .locals 2

    iget-wide v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->alpha:D

    return-wide v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/fl/saas/p0;->a(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v2, Lcom/fl/saas/adx/base/inner/interstitial/f;

    invoke-direct {v2}, Lcom/fl/saas/adx/base/inner/interstitial/f;-><init>()V

    invoke-virtual {v0, v2}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getClicks()[Landroid/view/View;
    .locals 9

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Landroid/view/View;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isOnlyButton()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Landroid/view/View;

    return-object v0

    :cond_1
    iget v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->clickType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget-object v5, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    iget-object v7, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vBottomArea:Landroid/view/View;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/view/View;

    aput-object v0, v8, v1

    aput-object v5, v8, v3

    aput-object v6, v8, v4

    aput-object v7, v8, v2

    return-object v8

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->adContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    iget-object v6, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vBottomArea:Landroid/view/View;

    new-array v2, v2, [Landroid/view/View;

    aput-object v0, v2, v1

    aput-object v5, v2, v3

    aput-object v6, v2, v4

    return-object v2
.end method

.method public getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;
    .locals 3

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->nativeAdView:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    return-object v0
.end method

.method public getSelfView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLayout:Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    return-object v0
.end method

.method public loadView()V
    .locals 6

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getImageUrlList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/Check;->findFirstNonNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "media and imgUrl is empty"

    const/16 v4, 0x4fb5

    if-eqz v2, :cond_4

    if-eqz v0, :cond_6

    sget-object v0, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->createAdView(Lcom/fl/saas/q0;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    invoke-static {v4, v3}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->loadIcon()Lcom/fl/saas/B;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fl/saas/adx/base/inner/interstitial/o;

    invoke-direct {v3, p0, v0}, Lcom/fl/saas/adx/base/inner/interstitial/o;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;)V

    invoke-virtual {v1, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->bindMediaView(Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    invoke-interface {v0, p0}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    new-instance v5, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;

    invoke-direct {v5, p0, v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v1, v5}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    sget v0, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getSize()Lcom/fl/saas/adx/base/bean/Size;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/bean/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/bean/Size;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_5

    sget-object v0, Lcom/fl/saas/q0;->c:Lcom/fl/saas/q0;

    :goto_1
    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->createAdView(Lcom/fl/saas/q0;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mInterstitialView:Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    invoke-interface {v0, p0}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    invoke-static {v4, v3}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mLoaderEvent:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;->onActivityShow(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mIsAutoClose:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    :cond_1
    :goto_0
    return-void
.end method

.method public readerAdView()V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->render()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->addAdView()Z

    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->addAppInfo()V

    return-void
.end method

.method public setAlpha(D)V
    .locals 0

    iput-wide p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->alpha:D

    return-void
.end method

.method public setAnimalStartTime(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->animalStartTime:I

    return-object p0
.end method

.method public setAnimalTime(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->animalTime:I

    return-object p0
.end method

.method public setAutoClose(Z)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mIsAutoClose:Z

    return-object p0
.end method

.method public setClickType(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->clickType:I

    return-object p0
.end method

.method public setClosePos(Lcom/fl/saas/s;)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 9
    .param p1    # Lcom/fl/saas/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->pos:Lcom/fl/saas/s;

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isFullScreenInterstitial:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/fl/saas/s;->b:Lcom/fl/saas/s;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vBottomArea:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    const/4 v4, 0x7

    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 56
    .line 57
    .line 58
    const/4 v5, 0x6

    .line 59
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 72
    .line 73
    .line 74
    const/high16 v5, 0x41000000    # 8.0f

    .line 75
    .line 76
    invoke-static {v5}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    sget-object v6, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$2;->$SwitchMap$com$fl$saas$base$bean$CloseButtonPosition:[I

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aget p1, v6, p1

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    const/4 v7, 0x0

    .line 90
    if-eq p1, v6, :cond_5

    .line 91
    .line 92
    const/4 v6, 0x2

    .line 93
    if-eq p1, v6, :cond_3

    .line 94
    .line 95
    :goto_0
    return-object p0

    .line 96
    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->interstitialStyle:Lcom/fl/saas/q0;

    .line 97
    .line 98
    sget-object v8, Lcom/fl/saas/q0;->d:Lcom/fl/saas/q0;

    .line 99
    .line 100
    if-ne p1, v8, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :goto_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vBottomArea:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    sget p1, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 119
    .line 120
    invoke-virtual {v0, v6, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    .line 122
    .line 123
    sget p1, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 124
    .line 125
    invoke-virtual {v0, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v7, v7, v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    sget p1, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 137
    .line 138
    invoke-virtual {v2, v6, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    .line 140
    .line 141
    sget p1, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 142
    .line 143
    invoke-virtual {v2, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v7, v7, v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    sget p1, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 155
    .line 156
    invoke-virtual {v3, v6, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    .line 158
    .line 159
    sget p1, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 160
    .line 161
    invoke-virtual {v3, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v7, v7, v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_5
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vTopArea:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vBottomArea:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    sget p1, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 184
    .line 185
    const/4 v1, 0x3

    .line 186
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    .line 188
    .line 189
    const/16 p1, 0xe

    .line 190
    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v7, v5, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 195
    .line 196
    .line 197
    iget-object v4, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    .line 198
    .line 199
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    sget v0, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 203
    .line 204
    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v7, v5, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    sget v0, Lcom/fl/saas/R$id;->fl_saas_interstitial_ad_container:I

    .line 219
    .line 220
    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v7, v5, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    .line 230
    .line 231
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    .line 233
    .line 234
    return-object p0
.end method

.method public setCloseViewSize(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->scaleSize:I

    if-gtz p1, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x18

    int-to-float p1, p1

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setCountDown(ZI)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 3

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isVisible:Z

    iput p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->count:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setCount(I)V

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setCount(I)V

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setCount(I)V

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setCount(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/i;

    invoke-direct {p2}, Lcom/fl/saas/adx/base/inner/interstitial/i;-><init>()V

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/CountDownTextView;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/j;

    invoke-direct {p2, p0}, Lcom/fl/saas/adx/base/inner/interstitial/j;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    invoke-virtual {p1, p2}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/CountDownTextView;

    return-object p0
.end method

.method public setOnAdCloseListener(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$OnAdCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->onAdCloseListener:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$OnAdCloseListener;

    return-void
.end method

.method public setShakeType(Z)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isShakeType:Z

    return-object p0
.end method

.method public setSpeed(I)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->speed:I

    return-object p0
.end method

.method public setViewType(ZI)V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    mul-int/lit8 v1, p2, 0x28

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->vClose:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x28

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeVClose:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isOnlyButton()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/p;

    invoke-direct {p2, p0}, Lcom/fl/saas/adx/base/inner/interstitial/p;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/q;

    invoke-direct {p2, p0}, Lcom/fl/saas/adx/base/inner/interstitial/q;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/d;

    invoke-direct {p2, p0}, Lcom/fl/saas/adx/base/inner/interstitial/d;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->envelopeCloseView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/e;

    invoke-direct {p2, p0}, Lcom/fl/saas/adx/base/inner/interstitial/e;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public startCountdown()Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->start()V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->mEnvelopeSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->start()V

    :cond_2
    :goto_0
    return-object p0
.end method
