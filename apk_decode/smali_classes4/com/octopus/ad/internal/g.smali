.class public Lcom/octopus/ad/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/g;->b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/octopus/ad/internal/g;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/g;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/g;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/g;-><init>(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 11
    :goto_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_2

    return v0

    .line 12
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p0}, Lcom/octopus/ad/d/g;->a(Landroid/content/Context;)Lcom/octopus/ad/d/g;

    move-result-object p0

    iget-object p0, p0, Lcom/octopus/ad/d/g;->a:Lcom/octopus/ad/d/h;

    invoke-virtual {p0}, Lcom/octopus/ad/d/h;->a()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/g;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/g;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/g;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/g;->b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/g$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/g$1;-><init>(Lcom/octopus/ad/internal/g;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/g;->d:Ljava/lang/Runnable;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/internal/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v2, Lcom/octopus/ad/internal/g$2;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/g$2;-><init>(Lcom/octopus/ad/internal/g;)V

    const-wide/16 v5, 0xfa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    return-object p0
.end method

.method private c()Z
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    invoke-static {v2}, Lcom/octopus/ad/internal/g;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "##0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v4, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v4}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v5, 0x2e

    .line 8
    invoke-virtual {v4, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 9
    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 10
    iget v4, v2, Landroid/graphics/Rect;->left:I

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    .line 11
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-gt v4, v9, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    mul-int/2addr v4, v9

    int-to-double v9, v4

    mul-double/2addr v9, v7

    iget-object v4, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v11, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/2addr v4, v11

    int-to-double v11, v4

    div-double/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v9, v4

    cmpl-double v4, v9, v5

    if-gtz v4, :cond_3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_4

    iget-object v9, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    .line 13
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-gt v4, v9, :cond_4

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v9

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    mul-int/2addr v4, v9

    int-to-double v9, v4

    mul-double/2addr v9, v7

    iget-object v2, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    int-to-double v7, v2

    div-double/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v2, v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_4

    :cond_3
    return v0

    :cond_4
    return v1

    .line 15
    :goto_1
    const-string v2, "OctopusAd"

    const-string v3, "An Exception Caught"

    invoke-static {v2, v3, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/g;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/g;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/octopus/ad/internal/g;->b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 6
    iput-object v0, p0, Lcom/octopus/ad/internal/g;->a:Landroid/view/View;

    .line 7
    iput-object v0, p0, Lcom/octopus/ad/internal/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
