.class public final Lcom/kwad/components/ad/reward/n/g;
.super Lcom/kwad/components/ad/reward/n/s;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/reward/n/g$a;
    }
.end annotation


# instance fields
.field private kO:Landroid/widget/TextView;

.field private uj:Lcom/kwad/components/ad/reward/g;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/n/s;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n/g;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    return-void
.end method

.method private static r(Landroid/view/View;)Landroid/animation/Animator;
    .locals 13

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_live_card_tips_animation_y:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const v1, 0x3f147ae1    # 0.58f

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-static {v2, v2, v1, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 32
    .line 33
    .line 34
    neg-int v0, v0

    .line 35
    int-to-float v0, v0

    .line 36
    const/4 v4, 0x1

    .line 37
    new-array v5, v4, [F

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    aput v0, v5, v6

    .line 41
    .line 42
    const-string v0, "translationY"

    .line 43
    .line 44
    invoke-static {p0, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-wide/16 v7, 0x1f4

    .line 49
    .line 50
    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    .line 56
    .line 57
    const/4 v9, 0x2

    .line 58
    new-array v10, v9, [F

    .line 59
    .line 60
    fill-array-data v10, :array_0

    .line 61
    .line 62
    .line 63
    const-string v11, "alpha"

    .line 64
    .line 65
    invoke-static {p0, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    const-wide/16 v11, 0x9c4

    .line 70
    .line 71
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    new-array v11, v4, [F

    .line 76
    .line 77
    aput v2, v11, v6

    .line 78
    .line 79
    invoke-static {p0, v0, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x3

    .line 91
    new-array v0, v0, [Landroid/animation/Animator;

    .line 92
    .line 93
    aput-object v5, v0, v6

    .line 94
    .line 95
    aput-object v10, v0, v4

    .line 96
    .line 97
    aput-object p0, v0, v9

    .line 98
    .line 99
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 100
    .line 101
    .line 102
    return-object v3

    .line 103
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(Lcom/kwad/components/ad/reward/n/g$a;J)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/kwad/components/ad/reward/n/s;->wT:Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/kwad/components/ad/reward/n/g;->r(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/kwad/components/ad/reward/n/g$a;->iS()V

    return-void

    .line 3
    :cond_0
    new-instance p3, Lcom/kwad/components/ad/reward/n/g$1;

    invoke-direct {p3, p0, p1}, Lcom/kwad/components/ad/reward/n/g$1;-><init>(Lcom/kwad/components/ad/reward/n/g;Lcom/kwad/components/ad/reward/n/g$a;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/s;->wT:Landroid/view/ViewGroup;

    new-instance p3, Lcom/kwad/components/ad/reward/n/g$2;

    invoke-direct {p3, p0, p2}, Lcom/kwad/components/ad/reward/n/g$2;-><init>(Lcom/kwad/components/ad/reward/n/g;Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/kwad/components/ad/reward/n/r;)V
    .locals 1

    .line 5
    invoke-super {p0, p1}, Lcom/kwad/components/ad/reward/n/d;->a(Lcom/kwad/components/ad/reward/n/r;)V

    .line 6
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/n/r;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dU(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MerchantLiveReservationInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MerchantLiveReservationInfo;->title:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/g;->kO:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_card_tips_view:I

    .line 2
    .line 3
    sget v1, Lcom/kwad/sdk/R$id;->ksad_card_tips_root:I

    .line 4
    .line 5
    invoke-super {p0, p1, v0, v1}, Lcom/kwad/components/ad/reward/n/s;->a(Landroid/view/ViewGroup;II)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/g;->kO:Landroid/widget/TextView;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/s;->wT:Landroid/view/ViewGroup;

    .line 13
    .line 14
    sget v0, Lcom/kwad/sdk/R$id;->ksad_card_tips_title:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/kwad/components/ad/reward/n/g;->kO:Landroid/widget/TextView;

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/s;->wT:Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final ib()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/s;->wT:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/n/s;->wT:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kwad/components/ad/reward/n/g;->uj:Lcom/kwad/components/ad/reward/g;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/kwad/components/core/n/a;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1, v0, v1, v1}, Lcom/kwad/components/ad/reward/g;->a(ILandroid/content/Context;II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
