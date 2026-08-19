.class public Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;,
        Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$b;,
        Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$a;,
        Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;
    }
.end annotation


# instance fields
.field private aap:Z

.field private aaq:Z

.field private aar:Z

.field private aas:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$a;

.field private aat:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$b;

.field public aau:Lcom/kwad/components/core/innerEc/live/widget/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/components/core/innerEc/live/widget/a<",
            "Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;",
            ">;"
        }
    .end annotation
.end field

.field private aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mn:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aap:Z

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aaq:Z

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/a;->h(Ljava/lang/Object;)Lcom/kwad/components/core/innerEc/live/widget/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    .line 5
    sget-object p1, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->BOTH_UP_AND_DOWN_DRAG:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    .line 6
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

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
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aap:Z

    .line 9
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aaq:Z

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/a;->h(Ljava/lang/Object;)Lcom/kwad/components/core/innerEc/live/widget/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    .line 11
    sget-object p1, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->BOTH_UP_AND_DOWN_DRAG:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    .line 12
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aap:Z

    .line 15
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aaq:Z

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/a;->h(Ljava/lang/Object;)Lcom/kwad/components/core/innerEc/live/widget/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    .line 17
    sget-object p1, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->BOTH_UP_AND_DOWN_DRAG:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    .line 18
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;F)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->b(Landroid/view/View;F)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;III[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p4, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p4

    float-to-int p4, p4

    if-nez p4, :cond_4

    if-gez p3, :cond_1

    .line 4
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;->START_REFRESHING:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/a;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_3

    if-ltz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;->SCROLL_DOWN:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/a;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;->SCROLL_UP:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/a;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;->START_LOAD_MORE:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/a;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-lez p4, :cond_5

    .line 8
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;->REFRESHING:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/a;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_5
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aau:Lcom/kwad/components/core/innerEc/live/widget/a;

    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;->LOADING_MORE:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$ScrollState;

    invoke-virtual {p2, v0}, Lcom/kwad/components/core/innerEc/live/widget/a;->onNext(Ljava/lang/Object;)V

    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ltz p4, :cond_7

    if-gez p3, :cond_7

    .line 10
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    invoke-virtual {v1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->isDownDragEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    aput p3, p5, v0

    int-to-float p2, p4

    .line 12
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->c(Landroid/view/View;F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    int-to-float p3, p3

    add-float/2addr p2, p3

    .line 13
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->b(Landroid/view/View;F)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->k(Landroid/view/View;I)V

    return-void

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_7
    if-gtz p4, :cond_9

    if-lez p3, :cond_9

    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    invoke-virtual {v1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->isUpDragEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    aput p3, p5, v0

    int-to-float p2, p4

    .line 17
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->c(Landroid/view/View;F)I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    add-float/2addr p2, p3

    .line 18
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->b(Landroid/view/View;F)I

    move-result p2

    neg-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->k(Landroid/view/View;I)V

    return-void

    .line 19
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->k(Landroid/view/View;I)V

    return-void
.end method

.method private static b(Landroid/view/View;F)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    const v0, 0x3fe66666    # 1.8f

    .line 7
    .line 8
    .line 9
    mul-float/2addr v0, p0

    .line 10
    mul-float v1, v0, p0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    add-float/2addr p1, v0

    .line 17
    div-float/2addr v1, p1

    .line 18
    sub-float/2addr p0, v1

    .line 19
    float-to-int p0, p0

    .line 20
    return p0
.end method

.method private static c(Landroid/view/View;F)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-float p0, p0

    .line 6
    const v0, 0x3fe66666    # 1.8f

    .line 7
    .line 8
    .line 9
    mul-float/2addr v0, p0

    .line 10
    mul-float v1, v0, p0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sub-float/2addr p0, p1

    .line 17
    div-float/2addr v1, p0

    .line 18
    sub-float/2addr v1, v0

    .line 19
    float-to-int p0, v1

    .line 20
    return p0
.end method

.method private k(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    int-to-float p2, p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private tj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mn:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mn:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private z(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->tj()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    cmpg-float v2, v0, v1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v3

    .line 18
    :goto_0
    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->c(Landroid/view/View;F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    const/4 v5, 0x2

    .line 24
    new-array v5, v5, [F

    .line 25
    .line 26
    aput v0, v5, v3

    .line 27
    .line 28
    aput v1, v5, v4

    .line 29
    .line 30
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mn:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    const-wide/16 v3, 0x12c

    .line 37
    .line 38
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mn:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mn:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    new-instance v1, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;

    .line 54
    .line 55
    invoke-direct {v1, p0, p1, v2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;-><init>(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mn:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    new-instance v1, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$2;

    .line 64
    .line 65
    invoke-direct {v1, p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$2;-><init>(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mn:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->isDownDragEnable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;->isUpDragEnable()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-lez p1, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    return v2
.end method

.method public getIsNeedControlBounceBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aar:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->tj()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    const/4 p5, 0x1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    sub-int v0, p2, p3

    if-gtz v0, :cond_0

    move p3, p2

    .line 3
    :cond_0
    aput p3, p4, p5

    sub-int/2addr p2, p3

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->k(Landroid/view/View;I)V

    return-void

    :cond_1
    if-gez p2, :cond_3

    if-gez p3, :cond_3

    sub-int v0, p2, p3

    if-ltz v0, :cond_2

    move p3, p2

    .line 5
    :cond_2
    aput p3, p4, p5

    sub-int/2addr p2, p3

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->k(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x2

    .line 2
    new-array v5, p2, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->a(Landroid/view/View;III[I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aap:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aap:Z

    .line 3
    iget-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aaq:Z

    if-nez p1, :cond_3

    if-ne p4, v0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v0

    :goto_3
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aaq:Z

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aap:Z

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aaq:Z

    .line 5
    :cond_1
    iget-boolean p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aap:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aaq:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_4

    .line 6
    iget-boolean p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aar:Z

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aat:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$b;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    invoke-interface {p2}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$b;->tk()Z

    move-result p2

    if-nez p2, :cond_4

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->z(Landroid/view/View;)V

    return-void

    .line 9
    :cond_3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->z(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public setEnableOverScroll(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x2

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setIsNeedControlBounceBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aar:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnTargetViewOffsetListener(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$a;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aas:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$a;

    .line 2
    .line 3
    return-void
.end method

.method public setOnTargetViewStopListener(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$b;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aat:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$b;

    .line 2
    .line 3
    return-void
.end method

.method public setOverScrollType(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->aav:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$OverScrollType;

    .line 2
    .line 3
    return-void
.end method
