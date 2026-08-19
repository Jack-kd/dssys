.class public Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.implements Lcom/fl/saas/adx/base/inner/InnerNativeAdLogo;


# instance fields
.field private final CATView:Landroid/widget/TextView;

.field private final adLogo:Landroid/widget/ImageView;

.field private final adView:Landroid/view/View;

.field private final bgView:Landroid/widget/ImageView;

.field private final mainImageView:Landroid/widget/ImageView;

.field private final mediaContainer:Landroid/widget/FrameLayout;

.field private final textContent:Landroid/view/View;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/fl/saas/R$layout;->fl_adx_interstitial_v_material_v:I

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->adView:Landroid/view/View;

    sget v0, Lcom/fl/saas/R$id;->yd_saas_view_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->bgView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->tv_yd_saas_custom_vertical_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->titleView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->tv_yd_saas_custom_vertical_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->CATView:Landroid/widget/TextView;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_vertical_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mainImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_vertical_video:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mediaContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_vertical_adlogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->adLogo:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->rl_yd_saas_custom_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->textContent:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/B;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/B;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/Bitmap;)V

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

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->bgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/C;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/C;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->adView:Landroid/view/View;

    return-object v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->CATView:Landroid/widget/TextView;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdLogo(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->adLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->CATView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 3
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->bgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/A;

    invoke-direct {v1, p0, p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/A;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->textContent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p0
.end method
