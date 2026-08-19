.class public Lcom/fl/saas/Q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/Q0$b;,
        Lcom/fl/saas/Q0$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private g:Lcom/fl/saas/adx/base/widget/S2SVideoView;

.field private final h:Lcom/fl/saas/Q0$c;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/ImageView;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/fl/saas/Q0$b;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/Q0$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/Q0;->q:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/fl/saas/Q0;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fl/saas/Q0;->h:Lcom/fl/saas/Q0$c;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/fl/saas/Q0$c;->a(Landroid/content/Context;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/fl/saas/Q0;->b:Landroid/view/View;

    .line 16
    .line 17
    sget v0, Lcom/fl/saas/R$id;->fl_template_view_media_container:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/fl/saas/Q0;->c:Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/fl/saas/p0;->a(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/fl/saas/B1;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/fl/saas/B1;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    sget v0, Lcom/fl/saas/R$id;->fl_template_view_title:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/fl/saas/Q0;->e:Landroid/widget/TextView;

    .line 57
    .line 58
    sget v1, Lcom/fl/saas/R$id;->fl_template_view_des:I

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/fl/saas/Q0;->f:Landroid/widget/TextView;

    .line 67
    .line 68
    sget-object v1, Lcom/fl/saas/Q0$c;->d:Lcom/fl/saas/Q0$c;

    .line 69
    .line 70
    if-ne p2, v1, :cond_1

    .line 71
    .line 72
    const/4 p2, -0x1

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    :cond_0
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/Q0;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fl/saas/Q0;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lcom/fl/saas/Q0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/Q0;->e(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/fl/saas/j;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/fl/saas/adx/base/widget/S2SVideoView;

    iget-object v1, p0, Lcom/fl/saas/Q0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/Q0;->g:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->setVideo(Lcom/fl/saas/j;)V

    iget-object p1, p0, Lcom/fl/saas/Q0;->c:Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;

    iget-object v0, p0, Lcom/fl/saas/Q0;->g:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/fl/saas/Q0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/Q0$a;

    invoke-direct {v1, p0}, Lcom/fl/saas/Q0$a;-><init>(Lcom/fl/saas/Q0;)V

    invoke-virtual {v0, p1, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/Q0;)Lcom/fl/saas/Q0$c;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fl/saas/Q0;->h:Lcom/fl/saas/Q0$c;

    return-object p0
.end method

.method public static synthetic c(Lcom/fl/saas/Q0;)Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/Q0;->c:Lcom/fl/saas/adx/base/widget/RoundedFrameLayout;

    return-object p0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->selfMeasure(Landroid/view/View;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    sub-int/2addr v1, v4

    if-lez v1, :cond_3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-lt v0, v3, :cond_1

    if-ge v1, v2, :cond_2

    :cond_1
    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/Q0;)Lcom/fl/saas/Q0$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fl/saas/Q0;->p:Lcom/fl/saas/Q0$b;

    return-object p0
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/fl/saas/Q0;->i:Landroid/view/View;

    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/Q0;->p:Lcom/fl/saas/Q0$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/fl/saas/Q0$b;->onClose()V

    :cond_0
    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/fl/saas/Q0;->l:I

    iget v1, p0, Lcom/fl/saas/Q0;->n:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/fl/saas/Q0;->m:I

    iget v2, p0, Lcom/fl/saas/Q0;->o:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/fl/saas/Q0;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/fl/saas/Q0;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V
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

.method private static synthetic f(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    sget v0, Lcom/fl/saas/R$id;->s2s_template_action_container:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic g(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/Q0;->f(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/fl/saas/Q0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/Q0;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/fl/saas/Q0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/Q0;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/fl/saas/Q0;
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fl/saas/Q0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/Q0;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/fl/saas/Q0;->h:Lcom/fl/saas/Q0$c;

    sget-object v1, Lcom/fl/saas/Q0$c;->g:Lcom/fl/saas/Q0$c;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/fl/saas/Q0$c;->h:Lcom/fl/saas/Q0$c;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    const/16 v1, 0xc

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    const/16 v0, 0x10

    const/4 v1, 0x6

    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v3

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800035

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float v0, v1

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/fl/saas/Q0;->k:Landroid/widget/ImageView;

    sget v1, Lcom/fl/saas/R$mipmap;->fl_adx_ad_dialog_close:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/fl/saas/Q0;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/fl/saas/D1;

    invoke-direct {v1, p0}, Lcom/fl/saas/D1;-><init>(Lcom/fl/saas/Q0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fl/saas/Q0;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public a(II)Lcom/fl/saas/Q0;
    .locals 0

    .line 9
    iput p1, p0, Lcom/fl/saas/Q0;->n:I

    iput p2, p0, Lcom/fl/saas/Q0;->o:I

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/fl/saas/Q0;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/fl/saas/adx/base/widget/ShaderRoundImageView;

    iget-object v1, p0, Lcom/fl/saas/Q0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fl/saas/adx/base/widget/ShaderRoundImageView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/ShaderRoundImageView;->setRadius(F)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/Q0;->d:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/fl/saas/A1;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/A1;-><init>(Lcom/fl/saas/Q0;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/fl/saas/Q0$b;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/fl/saas/Q0;->p:Lcom/fl/saas/Q0$b;

    return-void
.end method

.method public b(II)Lcom/fl/saas/Q0;
    .locals 1

    .line 6
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v0

    if-lt v0, p1, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/fl/saas/Q0;->l:I

    iget-object v0, p0, Lcom/fl/saas/Q0;->h:Lcom/fl/saas/Q0$c;

    invoke-virtual {v0}, Lcom/fl/saas/Q0$c;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3fe3d70a    # 1.78f

    if-le p2, p1, :cond_2

    :goto_1
    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/fl/saas/Q0;->m:I

    return-object p0

    :cond_2
    if-gtz p2, :cond_5

    :goto_2
    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_3

    :cond_3
    const/high16 v0, 0x41980000    # 19.0f

    if-le p2, p1, :cond_4

    mul-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_4
    if-gtz p2, :cond_5

    mul-int/lit8 p1, p1, 0x5

    goto :goto_2

    :cond_5
    :goto_3
    iput p2, p0, Lcom/fl/saas/Q0;->m:I

    return-object p0
.end method

.method public b(Lcom/fl/saas/j;)Lcom/fl/saas/Q0;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/fl/saas/j;->P0:Lcom/fl/saas/j$c;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/fl/saas/j$c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/fl/saas/Q0;->a(Lcom/fl/saas/j;)V

    return-object p0

    :cond_1
    iget-object p1, p1, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/fl/saas/Q0;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/fl/saas/Q0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b()V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/fl/saas/Q0;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/Q0;->q:Z

    iget-object v0, p0, Lcom/fl/saas/Q0;->g:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/Q0;->g:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/Q0;->j:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/fl/saas/C1;

    invoke-direct {v1, p0, p1}, Lcom/fl/saas/C1;-><init>(Lcom/fl/saas/Q0;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/fl/saas/Q0;->i:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/Q0;->a:Landroid/content/Context;

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_template_view:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;

    iget v1, p0, Lcom/fl/saas/Q0;->n:I

    iget v2, p0, Lcom/fl/saas/Q0;->o:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/fl/saas/Q0;->l:I

    iget v3, p0, Lcom/fl/saas/Q0;->m:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/fl/saas/R$id;->s2s_template_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/fl/saas/Q0;->j:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/fl/saas/Q0;->l:I

    iget v2, p0, Lcom/fl/saas/Q0;->n:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fl/saas/Q0;->m:I

    iget v3, p0, Lcom/fl/saas/Q0;->o:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/fl/saas/Q0;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fl/saas/Q0;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/fl/saas/Q0;->i:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/Q0;->i:Landroid/view/View;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/fl/saas/Q0;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/fl/saas/Q0;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/fl/saas/Q0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/fl/saas/Q0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/Q0;->e:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/ViewHelper;->setTextView(Landroid/widget/TextView;Ljava/lang/String;)Landroid/widget/TextView;

    return-object p0
.end method
