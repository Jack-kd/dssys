.class public Lcom/fl/saas/adx/base/widget/FingerSlidingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;
    }
.end annotation


# instance fields
.field private bgHeight:I

.field private bgView:Landroid/view/View;

.field private isCallback:Z

.field private isVisibility:Z

.field private mAnimator:Landroid/animation/Animator;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Landroid/widget/ImageView;

.field private mSlidingListener:Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;

.field private scale_type:I

.field private slidingThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->slidingThreshold:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isCallback:Z

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isVisibility:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->slidingThreshold:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isCallback:Z

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isVisibility:Z

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->createView()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->playAnimator()V

    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isCallback:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/fl/saas/adx/base/widget/FingerSlidingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isCallback:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->bgHeight:I

    return p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mSlidingListener:Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->slidingThreshold:I

    return p0
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isVisibility:Z

    return p0
.end method

.method private cancelAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->bgView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    return-void
.end method

.method private createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v9, 0x1

    aput v3, v6, v9

    const-string v10, "translationX"

    invoke-static {v0, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v11, v5, [F

    aput v3, v11, v7

    aput v8, v11, v9

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v12, v5, [F

    aput v8, v12, v7

    aput v3, v12, v9

    const-string v13, "translationY"

    invoke-static {v0, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    move/from16 v16, v7

    new-array v7, v5, [F

    aput v3, v7, v16

    aput v8, v7, v9

    invoke-static {v0, v13, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    neg-float v3, v3

    move/from16 v17, v8

    new-array v8, v5, [F

    aput v17, v8, v16

    aput v3, v8, v9

    invoke-static {v0, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    move/from16 v18, v9

    new-array v9, v5, [F

    aput v3, v9, v16

    aput v17, v9, v18

    invoke-static {v0, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v10, v5, [F

    aput v17, v10, v16

    aput v3, v10, v18

    invoke-static {v0, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v14, v5, [F

    aput v3, v14, v16

    aput v17, v14, v18

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v6, v1, v16

    aput-object v11, v1, v18

    aput-object v12, v1, v5

    const/4 v2, 0x3

    aput-object v7, v1, v2

    const/4 v2, 0x4

    aput-object v8, v1, v2

    const/4 v2, 0x5

    aput-object v9, v1, v2

    const/4 v2, 0x6

    aput-object v10, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Lcom/fl/saas/adx/base/widget/FingerSlidingView$2;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/FingerSlidingView$2;-><init>(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4
.end method

.method private playAnimator()V
    .locals 10

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    const-wide/16 v2, 0x190

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->createAnimatorSet(Landroid/view/View;JF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mAnimator:Landroid/animation/Animator;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->bgView:Landroid/view/View;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f8ccccd    # 1.1f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public createView()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_view_sliding_spread:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$id;->iv_finger:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$id;->iv_all_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v2

    const-string v4, "https://creative.medproad.com/medpro/imgs/yd_saas_icon_all_arrow.webp"

    invoke-virtual {v2, v1, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mImageView:Landroid/widget/ImageView;

    const-string v4, "https://creative.medproad.com/medpro/imgs/yd_saas_spread_guide.webp"

    invoke-virtual {v1, v2, v4}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    move-result v1

    if-gtz v1, :cond_0

    const/high16 v1, 0x44610000    # 900.0f

    :goto_0
    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    goto :goto_1

    :cond_0
    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->px2dip(F)I

    move-result v2

    if-ge v1, v2, :cond_1

    const/high16 v1, 0x44480000    # 800.0f

    goto :goto_0

    :cond_1
    :goto_1
    int-to-double v1, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v1

    double-to-int v4, v4

    iget v5, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->scale_type:I

    if-ne v5, v3, :cond_2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    :goto_2
    mul-double/2addr v1, v4

    double-to-int v4, v1

    goto :goto_3

    :cond_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const-wide v4, 0x3fd999999999999aL    # 0.4

    goto :goto_2

    :cond_3
    :goto_3
    iput v4, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->bgHeight:I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x50

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->bgView:Landroid/view/View;

    sget v6, Lcom/fl/saas/R$drawable;->fl_adx_slide_bg:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->bgView:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    add-int/2addr v4, v1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/adx/base/widget/FingerSlidingView$1;

    invoke-direct {v2, p0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView$1;-><init>(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->cancelAnimator()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mSlidingListener:Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, v0, p0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;->onDown(IILandroid/view/View;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mSlidingListener:Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0, p0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;->onUp(IILandroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->isVisibility:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/fl/saas/adx/base/widget/c;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/c;-><init>(Lcom/fl/saas/adx/base/widget/FingerSlidingView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->cancelAnimator()V

    return-void
.end method

.method public setScale_type(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->scale_type:I

    return-void
.end method

.method public setSlidingListener(ILcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;)V
    .locals 0

    iput-object p2, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->mSlidingListener:Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingView;->slidingThreshold:I

    return-void
.end method
