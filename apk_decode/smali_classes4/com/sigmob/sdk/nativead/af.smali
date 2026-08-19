.class public Lcom/sigmob/sdk/nativead/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/sigmob/sdk/nativead/ae;

.field private c:Lcom/sigmob/sdk/nativead/ae;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sigmob/sdk/nativead/ae;Lcom/sigmob/sdk/nativead/ae;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    iput-object p3, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    iput-wide p4, p0, Lcom/sigmob/sdk/nativead/af;->d:J

    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/af;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/af;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/af;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/af;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v1}, Lcom/sigmob/sdk/nativead/ae;->a()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v2}, Lcom/sigmob/sdk/nativead/ae;->a()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    const-string v2, "x"

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/af;->a:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v4}, Lcom/sigmob/sdk/nativead/ae;->b()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v6}, Lcom/sigmob/sdk/nativead/ae;->b()I

    move-result v6

    int-to-float v6, v6

    new-array v7, v3, [F

    aput v4, v7, v5

    aput v6, v7, v1

    const-string v4, "y"

    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v4}, Lcom/sigmob/sdk/nativead/ae;->c()I

    move-result v4

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v6}, Lcom/sigmob/sdk/nativead/ae;->c()I

    move-result v6

    filled-new-array {v4, v6}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/af;->b:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v6}, Lcom/sigmob/sdk/nativead/ae;->d()I

    move-result v6

    iget-object v7, p0, Lcom/sigmob/sdk/nativead/af;->c:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {v7}, Lcom/sigmob/sdk/nativead/ae;->d()I

    move-result v7

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lcom/sigmob/sdk/nativead/E;

    invoke-direct {v7, p0}, Lcom/sigmob/sdk/nativead/E;-><init>(Lcom/sigmob/sdk/nativead/af;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Lcom/sigmob/sdk/nativead/F;

    invoke-direct {v7, p0}, Lcom/sigmob/sdk/nativead/F;-><init>(Lcom/sigmob/sdk/nativead/af;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v0, v8, v5

    aput-object v2, v8, v1

    aput-object v4, v8, v3

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-wide v0, p0, Lcom/sigmob/sdk/nativead/af;->d:J

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
