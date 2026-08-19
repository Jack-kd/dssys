.class public Lcom/octopus/ad/internal/h;
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
    iput-object p1, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/h;->b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/octopus/ad/internal/h;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/h;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    return-object p1
.end method

.method public static a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/h;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/h;-><init>(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/h;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/internal/h;->b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/h;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/h;)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/octopus/ad/internal/h;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/h;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/h;->b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/h$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/h$1;-><init>(Lcom/octopus/ad/internal/h;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/h;->d:Ljava/lang/Runnable;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/octopus/ad/internal/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v2, Lcom/octopus/ad/internal/h$2;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/h$2;-><init>(Lcom/octopus/ad/internal/h;)V

    const-wide/16 v5, 0xfa

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/h;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private c()Z
    .locals 13

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x1

    .line 5
    :try_start_0
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "##0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v4}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v5, 0x2e

    .line 7
    invoke-virtual {v4, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 8
    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 9
    iget v4, v0, Landroid/graphics/Rect;->left:I

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    .line 10
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-gt v4, v9, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    iget v9, v0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v4, v9

    int-to-double v9, v4

    mul-double/2addr v9, v7

    iget-object v4, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v11, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

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

    if-gtz v4, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_3

    iget-object v9, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    .line 12
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-gt v4, v9, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v0

    mul-int/2addr v4, v9

    int-to-double v9, v4

    mul-double/2addr v9, v7

    iget-object v0, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/2addr v0, v4

    int-to-double v7, v0

    div-double/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v3, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1

    .line 14
    :goto_1
    const-string v1, "OctopusAd"

    const-string v3, "An Exception Caught"

    invoke-static {v1, v3, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/h;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/h;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/h;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 8
    iput-object v1, p0, Lcom/octopus/ad/internal/h;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 10
    iget-object v2, p0, Lcom/octopus/ad/internal/h;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    iput-object v1, p0, Lcom/octopus/ad/internal/h;->a:Landroid/view/View;

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/octopus/ad/internal/h;->b:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    return-void
.end method
