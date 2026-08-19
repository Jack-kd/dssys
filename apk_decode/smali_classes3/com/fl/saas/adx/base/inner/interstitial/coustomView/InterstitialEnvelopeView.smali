.class public Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
.implements Lcom/fl/saas/adx/base/inner/InnerNativeAdLogo;
.implements Lcom/fl/saas/adx/base/innterNative/BindActionView;


# instance fields
.field private final CATView:Landroid/widget/RelativeLayout;

.field private final adImage:Landroid/widget/ImageView;

.field private final adLogo:Landroid/widget/ImageView;

.field private final adView:Landroid/view/View;

.field private animalTime:I

.field private final bgImageView:Landroid/widget/ImageView;

.field private final bgView:Landroid/widget/RelativeLayout;

.field private canMove:Z

.field private final closeView:Landroid/widget/ImageView;

.field private final closeViewTop:Landroid/widget/ImageView;

.field private final desView:Landroid/widget/TextView;

.field private isOnlyButton:Z

.field private final iv_arrow1:Landroid/widget/ImageView;

.field private final iv_arrow2:Landroid/widget/ImageView;

.field private mAdxInfo:Lcom/fl/saas/j;

.field private mAnimator:Landroid/animation/Animator;

.field private mCat:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mRlTopCLose:Landroid/widget/RelativeLayout;

.field private final mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

.field private final mSkipTop:Lcom/fl/saas/adx/base/widget/CountDownTextView;

.field private final mainImageView:Landroid/widget/ImageView;

.field private final mediaContainer:Landroid/widget/FrameLayout;

.field private final orientation:Lcom/fl/saas/q0;

.field private showShake:Z

.field private speed:I

.field private startTime:I

.field private final titleView:Landroid/widget/TextView;

.field private topClose:Z

.field private final tv_action:Landroid/widget/TextView;

.field private final tv_arrow:Landroid/widget/TextView;

.field private final vClose:Landroid/view/View;

.field private final vCloseTop:Landroid/view/View;

