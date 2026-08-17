.class public Lcom/kwad/sdk/widget/KSFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/view/e;
.implements Lcom/kwad/sdk/widget/g;
.implements Lcom/kwad/sdk/widget/k;


# instance fields
.field private baK:Lcom/kwad/sdk/core/view/d;

.field private final baL:Lcom/kwad/sdk/utils/al$a;

.field private btg:Lcom/kwad/sdk/widget/i;

.field private bth:Lcom/kwad/sdk/widget/k;

.field private bti:Landroid/view/View;

.field private final cb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRatio:F

.field private mViewRCHelper:Lcom/kwad/sdk/widget/j;

.field private widthBasedRatio:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->cb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 4
    new-instance v0, Lcom/kwad/sdk/utils/al$a;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/al$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 5
    new-instance v0, Lcom/kwad/sdk/core/view/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/view/d;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baK:Lcom/kwad/sdk/core/view/d;

    .line 6
    iput-boolean v1, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->widthBasedRatio:Z

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/widget/KSFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->cb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 11
    new-instance v0, Lcom/kwad/sdk/utils/al$a;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/al$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 12
    new-instance v0, Lcom/kwad/sdk/core/view/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/view/d;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baK:Lcom/kwad/sdk/core/view/d;

    .line 13
    iput-boolean v1, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->widthBasedRatio:Z

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/widget/KSFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->cb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    .line 17
    iput p3, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 18
    new-instance p3, Lcom/kwad/sdk/utils/al$a;

    invoke-direct {p3}, Lcom/kwad/sdk/utils/al$a;-><init>()V

    iput-object p3, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 19
    new-instance p3, Lcom/kwad/sdk/core/view/d;

    invoke-direct {p3}, Lcom/kwad/sdk/core/view/d;-><init>()V

    iput-object p3, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baK:Lcom/kwad/sdk/core/view/d;

    .line 20
    iput-boolean v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->widthBasedRatio:Z

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/widget/KSFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->cb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 25
    new-instance v0, Lcom/kwad/sdk/utils/al$a;

    invoke-direct {v0}, Lcom/kwad/sdk/utils/al$a;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 26
    new-instance v0, Lcom/kwad/sdk/core/view/d;

    invoke-direct {v0}, Lcom/kwad/sdk/core/view/d;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baK:Lcom/kwad/sdk/core/view/d;

    .line 27
    iput-boolean v1, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->widthBasedRatio:Z

    .line 28
    iput-object p2, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->bti:Landroid/view/View;

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/widget/KSFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getPvView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->bti:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    return-object v0
.end method

.method private static getRadius(FFFF)[F
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aput p0, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aput p0, v0, v1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    aput p1, v0, p0

    .line 13
    .line 14
    const/4 p0, 0x3

    .line 15
    aput p1, v0, p0

    .line 16
    .line 17
    const/4 p0, 0x4

    .line 18
    aput p2, v0, p0

    .line 19
    .line 20
    const/4 p0, 0x5

    .line 21
    aput p2, v0, p0

    .line 22
    .line 23
    const/4 p0, 0x6

    .line 24
    aput p3, v0, p0

    .line 25
    .line 26
    const/4 p0, 0x7

    .line 27
    aput p3, v0, p0

    .line 28
    .line 29
    return-object v0
.end method

.method private zP()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->cb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->ae()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private zQ()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->cb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->af()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public H(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->bth:Lcom/kwad/sdk/widget/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/kwad/sdk/widget/k;->H(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public ae()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->btg:Lcom/kwad/sdk/widget/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/widget/i;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public af()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->btg:Lcom/kwad/sdk/widget/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/widget/i;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/j;->beforeDispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/j;->afterDispatchDraw(Landroid/graphics/Canvas;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/al$a;->k(FF)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/al$a;->H(II)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/utils/al$a;->j(FF)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/core/e;->j(Landroid/view/MotionEvent;)V

    .line 52
    .line 53
    .line 54
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/j;->beforeDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/j;->afterDraw(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getTouchCoords()Lcom/kwad/sdk/utils/al$a;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baL:Lcom/kwad/sdk/utils/al$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVisiblePercent()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->btg:Lcom/kwad/sdk/widget/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/widget/i;->getVisiblePercent()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWindowFocusChangeHelper()Lcom/kwad/sdk/core/view/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baK:Lcom/kwad/sdk/core/view/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget v0, Lcom/kwad/sdk/R$attr;->ksad_ratio:I

    .line 4
    .line 5
    filled-new-array {v0}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/kwad/sdk/widget/i;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->getPvView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1, p0}, Lcom/kwad/sdk/widget/i;-><init>(Landroid/view/View;Lcom/kwad/sdk/widget/k;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->btg:Lcom/kwad/sdk/widget/i;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/i;->cG(Z)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/kwad/sdk/widget/j;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/kwad/sdk/widget/j;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/widget/j;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->zP()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->zQ()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->zP()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->widthBasedRatio:Z

    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    int-to-float p2, p2

    .line 19
    iget v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 20
    .line 21
    mul-float/2addr p2, v0

    .line 22
    float-to-int p2, p2

    .line 23
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    int-to-float p1, p1

    .line 33
    iget v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 34
    .line 35
    div-float/2addr p1, v0

    .line 36
    float-to-int p1, p1

    .line 37
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->btg:Lcom/kwad/sdk/widget/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kwad/sdk/widget/i;->d(IIII)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7
    .line 8
    .line 9
    iget-object p3, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->btg:Lcom/kwad/sdk/widget/i;

    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/kwad/sdk/widget/i;->XM()V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    .line 15
    .line 16
    invoke-virtual {p3, p1, p2}, Lcom/kwad/sdk/widget/j;->onSizeChanged(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->zQ()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->baK:Lcom/kwad/sdk/core/view/d;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/kwad/sdk/core/view/d;->j(Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAllCorner(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/widget/j;->getCornerConf()Lcom/kwad/sdk/widget/j$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/j$a;->setAllCorner(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/j;->setRadius(F)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setRadius(FFFF)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/kwad/sdk/widget/KSFrameLayout;->getRadius(FFFF)[F

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mViewRCHelper:Lcom/kwad/sdk/widget/j;

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/widget/j;->setRadius([F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->mRatio:F

    .line 2
    .line 3
    return-void
.end method

.method public setViewVisibleListener(Lcom/kwad/sdk/widget/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->bth:Lcom/kwad/sdk/widget/k;

    .line 2
    .line 3
    return-void
.end method

.method public setVisiblePercent(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->btg:Lcom/kwad/sdk/widget/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/i;->setVisiblePercent(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWidthBasedRatio(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/widget/KSFrameLayout;->widthBasedRatio:Z

    .line 2
    .line 3
    return-void
.end method
