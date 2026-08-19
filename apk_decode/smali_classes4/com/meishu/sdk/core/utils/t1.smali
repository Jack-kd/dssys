.class public Lcom/meishu/sdk/core/utils/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/t1;->a:[I

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v1, Lcom/meishu/sdk/core/utils/t1$a;

    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Lcom/meishu/sdk/core/utils/t1$a;-><init>(Lcom/meishu/sdk/core/utils/t1;Ljava/lang/ref/SoftReference;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static a(Landroid/view/View;FF)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 5
    aget v0, v0, v3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, v0

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    int-to-float v2, v4

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    return v3

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public a(FF)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/t1;->a:[I

    aget v2, v1, v0

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/meishu/sdk/core/utils/t1;->b:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    aget v1, v1, p1

    int-to-float v2, v1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/meishu/sdk/core/utils/t1;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    return p1

    :catch_0
    :cond_0
    return v0
.end method
