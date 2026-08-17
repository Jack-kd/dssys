.class public final Lcom/kwad/sdk/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final baQ:Lcom/kwad/sdk/utils/ca;

.field private final btG:Lcom/kwad/sdk/widget/k;

.field private btH:F

.field private btI:Z

.field private btJ:Z

.field private btK:Z

.field private btL:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final mView:Landroid/view/View;

.field private final ph:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kwad/sdk/widget/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3dcccccd    # 0.1f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/kwad/sdk/widget/i;->btH:F

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/kwad/sdk/widget/i;->btK:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/kwad/sdk/widget/i;->btG:Lcom/kwad/sdk/widget/k;

    .line 15
    .line 16
    new-instance p2, Lcom/kwad/sdk/utils/ca;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lcom/kwad/sdk/utils/ca;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/kwad/sdk/widget/i;->baQ:Lcom/kwad/sdk/utils/ca;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/kwad/sdk/utils/n;->getScreenHeight(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/kwad/sdk/widget/i;->ph:I

    .line 32
    .line 33
    return-void
.end method

.method private Pr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->btL:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/widget/i$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kwad/sdk/widget/i$1;-><init>(Lcom/kwad/sdk/widget/i;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/widget/i;->btL:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/sdk/widget/i;->btL:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private Ps()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->btL:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/kwad/sdk/widget/i;->btL:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/kwad/sdk/widget/i;->btL:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return-void

    .line 26
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private XN()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->XO()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->aZ()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->Ps()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->Pr()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private XO()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->baQ:Lcom/kwad/sdk/utils/ca;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/utils/ca;->Xh()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->baQ:Lcom/kwad/sdk/utils/ca;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/sdk/utils/ca;->brw:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sub-int/2addr v0, v2

    .line 25
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    iget-object v2, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    iget v4, p0, Lcom/kwad/sdk/widget/i;->btH:F

    .line 40
    .line 41
    sub-float/2addr v3, v4

    .line 42
    mul-float/2addr v2, v3

    .line 43
    cmpg-float v0, v0, v2

    .line 44
    .line 45
    if-gtz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->baQ:Lcom/kwad/sdk/utils/ca;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/kwad/sdk/utils/ca;->brw:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    if-lez v2, :cond_0

    .line 70
    .line 71
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    iget v2, p0, Lcom/kwad/sdk/widget/i;->ph:I

    .line 74
    .line 75
    if-ge v0, v2, :cond_0

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    return v0

    .line 79
    :cond_0
    return v1
.end method

.method public static synthetic a(Lcom/kwad/sdk/widget/i;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->XO()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private aZ()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->Ps()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/widget/i;->btG:Lcom/kwad/sdk/widget/k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/sdk/widget/i;->mView:Landroid/view/View;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/kwad/sdk/widget/k;->H(Landroid/view/View;)V
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

.method public static synthetic b(Lcom/kwad/sdk/widget/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->aZ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private qZ()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/widget/i;->btK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->XN()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final XM()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/widget/i;->btJ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->qZ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final cG(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/widget/i;->btK:Z

    .line 2
    .line 3
    return-void
.end method

.method public final d(IIII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kwad/sdk/widget/i;->btJ:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/kwad/sdk/widget/i;->btI:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    or-int/2addr p3, p4

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    or-int/2addr p1, p2

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/kwad/sdk/widget/i;->btJ:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/kwad/sdk/widget/i;->btI:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final getVisiblePercent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/widget/i;->btH:F

    .line 2
    .line 3
    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->Pr()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/widget/i;->Ps()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/widget/i;->btI:Z

    .line 6
    .line 7
    return-void
.end method

.method public final setVisiblePercent(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/widget/i;->btH:F

    .line 2
    .line 3
    return-void
.end method
