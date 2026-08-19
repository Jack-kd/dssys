.class public Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;


# instance fields
.field private final adView:Landroid/widget/FrameLayout;

.field private final bgView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final mainImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->mContext:Landroid/content/Context;

    sget v0, Lcom/fl/saas/R$layout;->fl_adx_spread_material_vertical:I

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->adView:Landroid/widget/FrameLayout;

    sget v0, Lcom/fl/saas/R$id;->iv_yd_saas_custom_spread_vertical_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->mainImageView:Landroid/widget/ImageView;

    sget v0, Lcom/fl/saas/R$id;->yd_saas_view_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->bgView:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/drawable/Drawable;)V
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
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->mContext:Landroid/content/Context;

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
    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/e;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/inner/spread/coustomView/e;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/drawable/Drawable;)V
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
    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/coustomView/g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/fl/saas/adx/base/inner/spread/coustomView/g;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->bgView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->bgView:Landroid/widget/ImageView;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->adView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

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
    .locals 0

    return-object p0
.end method

.method public setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->adView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->mainImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->adView:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->mainImageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0

    :cond_1
    if-eqz p2, :cond_4

    sget-object p1, Lcom/fl/saas/adx/util/DeviceUtil;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    instance-of p1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->adView:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/fl/saas/adx/base/inner/spread/coustomView/f;

    invoke-direct {v0, p0, p2}, Lcom/fl/saas/adx/base/inner/spread/coustomView/f;-><init>(Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;->mainImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    :goto_2
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 0

    return-object p0
.end method
