.class Landroidx/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAnimation(Landroid/view/View;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 3
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v3, Landroidx/transition/R$id;->transition_position:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    aget v5, v2, v4

    sub-int/2addr v5, p2

    int-to-float v5, v5

    add-float/2addr v5, v0

    .line 5
    aget v2, v2, v3

    sub-int/2addr v2, p3

    int-to-float v2, v2

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    move v5, p4

    move v2, p5

    :goto_0
    sub-float v6, v5, v0

    .line 6
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr p2, v6

    sub-float v6, v2, v1

    .line 7
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, p3

    .line 8
    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v7, v5, p6

    if-nez v7, :cond_1

    cmpl-float v7, v2, p7

    if-nez v7, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_1
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v9, v8, [F

    aput v5, v9, v4

    aput p6, v9, v3

    .line 11
    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v8, [F

    aput v2, v8, v4

    aput p7, v8, v3

    .line 12
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v5, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 13
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 14
    new-instance v3, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object p3, p1

    move p4, p2

    move/from16 p6, v0

    move/from16 p7, v1

    move-object p1, v3

    move p5, v6

    move-object p2, p0

    invoke-direct/range {p1 .. p7}, Landroidx/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    move-object/from16 p0, p9

    .line 15
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 16
    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-static {v2, p1}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object/from16 p0, p8

    .line 18
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v2
.end method
