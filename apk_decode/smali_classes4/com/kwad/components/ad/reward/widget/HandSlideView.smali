.class public Lcom/kwad/components/ad/reward/widget/HandSlideView;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/reward/widget/HandSlideView$a;
    }
.end annotation


# instance fields
.field private EL:Landroid/view/View;

.field private EM:Landroid/animation/AnimatorSet;

.field private EN:F

.field private EO:F

.field private EP:F

.field private EQ:J

.field private ER:J

.field private ES:I

.field private ET:I

.field private iy:Landroid/widget/ImageView;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x258

    .line 2
    iput-wide v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EQ:J

    const-wide/16 v0, 0x1f4

    .line 3
    iput-wide v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ER:J

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ES:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ET:I

    .line 6
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->started:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x258

    .line 8
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EQ:J

    const-wide/16 p1, 0x1f4

    .line 9
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ER:J

    const/4 p1, 0x3

    .line 10
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ES:I

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ET:I

    .line 12
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->started:Z

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

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x258

    .line 14
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EQ:J

    const-wide/16 p1, 0x1f4

    .line 15
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ER:J

    const/4 p1, 0x3

    .line 16
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ES:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ET:I

    .line 18
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->started:Z

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/widget/HandSlideView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EM:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/widget/HandSlideView;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ET:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ET:I

    return v0
.end method

.method private b(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 13

    .line 2
    iget v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EN:F

    neg-float v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v0, v2, v5

    const-string v0, "translationY"

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    new-array v2, v5, [F

    const/high16 v6, 0x41f00000    # 30.0f

    aput v6, v2, v3

    const-string v6, "rotation"

    invoke-static {p1, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    new-array v6, v1, [F

    fill-array-data v6, :array_0

    const-string v7, "alpha"

    invoke-static {p1, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xa

    .line 5
    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    iget v8, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EO:F

    iget v9, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EP:F

    new-array v10, v1, [F

    aput v8, v10, v3

    aput v9, v10, v5

    .line 7
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 8
    invoke-static {p2}, Lcom/kwad/components/ad/reward/widget/HandSlideView;->t(Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-array v9, v1, [F

    fill-array-data v9, :array_1

    invoke-static {p2, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 10
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 11
    iget-wide v11, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EQ:J

    invoke-virtual {v10, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v11, 0x5

    .line 12
    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v0, v11, v3

    aput-object v2, v11, v5

    aput-object v6, v11, v1

    const/4 v0, 0x3

    aput-object v8, v11, v0

    const/4 v0, 0x4

    aput-object v9, v11, v0

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    invoke-static {v4, v4, v0, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 15
    new-array v8, v1, [F

    fill-array-data v8, :array_2

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 16
    new-array v8, v1, [F

    fill-array-data v8, :array_3

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 17
    new-array v7, v1, [Landroid/animation/Animator;

    aput-object p1, v7, v3

    aput-object p2, v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 18
    iget-wide p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ER:J

    invoke-virtual {v6, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 19
    invoke-static {v4, v4, v0, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 20
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 21
    new-array p2, v1, [Landroid/animation/Animator;

    aput-object v10, p2, v3

    aput-object v6, p2, v5

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic c(Lcom/kwad/components/ad/reward/widget/HandSlideView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ET:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/reward/widget/HandSlideView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->ES:I

    .line 2
    .line 3
    return p0
.end method

.method private static t(Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/reward/widget/HandSlideView$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/widget/HandSlideView$2;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/ad/reward/widget/HandSlideView$a;)V
    .locals 2
    .param p1    # Lcom/kwad/components/ad/reward/widget/HandSlideView$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->started:Z

    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->iy:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EL:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/kwad/components/ad/reward/widget/HandSlideView;->b(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EM:Landroid/animation/AnimatorSet;

    .line 4
    new-instance v1, Lcom/kwad/components/ad/reward/widget/HandSlideView$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/components/ad/reward/widget/HandSlideView$1;-><init>(Lcom/kwad/components/ad/reward/widget/HandSlideView;Lcom/kwad/components/ad/reward/widget/HandSlideView$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EM:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->started:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EM:Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EM:Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EM:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/widget/KSFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget p2, Lcom/kwad/sdk/R$layout;->ksad_hand_slide:I

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/kwad/sdk/R$id;->ksad_hand_slide_hand:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->iy:Landroid/widget/ImageView;

    .line 22
    .line 23
    sget p1, Lcom/kwad/sdk/R$id;->ksad_hand_slide_tail:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EL:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget p2, Lcom/kwad/sdk/R$dimen;->ksad_hand_slide_up:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EN:F

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget p2, Lcom/kwad/sdk/R$dimen;->ksad_hand_slide_tail_height_start:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EO:F

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget p2, Lcom/kwad/sdk/R$dimen;->ksad_hand_slide_tail_height_end:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->EP:F

    .line 78
    .line 79
    return-void
.end method

.method public final isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/widget/HandSlideView;->started:Z

    .line 2
    .line 3
    return v0
.end method
