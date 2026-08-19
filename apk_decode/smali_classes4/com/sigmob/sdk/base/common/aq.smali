.class public Lcom/sigmob/sdk/base/common/aq;
.super Landroid/view/GestureDetector;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/sigmob/sdk/base/common/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/common/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/aq;->b:Lcom/sigmob/sdk/base/common/c;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/aq;->a:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/common/c;

    invoke-direct {v0, p2, p3}, Lcom/sigmob/sdk/base/common/c;-><init>(Landroid/view/View;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/base/common/aq;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sigmob/sdk/base/common/c;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4

    .line 2
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/aq;->b:Lcom/sigmob/sdk/base/common/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/c;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/aq;->b:Lcom/sigmob/sdk/base/common/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/c;->c()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/aq;->b:Lcom/sigmob/sdk/base/common/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/c;->d()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/aq;->a:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/sigmob/sdk/base/common/aq;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/aq;->a()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/aq;->b:Lcom/sigmob/sdk/base/common/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/c;->a()V

    return v0
.end method
