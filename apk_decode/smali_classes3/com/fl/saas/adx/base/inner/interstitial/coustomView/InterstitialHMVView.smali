.class public Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.implements Lcom/fl/saas/adx/base/innterNative/BindActionView;


# instance fields
.field private final CATView:Landroid/widget/TextView;

.field private final actionContainer:Landroid/widget/FrameLayout;

.field private final adView:Landroid/view/View;

.field private final bgView:Landroid/widget/ImageView;

.field private final desView:Landroid/widget/TextView;

.field private final logoIcon:Landroid/widget/ImageView;

.field private final mainImageView:Landroid/widget/ImageView;

.field private final mediaContainer:Landroid/widget/FrameLayout;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/fl/saas/R$layout;->fl_adx_interstitial_h_material_v:I

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->adView:Landroid/view/View;

    sget v0, Lcom/fl/saas/R$id;->fl_saas_interstitial_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->actionContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/fl/saas/R$id;->yd_saas_view_background:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->bgView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->fl_saas_interstitial_img:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mainImageView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->iv_fl_saas_interstitial_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->logoIcon:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->tv_fl_saas_interstitial_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->titleView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->tv_fl_saas_interstitial_des:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->desView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->tv_fl_saas_interstitial_cta:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->CATView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->fl_saas_interstitial_media_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mediaContainer:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/r;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/r;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mainImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mainImageView:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x51

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-lez v0, :cond_2

    .line 17
    .line 18
    if-lez v1, :cond_2

    .line 19
    .line 20
    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->selfMeasure(Landroid/view/View;)[I

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    aget v5, v4, v3

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    aget v4, v4, v6

    .line 28
    .line 29
    const/high16 v6, 0x41200000    # 10.0f

    .line 30
    .line 31
    invoke-static {v6}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    mul-int/lit8 v7, v6, 0x6

    .line 36
    .line 37
    sub-int v7, v0, v7

    .line 38
    .line 39
    mul-int/lit8 v0, v0, 0x5

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    const/high16 v8, 0x41000000    # 8.0f

    .line 43
    .line 44
    div-float/2addr v0, v8

    .line 45
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    mul-int/lit8 v7, v6, 0xa

    .line 54
    .line 55
    sub-int/2addr v1, v7

    .line 56
    if-lt v0, v5, :cond_0

    .line 57
    .line 58
    if-ge v1, v4, :cond_1

    .line 59
    .line 60
    :cond_0
    int-to-float v7, v4

    .line 61
    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 62
    .line 63
    .line 64
    int-to-float v8, v5

    .line 65
    const/high16 v9, 0x40000000    # 2.0f

    .line 66
    .line 67
    div-float v9, v8, v9

    .line 68
    .line 69
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 70
    .line 71
    .line 72
    int-to-float v0, v0

    .line 73
    div-float/2addr v0, v8

    .line 74
    int-to-float v1, v1

    .line 75
    div-float/2addr v1, v7

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 84
    .line 85
    .line 86
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .line 88
    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    .line 93
    mul-int/lit8 v6, v6, 0x2

    .line 94
    .line 95
    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 96
    .line 97
    .line 98
    :goto_0
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->actionContainer:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .line 115
    const/4 v1, -0x1

    .line 116
    const/4 v4, -0x2

    .line 117
    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .line 119
    .line 120
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    .line 122
    const/high16 v1, 0x41a00000    # 20.0f

    .line 123
    .line 124
    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 129
    .line 130
    .line 131
    goto :goto_0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->bgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/o;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/o;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->logoIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->logoIcon:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/t;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/t;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/Bitmap;)V

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

.method public static synthetic f(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->actionContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x10

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x9

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->actionContainer:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public bindActionView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mainImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/p;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/p;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->adView:Landroid/view/View;

    return-object v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->CATView:Landroid/widget/TextView;

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
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/s;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->CATView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->desView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 2
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->bgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/q;

    invoke-direct {v1, p0, p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/q;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method
