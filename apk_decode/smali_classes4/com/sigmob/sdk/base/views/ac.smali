.class public Lcom/sigmob/sdk/base/views/ac;
.super Lcom/sigmob/sdk/base/views/v;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/animation/ObjectAnimator;

.field private c:Z

.field private d:Lcom/sigmob/sdk/base/views/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/v;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/base/views/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/views/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ac;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/views/ac;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/base/views/ac;->c:Z

    return p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/views/ac;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sigmob/sdk/base/views/f;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sigmob/sdk/base/views/ac;->d:Lcom/sigmob/sdk/base/views/f;

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "sig_image_shake_new"

    invoke-static {v3, v4}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ac$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/ac$1;-><init>(Lcom/sigmob/sdk/base/views/ac;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->a:Landroid/widget/ImageView;

    const/16 v1, 0xb

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/sigmob/sdk/base/views/ac$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/views/ac$2;-><init>(Lcom/sigmob/sdk/base/views/ac;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
        -0x3e700000    # -18.0f
        0x0
        0x41900000    # 18.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sigmob/sdk/base/views/ac;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/ac;->c:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/ac;->c:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/ac;->b()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->d()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac;->e()V

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/views/ac;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ac;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
