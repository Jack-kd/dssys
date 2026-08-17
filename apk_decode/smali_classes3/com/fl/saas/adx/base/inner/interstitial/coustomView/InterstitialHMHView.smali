.class public Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.implements Lcom/fl/saas/adx/base/innterNative/BindActionView;


# instance fields
.field private final CATView:Landroid/widget/TextView;

.field private final adView:Landroid/widget/RelativeLayout;

.field private final bgView:Landroid/widget/ImageView;

.field private final desView:Landroid/widget/TextView;

.field private final fl_top:Landroid/widget/FrameLayout;

.field private final mainImageView:Landroid/widget/ImageView;

.field private final mediaContainer:Landroid/widget/FrameLayout;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/fl/saas/R$layout;->fl_adx_interstitial_h_material_h:I

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->adView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/fl/saas/R$id;->fl_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->fl_top:Landroid/widget/FrameLayout;

    sget v1, Lcom/fl/saas/R$id;->yd_saas_view_background:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->bgView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->fl_saas_interstitial_img:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mainImageView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->fl_saas_interstitial_media_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mediaContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/fl/saas/R$id;->tv_fl_saas_interstitial_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->titleView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->tv_fl_saas_interstitial_des:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->desView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->tv_fl_saas_interstitial_cta:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->CATView:Landroid/widget/TextView;

    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/j;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/j;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mainImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mainImageView:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v0, :cond_2

    .line 14
    .line 15
    if-lez v1, :cond_2

    .line 16
    .line 17
    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->selfMeasure(Landroid/view/View;)[I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    aget v4, v2, v3

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    aget v2, v2, v5

    .line 26
    .line 27
    const/high16 v5, 0x41200000    # 10.0f

    .line 28
    .line 29
    invoke-static {v5}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    mul-int/lit8 v6, v5, 0xa

    .line 34
    .line 35
    sub-int v6, v0, v6

    .line 36
    .line 37
    mul-int/lit8 v7, v5, 0x5

    .line 38
    .line 39
    sub-int v7, v1, v7

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    const/high16 v8, 0x40400000    # 3.0f

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
    if-lt v6, v4, :cond_0

    .line 54
    .line 55
    if-ge v0, v2, :cond_1

    .line 56
    .line 57
    :cond_0
    int-to-float v7, v2

    .line 58
    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 59
    .line 60
    .line 61
    int-to-float v8, v4

    .line 62
    const/high16 v9, 0x40000000    # 2.0f

    .line 63
    .line 64
    div-float v9, v8, v9

    .line 65
    .line 66
    invoke-virtual {p1, v9}, Landroid/view/View;->setPivotX(F)V

    .line 67
    .line 68
    .line 69
    int-to-float v6, v6

    .line 70
    div-float/2addr v6, v8

    .line 71
    int-to-float v0, v0

    .line 72
    div-float/2addr v0, v7

    .line 73
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 81
    .line 82
    .line 83
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .line 85
    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x6

    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    .line 91
    .line 92
    const/16 v4, 0xe

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    .line 96
    .line 97
    sub-int/2addr v1, v5

    .line 98
    sub-int/2addr v1, v2

    .line 99
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    .line 101
    .line 102
    :goto_0
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->adView:Landroid/widget/RelativeLayout;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .line 119
    const/4 v1, -0x1

    .line 120
    const/4 v2, -0x2

    .line 121
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    const/16 v1, 0x51

    .line 125
    .line 126
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    .line 128
    goto :goto_0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->bgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/k;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/k;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/Bitmap;)V

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

.method public static synthetic d(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->fl_top:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x9

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x10

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->fl_top:Landroid/widget/FrameLayout;

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

.method public static synthetic e(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/m;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/m;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/drawable/Drawable;)V

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
.method public bindActionView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mainImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/n;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/n;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->adView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->CATView:Landroid/widget/TextView;

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

.method public setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->CATView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->desView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 2
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->bgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/l;

    invoke-direct {v1, p0, p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/l;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method
