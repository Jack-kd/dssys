.class public Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;


# instance fields
.field private final adView:Landroid/view/View;

.field private final desView:Landroid/widget/TextView;

.field private final height:I

.field private final mContext:Landroid/content/Context;

.field private final mainImageView:Landroid/widget/ImageView;

.field private final mediaContainer:Landroid/widget/FrameLayout;

.field private final titleView:Landroid/widget/TextView;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->width:I

    iput p3, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->height:I

    sget p2, Lcom/fl/saas/R$layout;->fl_adx_banner_single_img:I

    invoke-static {p1, p2}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->adView:Landroid/view/View;

    sget p2, Lcom/fl/saas/R$id;->fl_saas_banner_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->titleView:Landroid/widget/TextView;

    sget p2, Lcom/fl/saas/R$id;->fl_saas_banner_des:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->desView:Landroid/widget/TextView;

    sget p2, Lcom/fl/saas/R$id;->fl_saas_banner_media_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->mediaContainer:Landroid/widget/FrameLayout;

    sget p2, Lcom/fl/saas/R$id;->fl_saas_banner_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->mainImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->adView:Landroid/view/View;

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
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->desView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 3
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1, p2}, Lcom/fl/saas/a0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/customView/BannerSingleImgView;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method
