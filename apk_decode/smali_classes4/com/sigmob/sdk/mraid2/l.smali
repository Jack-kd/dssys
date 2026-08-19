.class public Lcom/sigmob/sdk/mraid2/l;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/o;


# static fields
.field public static final c:F = 1000.0f

.field private static final d:Ljava/lang/String; = "PageScrollView"

.field private static final e:I = 0x3e8


# instance fields
.field public final a:I

.field public final b:I

.field private f:I

.field private g:J

.field private h:Lcom/sigmob/sdk/mraid2/u;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/mraid2/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/mraid2/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/sigmob/sdk/mraid2/l;->a:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/sigmob/sdk/mraid2/l;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/l;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/l;->c(II)V

    return-void
.end method

.method private synthetic a(ZIILcom/sigmob/sdk/mraid2/c;)V
    .locals 1

    .line 4
    if-eqz p1, :cond_3

    iget p1, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    if-lez p2, :cond_1

    iget p2, p0, Lcom/sigmob/sdk/mraid2/l;->a:I

    add-int v0, p1, p2

    if-ge v0, p3, :cond_0

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    iget p2, p0, Lcom/sigmob/sdk/mraid2/l;->a:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    :cond_2
    const/4 p1, 0x2

    :goto_0
    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/l;->h:Lcom/sigmob/sdk/mraid2/u;

    if-eqz p2, :cond_3

    iget p3, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    iget v0, p0, Lcom/sigmob/sdk/mraid2/l;->a:I

    div-int/2addr p3, v0

    invoke-interface {p2, p4, p1, p3}, Lcom/sigmob/sdk/mraid2/u;->onPageChanged(Lcom/sigmob/sdk/mraid2/c;II)V

    :cond_3
    iget p1, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method private a(I)Z
    .locals 6

    .line 5
    iget v0, p0, Lcom/sigmob/sdk/mraid2/l;->a:I

    rem-int v1, p1, v0

    div-int v0, p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-float p1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sigmob/sdk/mraid2/l;->g:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    div-float/2addr p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    const/high16 v0, -0x3b860000    # -1000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lcom/sigmob/sdk/mraid2/l;->b:I

    if-ge v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v2
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/l;ZIILcom/sigmob/sdk/mraid2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid2/l;->a(ZIILcom/sigmob/sdk/mraid2/c;)V

    return-void
.end method

.method private synthetic c(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget v1, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    iget v2, p0, Lcom/sigmob/sdk/mraid2/l;->a:I

    add-int/2addr v2, v1

    if-ge v2, p2, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void

    :cond_0
    iget p2, p0, Lcom/sigmob/sdk/mraid2/l;->i:I

    if-lez p2, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2, v0}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/mraid2/l;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sigmob/sdk/mraid2/l;->g:J

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/c;II)V
    .locals 6

    .line 3
    iget p3, p0, Lcom/sigmob/sdk/mraid2/l;->f:I

    sub-int v3, p3, p2

    invoke-direct {p0, v3}, Lcom/sigmob/sdk/mraid2/l;->a(I)Z

    move-result v2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    new-instance v0, Lcom/sigmob/sdk/mraid2/L;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/mraid2/L;-><init>(Lcom/sigmob/sdk/mraid2/l;ZIILcom/sigmob/sdk/mraid2/c;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 2
    iget p2, p0, Lcom/sigmob/sdk/mraid2/l;->f:I

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    new-instance v0, Lcom/sigmob/sdk/mraid2/M;

    invoke-direct {v0, p0, p2, p1}, Lcom/sigmob/sdk/mraid2/M;-><init>(Lcom/sigmob/sdk/mraid2/l;II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fling(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    return-void
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public setPageChangedListener(Lcom/sigmob/sdk/mraid2/u;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/l;->h:Lcom/sigmob/sdk/mraid2/u;

    return-void
.end method
