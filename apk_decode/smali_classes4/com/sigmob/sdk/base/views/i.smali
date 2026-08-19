.class public Lcom/sigmob/sdk/base/views/i;
.super Landroid/widget/FrameLayout;


# static fields
.field private static a:F = 0.0f

.field private static final b:I = 0x6a4


# instance fields
.field private c:Lcom/sigmob/sdk/base/views/j;

.field private d:Lcom/sigmob/sdk/base/views/j;

.field private e:Lcom/sigmob/sdk/base/views/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/i;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/i;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/i;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sigmob/sdk/base/views/i;->a:F

    new-instance v0, Lcom/sigmob/sdk/base/views/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/i;->c:Lcom/sigmob/sdk/base/views/j;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/i;->d:Lcom/sigmob/sdk/base/views/j;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/views/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/i;->e:Lcom/sigmob/sdk/base/views/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/j;->a(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/i;->e:Lcom/sigmob/sdk/base/views/j;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/i;->c:Lcom/sigmob/sdk/base/views/j;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/views/i;->a(Lcom/sigmob/sdk/base/views/j;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/i;->d:Lcom/sigmob/sdk/base/views/j;

    const/16 v1, 0x236

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/views/i;->a(Lcom/sigmob/sdk/base/views/j;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/views/j;I)V
    .locals 9

    .line 2
    const/high16 v0, -0x3e100000    # -30.0f

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    const-string v0, "translationY"

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x6a4

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v7, p2

    invoke-virtual {v0, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array p2, v1, [F

    fill-array-data p2, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    new-array v5, v1, [F

    sget v6, Lcom/sigmob/sdk/base/views/i;->a:F

    aput v6, v5, v3

    aput v2, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/sigmob/sdk/base/views/i$1;

    invoke-direct {v5, p0, p1}, Lcom/sigmob/sdk/base/views/i$1;-><init>(Lcom/sigmob/sdk/base/views/i;Lcom/sigmob/sdk/base/views/j;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x550

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x154

    add-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    aput-object p2, v5, v4

    aput-object v2, v5, v1

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Lcom/sigmob/sdk/base/views/i$2;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/base/views/i$2;-><init>(Lcom/sigmob/sdk/base/views/i;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method
