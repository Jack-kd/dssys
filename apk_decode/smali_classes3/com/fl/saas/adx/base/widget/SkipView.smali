.class public Lcom/fl/saas/adx/base/widget/SkipView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private cancelFun:Ljava/lang/Runnable;

.field private circle_skip:Lcom/fl/saas/adx/base/widget/CircularCountDownView;

.field private finishFun:Ljava/lang/Runnable;

.field private mTimer:Landroid/os/CountDownTimer;

.field private remainingCount:I

.field private showCountDown:Z

.field private tickFun:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I

.field private tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

.field private type:I

.field private v_skip:Landroid/view/View;

.field private value:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->totalCount:I

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
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/SkipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const/4 p1, 0x5

    iput p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->totalCount:I

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/widget/SkipView;->createView()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/widget/SkipView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->cancelFun:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic access$006(Lcom/fl/saas/adx/base/widget/SkipView;)I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->remainingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->remainingCount:I

    return v0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/SkipView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->finishFun:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/widget/SkipView;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->mTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/widget/SkipView;)Lcom/fl/saas/adx/base/widget/CircularCountDownView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->circle_skip:Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/widget/SkipView;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->totalCount:I

    return p0
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/widget/SkipView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->cancelFun:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/widget/SkipView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->cancelFun:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/fl/saas/adx/base/widget/SkipView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->cancelFun:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/adx/base/widget/SkipView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->cancelFun:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private lodTimer()V
    .locals 7

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->totalCount:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->remainingCount:I

    new-instance v1, Lcom/fl/saas/adx/base/widget/SkipView$1;

    iget v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->totalCount:I

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v3, v2, v4

    const-wide/16 v5, 0x32

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/fl/saas/adx/base/widget/SkipView$1;-><init>(Lcom/fl/saas/adx/base/widget/SkipView;JJ)V

    iput-object v1, v2, Lcom/fl/saas/adx/base/widget/SkipView;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->showCountDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void
.end method

.method public createView()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$layout;->fl_adx_view_spread_skipview:I

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/ViewHelper;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/fl/saas/R$id;->tv_skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/base/widget/CountDownTextView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    sget v1, Lcom/fl/saas/R$id;->circle_skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->circle_skip:Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    sget v1, Lcom/fl/saas/R$id;->v_skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->v_skip:Landroid/view/View;

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getWrapParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->showCountDown:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->type:I

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/fl/saas/adx/base/widget/SkipView;->type:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->v_skip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    new-instance v1, Lcom/fl/saas/adx/base/widget/p;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/p;-><init>(Lcom/fl/saas/adx/base/widget/SkipView;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->type:I

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/fl/saas/adx/base/widget/SkipView;->type:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->v_skip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->circle_skip:Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    new-instance v1, Lcom/fl/saas/adx/base/widget/q;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/widget/q;-><init>(Lcom/fl/saas/adx/base/widget/SkipView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCancel(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/SkipView;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->cancelFun:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->totalCount:I

    return-void
.end method

.method public setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/SkipView;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->finishFun:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/SkipView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fl/saas/adx/base/widget/SkipView;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tickFun:Landroidx/arch/core/util/Function;

    return-object p0
.end method

.method public setShowCountDown(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->showCountDown:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->circle_skip:Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tickFun:Landroidx/arch/core/util/Function;

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/CountDownTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->finishFun:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/CountDownTextView;

    iget p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->type:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    new-instance v0, Lcom/fl/saas/adx/base/widget/r;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/r;-><init>(Lcom/fl/saas/adx/base/widget/SkipView;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->circle_skip:Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->type:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->circle_skip:Lcom/fl/saas/adx/base/widget/CircularCountDownView;

    new-instance v0, Lcom/fl/saas/adx/base/widget/s;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/s;-><init>(Lcom/fl/saas/adx/base/widget/SkipView;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->v_skip:Landroid/view/View;

    new-instance v0, Lcom/fl/saas/adx/base/widget/t;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/t;-><init>(Lcom/fl/saas/adx/base/widget/SkipView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setValue(II)V
    .locals 1

    iput p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->type:I

    iput p2, p0, Lcom/fl/saas/adx/base/widget/SkipView;->value:I

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->v_skip:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/SkipView;->v_skip:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x28

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/fl/saas/adx/base/widget/SkipView;->v_skip:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->showCountDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->tv_skip:Lcom/fl/saas/adx/base/widget/CountDownTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->start()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/SkipView;->lodTimer()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/SkipView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method
