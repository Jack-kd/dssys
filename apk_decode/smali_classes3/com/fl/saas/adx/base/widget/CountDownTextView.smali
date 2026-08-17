.class public Lcom/fl/saas/adx/base/widget/CountDownTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private bgColor:I

.field private bgRadius:I

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->totalCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgColor:I

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgRadius:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x5

    iput p3, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->totalCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgColor:I

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgRadius:I

    sget-object v1, Lcom/fl/saas/R$styleable;->FLCountDownTextView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/fl/saas/R$styleable;->FLCountDownTextView_fl_count:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->totalCount:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCountDownTextView_fl_bg_color:I

    const p3, -0x777778

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgColor:I

    sget p2, Lcom/fl/saas/R$styleable;->FLCountDownTextView_fl_bg_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgRadius:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgRadius:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget p2, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->bgColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic access$006(Lcom/fl/saas/adx/base/widget/CountDownTextView;)I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->remainingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->remainingCount:I

    return v0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->finishFun:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/widget/CountDownTextView;)Landroidx/arch/core/util/Function;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->tickFun:Landroidx/arch/core/util/Function;

    return-object p0
.end method

.method private lodTimer()V
    .locals 7

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->totalCount:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->remainingCount:I

    new-instance v1, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;

    iget v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->remainingCount:I

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v3, v2, v4

    const-wide/16 v5, 0x3e8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/fl/saas/adx/base/widget/CountDownTextView$1;-><init>(Lcom/fl/saas/adx/base/widget/CountDownTextView;JJ)V

    iput-object v1, v2, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->cancel()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mVisibilityChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->totalCount:I

    return-void
.end method

.method public setFinish(Ljava/lang/Runnable;)Lcom/fl/saas/adx/base/widget/CountDownTextView;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->finishFun:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setOnTick(Landroidx/arch/core/util/Function;)Lcom/fl/saas/adx/base/widget/CountDownTextView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/util/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fl/saas/adx/base/widget/CountDownTextView;"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->tickFun:Landroidx/arch/core/util/Function;

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
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mVisibilityChanged:Lcom/fl/saas/B;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/CountDownTextView;->lodTimer()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public unOnVisibilityChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/CountDownTextView;->mVisibilityChanged:Lcom/fl/saas/B;

    return-void
.end method
