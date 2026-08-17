.class public Lcom/fl/saas/adx/base/widget/CountDownProgressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private finishFun:Ljava/lang/Runnable;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mVisibilityChanged:Lcom/fl/saas/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/B;"
        }
    .end annotation
.end field

.field private remainingCount:I

.field private roundProgressView:Lcom/fl/saas/adx/base/widget/RoundProgressView;

.field private textview:Landroid/widget/TextView;

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

.field private visibilityState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->createView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    return-void
.end method

.method public static synthetic access$006(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->remainingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->remainingCount:I

    return v0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->finish()V

    return-void
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Landroidx/arch/core/util/Function;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->tickFun:Landroidx/arch/core/util/Function;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)Lcom/fl/saas/adx/base/widget/RoundProgressView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->roundProgressView:Lcom/fl/saas/adx/base/widget/RoundProgressView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/widget/CountDownProgressView;)I
    .locals 0

    iget p0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    return p0
.end method

.method private createView()V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/fl/saas/adx/base/widget/RoundProgressView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fl/saas/adx/base/widget/RoundProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->roundProgressView:Lcom/fl/saas/adx/base/widget/RoundProgressView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private finish()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->tickFun:Landroidx/arch/core/util/Function;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->roundProgressView:Lcom/fl/saas/adx/base/widget/RoundProgressView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/RoundProgressView;->setProgress(F)V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->finishFun:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    return-void
.end method

.method private lodTimer()V
    .locals 7

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->roundProgressView:Lcom/fl/saas/adx/base/widget/RoundProgressView;

    if-eqz v1, :cond_2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/base/widget/RoundProgressView;->setMaxProgress(F)V

    :cond_2
    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->remainingCount:I

    new-instance v1, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->remainingCount:I

    int-to-long v2, v0

    const-wide/16 v4, 0x32

    mul-long v3, v2, v4

    const-wide/16 v5, 0x32

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/fl/saas/adx/base/widget/CountDownProgressView$1;-><init>(Lcom/fl/saas/adx/base/widget/CountDownProgressView;JJ)V

    iput-object v1, v2, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public getVisibilityState()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->visibilityState:I

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->cancel()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->visibilityState:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mVisibilityChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    return-void
.end method

.method public setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/CountDownProgressView;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->finishFun:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/CountDownProgressView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fl/saas/adx/base/widget/CountDownProgressView;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->tickFun:Landroidx/arch/core/util/Function;

    return-object p0
.end method

.method public setOnVisibilityChanged(Lcom/fl/saas/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/B;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mVisibilityChanged:Lcom/fl/saas/B;

    .line 2
    .line 3
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->lodTimer()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->tickFun:Landroidx/arch/core/util/Function;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->totalCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->textview:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public unOnVisibilityChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownProgressView;->mVisibilityChanged:Lcom/fl/saas/B;

    return-void
.end method
