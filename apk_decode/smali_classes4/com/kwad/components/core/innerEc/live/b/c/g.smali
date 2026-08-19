.class public final Lcom/kwad/components/core/innerEc/live/b/c/g;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"


# instance fields
.field private Vs:Landroid/widget/EditText;

.field private Vt:Landroid/view/View;

.field private Wi:Z

.field private Wj:Z

.field private Wk:I

.field private Wl:Z

.field private Wm:Z

.field private Wn:I

.field private Wo:Landroid/animation/ValueAnimator;

.field private Wp:Landroid/view/ViewGroup$MarginLayoutParams;

.field private Wq:Lcom/kwad/sdk/widget/KSLinearLayout;

.field private Wr:Landroid/view/ViewGroup;

.field private Ws:Ljava/lang/String;

.field private Wt:Landroid/widget/TextView;

.field private Wu:Landroid/view/View;

.field private Wv:Landroid/view/ViewGroup$MarginLayoutParams;

.field private Ww:I

.field private Wx:I

.field private final jk:Landroid/os/Handler;

.field private qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->jk:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wj:Z

    .line 17
    .line 18
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wk:I

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wl:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wm:Z

    .line 23
    .line 24
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wn:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wo:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wk:I

    return p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wr:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Ws:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/g;II)Z
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/g;->k(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/g;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wm:Z

    return p1
.end method

.method private aW(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->aY(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wi:Z

    .line 6
    .line 7
    return-void
.end method

.method private aX(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wi:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->sc()V

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->aY(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private aY(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wm:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    int-to-float v0, p1

    .line 7
    const/high16 v1, 0x43480000    # 200.0f

    .line 8
    .line 9
    cmpg-float v0, v0, v1

    .line 10
    .line 11
    if-gez v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wn:I

    .line 17
    .line 18
    if-eq v1, p1, :cond_4

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wo:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wn:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wp:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 30
    .line 31
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    filled-new-array {v1, p1}, [I

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wo:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/g$5;

    .line 44
    .line 45
    invoke-direct {v1, p0, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g$5;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/g;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wo:Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/g$6;

    .line 54
    .line 55
    invoke-direct {v1, p0, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g$6;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/g;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wo:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    const-wide/16 v0, 0x1e

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-wide/16 v0, 0xc8

    .line 69
    .line 70
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wo:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wo:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Vs:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/g;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->aW(I)V

    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/g;)Lcom/kwad/sdk/widget/KSLinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wq:Lcom/kwad/sdk/widget/KSLinearLayout;

    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/g;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->aX(I)V

    return-void
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/b/c/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->so()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Ws:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Vt:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/content/Context;
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

.method public static synthetic h(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wt:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/core/innerEc/live/b/c/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wi:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/kwad/components/core/innerEc/live/b/c/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wj:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->jk:Landroid/os/Handler;

    return-object p0
.end method

.method private static k(II)Z
    .locals 0

    sub-int/2addr p0, p1

    .line 2
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic l(Lcom/kwad/components/core/innerEc/live/b/c/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->sm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/kwad/components/core/innerEc/live/b/c/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wk:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/content/Context;
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

.method public static synthetic o(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/content/Context;
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

.method public static synthetic p(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wp:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wv:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/kwad/components/core/innerEc/live/b/c/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Ww:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic s(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wu:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private sc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wr:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "input_method"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wr:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private sj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/i/c;->sK()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->aY(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/i/c;->c(Landroid/content/Context;Z)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->aY(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private sk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/kwad/sdk/R$id;->ksad_live_frag_root:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->y(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getRootView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private sl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Vs:Landroid/widget/EditText;

    .line 2
    .line 3
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/g$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/g$2;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/g;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Vs:Landroid/widget/EditText;

    .line 12
    .line 13
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/g$3;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/g$3;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/g;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private sm()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wj:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wl:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wi:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->by(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wk:I

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->aW(I)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wk:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/i/c;->bc(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private sn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getRootView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->qE:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private so()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "input_method"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Vs:Landroid/widget/EditText;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private y(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/g$4;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/g;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/g$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/g$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/g;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UN:Lcom/kwad/sdk/g/b;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->sj()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->sk()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->sl()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_comment_edit_layout:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/kwad/sdk/widget/KSLinearLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wq:Lcom/kwad/sdk/widget/KSLinearLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wp:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    .line 22
    sget v0, Lcom/kwad/sdk/R$id;->comment_edit_root:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wr:Landroid/view/ViewGroup;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    sget v0, Lcom/kwad/sdk/R$id;->ksad_comment_edit:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/EditText;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Vs:Landroid/widget/EditText;

    .line 46
    .line 47
    sget v0, Lcom/kwad/sdk/R$id;->ksad_comment_send:I

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Vt:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    sget v0, Lcom/kwad/sdk/R$id;->ksad_comment_edit_count:I

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wt:Landroid/widget/TextView;

    .line 67
    .line 68
    sget v0, Lcom/kwad/sdk/R$id;->ksad_live_ad_container:I

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wu:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wv:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 83
    .line 84
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 85
    .line 86
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Ww:I

    .line 87
    .line 88
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wq:Lcom/kwad/sdk/widget/KSLinearLayout;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const/high16 v2, 0x41c00000    # 24.0f

    .line 95
    .line 96
    invoke-static {v1, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-float v1, v1

    .line 101
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wq:Lcom/kwad/sdk/widget/KSLinearLayout;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v3, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    int-to-float v2, v2

    .line 112
    const/4 v3, 0x0

    .line 113
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/kwad/sdk/widget/KSLinearLayout;->setRadius(FFFF)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->l(Landroid/app/Activity;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g;->Wx:I

    .line 125
    .line 126
    return-void
.end method

.method public final onUnbind()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->sn()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->sc()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
