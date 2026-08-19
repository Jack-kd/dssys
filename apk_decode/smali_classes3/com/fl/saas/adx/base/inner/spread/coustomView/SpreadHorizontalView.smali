.class public Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;


# instance fields
.field private final CATView:Landroid/widget/TextView;

.field private final adView:Landroid/view/View;

.field private final bgView:Landroid/widget/ImageView;

.field private final desView:Landroid/widget/TextView;

.field private final iconView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final mainImageView:Landroid/widget/ImageView;

.field private final mediaContainer:Landroid/widget/FrameLayout;

.field private final reserveView:Landroid/widget/RatingBar;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mContext:Landroid/content/Context;

    sget v0, Lcom/fl/saas/R$layout;->fl_adx_spread_material_horizontal:I

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->adView:Landroid/view/View;

    sget v1, Lcom/fl/saas/R$id;->tv_yd_saas_custom_spread_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->titleView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->tv_yd_saas_custom_spread_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->desView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->tv_yd_saas_custom_spread_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->CATView:Landroid/widget/TextView;

    sget v1, Lcom/fl/saas/R$id;->yd_saas_view_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->bgView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->iv_yd_saas_custom_spread_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->iconView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->iv_yd_saas_custom_spread:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mainImageView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->rb_yd_saas_custom_spread_icon_reserve:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->reserveView:Landroid/widget/RatingBar;

    sget v1, Lcom/fl/saas/R$id;->yd_saas_custom_spread_media_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p1

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView$1;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView$1;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)V

    const-string v1, "https://creative.medproad.com/medpro/imgs/yd_saas_custom_spread_bg.webp"

    invoke-virtual {p1, v1, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->iconView:Landroid/widget/ImageView;

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->reserveView:Landroid/widget/RatingBar;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->iconView:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->iconView:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->reserveView:Landroid/widget/RatingBar;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->adView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/coustomView/c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/spread/coustomView/c;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;Landroid/graphics/drawable/Drawable;)V
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
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    const/16 v2, 0xc8

    .line 15
    .line 16
    invoke-static {v0, v1, p1, v2}, Lcom/fl/saas/a0;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/inner/spread/coustomView/a;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->bgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->bgView:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->adView:Landroid/view/View;

    return-object v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->CATView:Landroid/widget/TextView;

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
    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/spread/coustomView/b;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->CATView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->desView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v3, v3

    int-to-float v5, v5

    mul-float/2addr v3, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    instance-of p1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->adView:Landroid/view/View;

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/d;

    invoke-direct {v0, p0, p2}, Lcom/fl/saas/adx/base/inner/spread/coustomView/d;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method
