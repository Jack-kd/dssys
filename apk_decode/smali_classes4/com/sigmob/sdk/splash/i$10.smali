.class Lcom/sigmob/sdk/splash/i$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/i;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/sigmob/sdk/splash/i;

.field private c:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->b:Lcom/sigmob/sdk/splash/i;

    iput p2, p0, Lcom/sigmob/sdk/splash/i$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->c:Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->g(Lcom/sigmob/sdk/splash/i;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/i$10;->c:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v3, p0, Lcom/sigmob/sdk/splash/i$10;->c:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    iget v2, p0, Lcom/sigmob/sdk/splash/i$10;->a:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1, v1}, Lcom/sigmob/sdk/splash/i;->b(Lcom/sigmob/sdk/splash/i;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i$10;->c:Landroid/view/MotionEvent;

    invoke-virtual {p1, v2, p2, v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)V

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i$10;->b:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/splash/i;->e(Lcom/sigmob/sdk/splash/i;)V

    :cond_5
    :goto_0
    return v1
.end method
