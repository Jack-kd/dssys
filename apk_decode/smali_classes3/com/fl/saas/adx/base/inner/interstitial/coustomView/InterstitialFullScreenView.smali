.class public Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.implements Lcom/fl/saas/adx/base/inner/InnerNativeAdLogo;
.implements Lcom/fl/saas/adx/base/innterNative/BindActionView;


# instance fields
.field private final CATView:Landroid/widget/TextView;

.field private final adLogo:Landroid/widget/ImageView;

.field private final adView:Landroid/view/View;

.field private final bgView:Landroid/widget/ImageView;

.field private final desView:Landroid/widget/TextView;

.field private final fl_horizontal:Landroid/widget/FrameLayout;

.field private final fl_vertical:Landroid/widget/FrameLayout;

.field private final iv_sound_control:Landroid/widget/ImageView;

.field private final logoIcon:Landroid/widget/ImageView;

.field private final mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

.field private final mainImageView:Landroid/widget/ImageView;

.field private final mainImageViewVertical:Landroid/widget/ImageView;

.field private final mediaContainer:Landroid/widget/FrameLayout;

.field private final mediaContainerVertical:Landroid/widget/FrameLayout;

.field private systemMute:Z

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeMaterial;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->systemMute:Z

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    sget p2, Lcom/fl/saas/R$layout;->fl_adx_interstitial_v_fullscreen:I

    invoke-static {p1, p2}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->adView:Landroid/view/View;

    sget p2, Lcom/fl/saas/R$id;->yd_saas_view_background:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->bgView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_interstitia_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->logoIcon:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->yd_saas_custom_interstitial_media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mediaContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_interstitial:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mainImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->fl_yd_saas_horizontal_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_horizontal:Landroid/widget/FrameLayout;

    sget v0, Lcom/fl/saas/R$id;->yd_saas_custom_vertical_interstitial_media_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mediaContainerVertical:Landroid/widget/FrameLayout;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_vertical_interstitial:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mainImageViewVertical:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->fl_yd_saas_vertical_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_vertical:Landroid/widget/FrameLayout;

    sget v0, Lcom/fl/saas/R$id;->tv_yd_saas_custom_interstitia_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->titleView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->tv_yd_saas_custom_interstitia_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->desView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->tv_yd_saas_custom_interstitia_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->CATView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_vertical_adlogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->adLogo:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_media_sound:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->iv_sound_control:Landroid/widget/ImageView;

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    const-string v0, "https://creative.medproad.com/medpro/imgs/yd_saas_custom_spread_bg.webp"

    invoke-virtual {p1, p2, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const/16 v2, 0xc8

    .line 17
    .line 18
    invoke-static {v0, v1, p1, v2}, Lcom/fl/saas/a0;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/d;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/d;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->iv_sound_control:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->systemMute:Z

    return p1
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;IILandroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_vertical:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-double v1, p1

    .line 8
    int-to-double p1, p2

    .line 9
    div-double/2addr v1, p1

    .line 10
    int-to-double p1, v0

    .line 11
    mul-double/2addr p1, v1

    .line 12
    double-to-int p1, p1

    .line 13
    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mediaContainerVertical:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mediaContainerVertical:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {p0, p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->bgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->logoIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->logoIcon:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->systemMute:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;->getSoundEnable()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    xor-int/lit8 v0, p2, 0x1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->iv_sound_control:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    sget p2, Lcom/fl/saas/R$drawable;->fl_adx_volume_on:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget p2, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;->changeSoundEnable(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic f(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/i;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/i;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private showHorizontalMedia(Landroid/view/View;Lcom/fl/saas/adx/base/bean/Size;)V
    .locals 7

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_horizontal:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_vertical:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/bean/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/bean/Size;->getHeight()I

    move-result p2

    if-lez v2, :cond_0

    if-lez p2, :cond_0

    int-to-double v3, p2

    int-to-double v5, v2

    div-double/2addr v3, v5

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3fe2000000000000L    # 0.5625

    :goto_0
    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bindActionView(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->adView:Landroid/view/View;

    sget v2, Lcom/fl/saas/R$id;->fl_saas_interstitial_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->adView:Landroid/view/View;

    return-object v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->CATView:Landroid/widget/TextView;

    return-object v0
.end method

.method public loadIcon()Lcom/fl/saas/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/B;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/e;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setAdLogo(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->adLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->CATView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->desView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 8
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->bgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/f;

    invoke-direct {v1, p0, p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/f;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getSize()Lcom/fl/saas/adx/base/bean/Size;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {p2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getSize()Lcom/fl/saas/adx/base/bean/Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/bean/Size;->getWidth()I

    move-result v4

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {p2}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getSize()Lcom/fl/saas/adx/base/bean/Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/bean/Size;->getHeight()I

    move-result v5

    if-le v5, v4, :cond_1

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    const/4 v2, -0x1

    invoke-direct {v6, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_horizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_vertical:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_vertical:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;IILandroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v7, p1

    iget-object p1, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mMaterial:Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getSize()Lcom/fl/saas/adx/base/bean/Size;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v7, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->showHorizontalMedia(Landroid/view/View;Lcom/fl/saas/adx/base/bean/Size;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    move-object v7, p1

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    instance-of p1, v7, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;

    if-eqz p1, :cond_7

    move-object p1, v7

    check-cast p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;

    iget-object p2, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->iv_sound_control:Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;

    invoke-direct {p2, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView$1;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;)V

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;->setSoundControlViewStateChangeListener(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;)V

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;->getSoundEnable()Z

    move-result p2

    iget-object v0, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->iv_sound_control:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    sget p2, Lcom/fl/saas/R$drawable;->fl_adx_volume_on:I

    goto :goto_2

    :cond_3
    sget p2, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    iput-boolean p2, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->systemMute:Z

    iget-object p2, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->iv_sound_control:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$drawable;->fl_adx_volume_off:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object p2, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->iv_sound_control:Landroid/widget/ImageView;

    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/h;

    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/h;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_5
    move-object v3, p0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ge p1, v2, :cond_6

    iget-object p1, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_vertical:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_horizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mainImageViewVertical:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v3

    :cond_6
    iget-object p1, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_vertical:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->fl_horizontal:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v3, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object v3
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method