.field private final ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/q0;ZZIIZLcom/fl/saas/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->canMove:Z

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->orientation:Lcom/fl/saas/q0;

    iput p5, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->startTime:I

    iput p6, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->animalTime:I

    iput-boolean p4, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->topClose:Z

    iput-boolean p7, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->showShake:Z

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz p3, :cond_0

    sget p2, Lcom/fl/saas/R$layout;->fl_adx_interstitial_small_envelope:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/fl/saas/R$layout;->fl_adx_interstitial_envelope:I

    :goto_0
    invoke-static {p1, p2}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adView:Landroid/view/View;

    sget p2, Lcom/fl/saas/R$id;->yd_shake_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/fl/saas/adx/base/widget/ShakeView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    sget p3, Lcom/fl/saas/R$id;->tv_yd_saas_custom_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->titleView:Landroid/widget/TextView;

    sget p3, Lcom/fl/saas/R$id;->tv_yd_saas_custom_des:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->desView:Landroid/widget/TextView;

    sget p3, Lcom/fl/saas/R$id;->re_action:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->CATView:Landroid/widget/RelativeLayout;

    sget p3, Lcom/fl/saas/R$id;->tv_yd_saas_custom_btn:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->tv_action:Landroid/widget/TextView;

    sget p3, Lcom/fl/saas/R$id;->iv_yd_saas_custom_img:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mainImageView:Landroid/widget/ImageView;

    sget p3, Lcom/fl/saas/R$id;->iv_yd_saas_bg_img:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->bgImageView:Landroid/widget/ImageView;

    sget p3, Lcom/fl/saas/R$id;->iv_yd_saas_custom_video:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mediaContainer:Landroid/widget/FrameLayout;

    sget p3, Lcom/fl/saas/R$id;->iv_yd_saas_custom_logo:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adLogo:Landroid/widget/ImageView;

    sget p3, Lcom/fl/saas/R$id;->iv_yd_saas_custom_img_small:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adImage:Landroid/widget/ImageView;

    sget p3, Lcom/fl/saas/R$id;->rl_close:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mRlTopCLose:Landroid/widget/RelativeLayout;

    sget p5, Lcom/fl/saas/R$id;->tv_skip:I

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/fl/saas/adx/base/widget/CountDownTextView;

    iput-object p5, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    sget p6, Lcom/fl/saas/R$id;->tv_skip_top:I

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Lcom/fl/saas/adx/base/widget/CountDownTextView;

    iput-object p6, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mSkipTop:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    sget p6, Lcom/fl/saas/R$id;->iv_close:I

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->closeView:Landroid/widget/ImageView;

    sget p7, Lcom/fl/saas/R$id;->iv_close_top:I

    invoke-virtual {p1, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->closeViewTop:Landroid/widget/ImageView;

    sget p7, Lcom/fl/saas/R$id;->v_close:I

    invoke-virtual {p1, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    iput-object p7, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->vClose:Landroid/view/View;

    sget p8, Lcom/fl/saas/R$id;->v_close_top:I

    invoke-virtual {p1, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    iput-object p8, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->vCloseTop:Landroid/view/View;

    sget p8, Lcom/fl/saas/R$id;->iv_arrow1:I

    invoke-virtual {p1, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow1:Landroid/widget/ImageView;

    sget p8, Lcom/fl/saas/R$id;->iv_arrow2:I

    invoke-virtual {p1, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow2:Landroid/widget/ImageView;

    sget p8, Lcom/fl/saas/R$id;->tv_arrow:I

    invoke-virtual {p1, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroid/widget/TextView;

    iput-object p8, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->tv_arrow:Landroid/widget/TextView;

    sget p8, Lcom/fl/saas/R$id;->rl_yd_saas_ad_card:I

    invoke-virtual {p1, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    check-cast p8, Landroid/widget/RelativeLayout;

    iput-object p8, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->bgView:Landroid/widget/RelativeLayout;

    const/4 p8, 0x1

    invoke-virtual {p2, p8}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    const/16 p2, 0x8

    if-eqz p4, :cond_1

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p6, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p7, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    sget p2, Lcom/fl/saas/R$id;->iv_top_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget p3, Lcom/fl/saas/R$id;->iv_bottom_bg:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p3

    invoke-virtual {p3, p8}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p3

    invoke-virtual {p3, p8}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p3

    const-string p4, "https://creative.medproad.com/medpro/imgs/yd_saas_icon_envelope_top.webp"

    invoke-virtual {p3, p2, p4}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p2

    const-string p3, "https://creative.medproad.com/medpro/imgs/yd_saas_icon_envelope_bottom.webp"

    invoke-virtual {p2, p1, p3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adImage:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->canMove:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->canMove:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Lcom/fl/saas/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->bgView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->CATView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->isOnlyButton:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->animalTime:I

    return p0
.end method

.method public static synthetic access$510(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)I
    .locals 2

    iget v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->animalTime:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->animalTime:I

    return v0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->CATView:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAdxInfo:Lcom/fl/saas/j;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput p1, v1, Lcom/fl/saas/j;->M1:I

    .line 10
    .line 11
    iput p2, v1, Lcom/fl/saas/j;->N1:I

    .line 12
    .line 13
    iput p3, v1, Lcom/fl/saas/j;->O1:I

    .line 14
    .line 15
    sget-object p1, Lcom/fl/saas/j$b;->b:Lcom/fl/saas/j$b;

    .line 16
    .line 17
    iput-object p1, v1, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->tv_action:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mCat:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method private createAnimatorSet(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 11

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    neg-float p2, p2

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput p2, v2, v5

    const-string v6, "translationY"

    invoke-static {p1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0xfa

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v2, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v9, v1, [F

    aput p2, v9, v3

    aput v4, v9, v5

    invoke-static {p1, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array p2, v1, [Landroid/animation/Animator;

    aput-object v2, p2, v3

    aput-object p1, p2, v5

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$2;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$2;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private playAnimal()V
    .locals 9

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow1:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x2bc

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v8, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow1:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow2:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->bgView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAnimator:Landroid/animation/Animator;

    if-nez v1, :cond_2

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->createAnimatorSet(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAnimator:Landroid/animation/Animator;

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAnimator:Landroid/animation/Animator;

    iget v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->startTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    return-void
.end method


# virtual methods
.method public bindActionView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->showShake:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/ShakeView;->setCallback(Z)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    iget v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->speed:I

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/c;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/c;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V

    invoke-virtual {p1, v0, v1}, Lcom/fl/saas/adx/base/widget/ShakeView;->setShakeListener(ILcom/fl/saas/adx/base/widget/ShakeView$ShakeListener;)V

    return-void
.end method

.method public cancelAnimal()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->animalTime:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->iv_arrow2:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adView:Landroid/view/View;

    return-object v0
.end method

.method public getCATView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->CATView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCloseView()Landroid/widget/ImageView;
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->topClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->closeViewTop:Landroid/widget/ImageView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->closeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSkip()Lcom/fl/saas/adx/base/widget/CountDownTextView;
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->topClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mSkipTop:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mSkip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    return-object v0
.end method

.method public getSpaceView()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->topClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->vCloseTop:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->vClose:Landroid/view/View;

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
    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/b;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setAdLogo(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCAT(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mCat:Ljava/lang/String;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->ydShakeView:Lcom/fl/saas/adx/base/widget/ShakeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->showShake:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->tv_action:Landroid/widget/TextView;

    const-string v0, "\u6447\u4e00\u6447\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->tv_action:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setDes(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->desView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public setMediaView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 3
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->adImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->orientation:Lcom/fl/saas/q0;

    sget-object v2, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mainImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->bgImageView:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/fl/saas/a0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mainImageView:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mediaContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mainImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->playAnimal()V

    return-object p0
.end method

.method public setOnlyButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->isOnlyButton:Z

    return-void
.end method

.method public setSpeed(I)V
    .locals 2

    iput p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->speed:I

    :try_start_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView$1;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->bgView:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/a;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/a;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->titleView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method
