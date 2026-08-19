.class public final Lcom/kwad/components/ad/fullscreen/c/a/f;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/reward/e/o;
.implements Lcom/kwad/sdk/core/g/b;
.implements Lcom/kwad/sdk/widget/d;


# instance fields
.field private hu:Lcom/kwad/sdk/core/g/d;

.field private hw:Landroid/os/Vibrator;

.field private kN:Landroid/view/ViewGroup;

.field private kO:Landroid/widget/TextView;

.field private kP:Landroid/widget/TextView;

.field private kQ:Landroid/widget/ImageView;

.field private kR:Landroid/widget/FrameLayout;

.field private kS:Landroid/widget/ImageView;

.field private kT:Landroid/widget/FrameLayout;

.field private kU:Landroid/widget/TextView;

.field private kV:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPlayEndPageListener:Lcom/kwad/components/ad/reward/e/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/ad/fullscreen/c/a/f$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/fullscreen/c/a/f$1;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->mPlayEndPageListener:Lcom/kwad/components/ad/reward/e/g;

    .line 10
    .line 11
    return-void
.end method

.method private a(FF)Landroid/animation/Animator;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    .line 20
    iget-object v1, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 21
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 22
    iget-object v3, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 23
    iget-object v4, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kQ:Landroid/widget/ImageView;

    const-wide/16 v5, 0x64

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v4, v2, v5, v6, v7}, Lcom/kwad/components/core/t/x;->a(Landroid/view/View;Landroid/view/animation/Interpolator;JF)Landroid/animation/Animator;

    move-result-object v4

    .line 24
    new-instance v5, Lcom/kwad/components/ad/fullscreen/c/a/f$7;

    invoke-direct {v5, v0}, Lcom/kwad/components/ad/fullscreen/c/a/f$7;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object v5, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 26
    iget-object v6, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    .line 27
    iget-object v7, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    sub-float v5, p1, v5

    const/4 v8, 0x1

    new-array v9, v8, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    .line 28
    const-string v5, "translationX"

    invoke-static {v7, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 29
    iget-object v7, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    sub-float v6, p2, v6

    new-array v9, v8, [F

    aput v6, v9, v10

    .line 30
    const-string v6, "translationY"

    invoke-static {v7, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 31
    sget v7, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_height:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 32
    sget v9, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_icon_size:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 33
    iget-object v11, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kR:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    .line 34
    iget-object v12, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kQ:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-eqz v14, :cond_2

    cmpl-float v14, v12, v13

    if-nez v14, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 35
    new-array v14, v2, [F

    aput v11, v14, v10

    aput v7, v14, v8

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 36
    new-instance v11, Lcom/kwad/components/ad/fullscreen/c/a/f$8;

    iget-object v14, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kS:Landroid/widget/ImageView;

    invoke-direct {v11, v0, v14}, Lcom/kwad/components/ad/fullscreen/c/a/f$8;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;Landroid/view/View;)V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    new-array v11, v2, [F

    aput v12, v11, v10

    aput v9, v11, v8

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 38
    new-instance v12, Lcom/kwad/components/ad/fullscreen/c/a/f$9;

    iget-object v14, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kQ:Landroid/widget/ImageView;

    invoke-direct {v12, v0, v14}, Lcom/kwad/components/ad/fullscreen/c/a/f$9;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    sget v12, Lcom/kwad/sdk/R$color;->ksad_shake_icon_bg_start_color:I

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 40
    sget v14, Lcom/kwad/sdk/R$color;->ksad_reward_main_color:I

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 41
    sget v15, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_icon_stroke_size:I

    .line 42
    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 43
    filled-new-array {v12, v14}, [I

    move-result-object v12

    invoke-static {v12}, Lcom/kwad/sdk/widget/a;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    move/from16 p1, v8

    .line 44
    new-instance v8, Lcom/kwad/components/ad/fullscreen/c/a/f$10;

    invoke-direct {v8, v0, v14, v15}, Lcom/kwad/components/ad/fullscreen/c/a/f$10;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;II)V

    invoke-virtual {v12, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    new-array v8, v2, [F

    fill-array-data v8, :array_0

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-wide/16 v14, 0xc8

    .line 46
    invoke-virtual {v8, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance v14, Lcom/kwad/components/ad/fullscreen/c/a/f$11;

    invoke-direct {v14, v0}, Lcom/kwad/components/ad/fullscreen/c/a/f$11;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;)V

    invoke-virtual {v8, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    iget-object v14, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kO:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    new-array v15, v2, [F

    aput v14, v15, v10

    aput v13, v15, p1

    invoke-static {v15}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    .line 49
    new-instance v15, Lcom/kwad/components/ad/fullscreen/c/a/f$12;

    move/from16 v16, v10

    iget-object v10, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kO:Landroid/widget/TextView;

    invoke-direct {v15, v0, v10}, Lcom/kwad/components/ad/fullscreen/c/a/f$12;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    iget-object v10, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kP:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    new-array v15, v2, [F

    aput v10, v15, v16

    aput v13, v15, p1

    invoke-static {v15}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 51
    new-instance v15, Lcom/kwad/components/ad/fullscreen/c/a/f$13;

    move/from16 p2, v13

    iget-object v13, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kP:Landroid/widget/TextView;

    invoke-direct {v15, v0, v13}, Lcom/kwad/components/ad/fullscreen/c/a/f$13;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;Landroid/view/View;)V

    invoke-virtual {v10, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move/from16 v17, v2

    move-object v15, v3

    const-wide/16 v2, 0x1f4

    .line 53
    invoke-virtual {v13, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v2, 0x7

    .line 54
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v5, v2, v16

    aput-object v6, v2, p1

    aput-object v7, v2, v17

    const/4 v3, 0x3

    aput-object v11, v2, v3

    const/4 v5, 0x4

    aput-object v12, v2, v5

    const/4 v6, 0x5

    aput-object v14, v2, v6

    const/4 v7, 0x6

    aput-object v10, v2, v7

    invoke-virtual {v13, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 55
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 56
    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v10

    .line 57
    new-instance v11, Lcom/kwad/components/ad/fullscreen/c/a/f$2;

    invoke-direct {v11, v0, v9, v10}, Lcom/kwad/components/ad/fullscreen/c/a/f$2;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;FLandroid/animation/Animator;)V

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    iget-object v9, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kT:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 59
    sget v11, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_width:I

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    move/from16 v12, v17

    .line 60
    new-array v14, v12, [F

    aput p2, v14, v16

    aput v11, v14, p1

    .line 61
    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    move/from16 p2, v5

    .line 62
    new-instance v5, Lcom/kwad/components/ad/fullscreen/c/a/f$3;

    invoke-direct {v5, v0, v9}, Lcom/kwad/components/ad/fullscreen/c/a/f$3;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    iget-object v5, v0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kU:Landroid/widget/TextView;

    new-array v9, v12, [F

    fill-array-data v9, :array_1

    move/from16 v17, v6

    .line 64
    const-string v6, "alpha"

    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 65
    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 66
    new-array v6, v3, [Landroid/animation/Animator;

    aput-object v10, v6, v16

    aput-object v11, v6, p1

    aput-object v5, v6, v12

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 67
    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v6

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v16

    aput-object v5, v7, p1

    aput-object v6, v7, v12

    aput-object v8, v7, v3

    aput-object v13, v7, p2

    aput-object v2, v7, v17

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/kwad/components/ad/fullscreen/c/a/f;FF)Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/fullscreen/c/a/f;->a(FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/fullscreen/c/a/f;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kV:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/view/ViewGroup;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private static a(Lcom/kwad/components/ad/reward/g;Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;
    .locals 2

    .line 12
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->eD(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/kwad/components/ad/reward/g;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 14
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/kwad/components/core/e/d/d;->qn()I

    move-result p0

    .line 16
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->eF(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;

    move-result-object p1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    .line 17
    iget-object p0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;->adActionDescription:Ljava/lang/String;

    return-object p0

    .line 18
    :cond_0
    iget-object p0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;->openAppLabel:Ljava/lang/String;

    return-object p0

    .line 19
    :cond_1
    iget-object p0, p1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;->installAppLabel:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private a(Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .locals 3

    .line 4
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->eB(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kO:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kU:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-static {v0, p1}, Lcom/kwad/components/ad/fullscreen/c/a/f;->a(Lcom/kwad/components/ad/reward/g;Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kP:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6216\u70b9\u51fb"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kT:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/fullscreen/c/a/f;)Lcom/kwad/sdk/core/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hu:Lcom/kwad/sdk/core/g/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private dy()V
    .locals 8

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_root_container:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/kwad/sdk/R$layout;->ksad_shake_center:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v1, v2, v0, v3}, Lcom/kwad/sdk/wrapper/m;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->bl(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/16 v4, 0x8

    .line 46
    .line 47
    if-ne v2, v4, :cond_0

    .line 48
    .line 49
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 50
    .line 51
    iget v2, v2, Lcom/kwad/components/ad/reward/g;->mScreenOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v2

    .line 58
    invoke-static {v2}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    move v2, v3

    .line 62
    :goto_0
    if-eqz v2, :cond_1

    .line 63
    .line 64
    sget v4, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_icon_live_shop_marginBottom:I

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget v4, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_icon_marginBottom:I

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    :goto_1
    sget v5, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_icon_marginLeft:I

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    sget v2, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_title_live_shop_marginBottom:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    sget v2, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_title_marginBottom:I

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :goto_2
    sget v6, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_height:I

    .line 99
    .line 100
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    sget v7, Lcom/kwad/sdk/R$layout;->ksad_shake_tips_title:I

    .line 109
    .line 110
    invoke-static {v6, v7, v0, v3}, Lcom/kwad/sdk/wrapper/m;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Landroid/widget/FrameLayout;

    .line 115
    .line 116
    iput-object v3, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kT:Landroid/widget/FrameLayout;

    .line 117
    .line 118
    sget v6, Lcom/kwad/sdk/R$id;->ksad_shake_tips_label:I

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object v3, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kU:Landroid/widget/TextView;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kT:Landroid/widget/FrameLayout;

    .line 129
    .line 130
    const/4 v6, 0x4

    .line 131
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    .line 136
    const/4 v6, -0x2

    .line 137
    invoke-direct {v3, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 141
    .line 142
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 143
    .line 144
    const/16 v1, 0x53

    .line 145
    .line 146
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 147
    .line 148
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kT:Landroid/widget/FrameLayout;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    const/16 v2, 0x11

    .line 159
    .line 160
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 161
    .line 162
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 163
    .line 164
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 168
    .line 169
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 170
    .line 171
    const/16 v2, 0xb9

    .line 172
    .line 173
    const/4 v3, 0x0

    .line 174
    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/core/adlog/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 178
    .line 179
    new-instance v2, Lcom/kwad/components/ad/fullscreen/c/a/f$6;

    .line 180
    .line 181
    invoke-direct {v2, p0, v0, v5, v4}, Lcom/kwad/components/ad/fullscreen/c/a/f$6;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public static synthetic e(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kV:Landroid/animation/Animator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kQ:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kS:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kO:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/fullscreen/c/a/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kP:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 2
    .line 3
    sget v1, Lcom/kwad/sdk/R$id;->ksad_shake_center_title:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kO:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 14
    .line 15
    sget v1, Lcom/kwad/sdk/R$id;->ksad_shake_center_sub_title:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kP:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 26
    .line 27
    sget v1, Lcom/kwad/sdk/R$id;->ksad_shake_center_icon:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kQ:Landroid/widget/ImageView;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 38
    .line 39
    sget v1, Lcom/kwad/sdk/R$id;->ksad_shake_center_circle_area:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kR:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 50
    .line 51
    sget v1, Lcom/kwad/sdk/R$id;->ksad_shake_center_circle_area_bg:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kS:Landroid/widget/ImageView;

    .line 60
    .line 61
    new-instance v0, Lcom/kwad/sdk/widget/h;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, p0}, Lcom/kwad/sdk/widget/h;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kwad/sdk/widget/d;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 14

    .line 68
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    invoke-static {}, Lcom/kwad/sdk/core/c/b;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-static {}, Lcom/kwad/components/core/e/c/b;->pG()Z

    move-result v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    if-eqz v0, :cond_2

    .line 73
    new-instance v13, Lcom/kwad/sdk/core/adlog/c/b;

    invoke-direct {v13}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    move-wide v0, p1

    .line 74
    invoke-virtual {v13, v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->j(D)Lcom/kwad/sdk/core/adlog/c/b;

    .line 75
    iget-object v5, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/16 v8, 0x9d

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/kwad/components/ad/reward/g;->a(ILandroid/content/Context;IIJZLcom/kwad/sdk/core/adlog/c/b;)V

    .line 76
    :cond_2
    new-instance v0, Lcom/kwad/components/ad/fullscreen/c/a/f$5;

    invoke-direct {v0, p0}, Lcom/kwad/components/ad/fullscreen/c/a/f$5;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;)V

    invoke-static {v0, v4, v2, v3}, Lcom/kwad/sdk/utils/by;->a(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 77
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hw:Landroid/os/Vibrator;

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/by;->a(Landroid/content/Context;Landroid/os/Vibrator;)V

    return-void

    .line 78
    :cond_3
    :goto_1
    new-instance v0, Lcom/kwad/components/ad/fullscreen/c/a/f$4;

    invoke-direct {v0, p0}, Lcom/kwad/components/ad/fullscreen/c/a/f$4;-><init>(Lcom/kwad/components/ad/fullscreen/c/a/f;)V

    invoke-static {v0, v4, v2, v3}, Lcom/kwad/sdk/utils/by;->a(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 79
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9e

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, v2}, Lcom/kwad/components/ad/reward/g;->a(ILandroid/content/Context;II)V

    return-void
.end method

.method public final a(Landroid/view/View;FFFF)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;FFFF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x9e

    const/4 p4, 0x1

    invoke-virtual {p1, p4, p2, p3, p4}, Lcom/kwad/components/ad/reward/g;->a(ILandroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public final ay()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/kwad/components/ad/fullscreen/b/a;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/e/o;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->mPlayEndPageListener:Lcom/kwad/components/ad/reward/e/g;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/reward/g;->b(Lcom/kwad/components/ad/reward/e/g;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/a/f;->dy()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/a/f;->initView()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/kwad/components/ad/fullscreen/c/a/f;->a(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ew(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ex(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ey(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v3, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hu:Lcom/kwad/sdk/core/g/d;

    .line 61
    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    new-instance v3, Lcom/kwad/sdk/core/g/d;

    .line 65
    .line 66
    invoke-direct {v3, v2, v1}, Lcom/kwad/sdk/core/g/d;-><init>(ZF)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hu:Lcom/kwad/sdk/core/g/d;

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Lcom/kwad/sdk/core/g/d;->bG(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hu:Lcom/kwad/sdk/core/g/d;

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/b;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v3, v1}, Lcom/kwad/sdk/core/g/d;->m(F)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hu:Lcom/kwad/sdk/core/g/d;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/g/d;->cb(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    const-string v1, "vibrator"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/os/Vibrator;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hw:Landroid/os/Vibrator;

    .line 107
    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/kwad/components/ad/fullscreen/b/a;->H(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final cj()V
    .locals 0

    return-void
.end method

.method public final dx()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_title_marginBottom:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->h(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/kwad/sdk/R$dimen;->ksad_fullscreen_shake_tips_height:I

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/kwad/sdk/c/a/a;->h(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final onUnbind()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kN:Landroid/view/ViewGroup;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hw:Landroid/os/Vibrator;

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/kwad/sdk/utils/by;->b(Landroid/content/Context;Landroid/os/Vibrator;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->hw:Landroid/os/Vibrator;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kV:Landroid/animation/Animator;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->kV:Landroid/animation/Animator;

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/a/f;->mPlayEndPageListener:Lcom/kwad/components/ad/reward/e/g;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->c(Lcom/kwad/components/ad/reward/e/g;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
