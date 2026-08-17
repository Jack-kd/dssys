.class Lcom/ubix/ssp/ad/i/e/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/e/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/i/e/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/e/a;->c(Lcom/ubix/ssp/ad/i/e/a;)Landroid/graphics/Path;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    float-to-double v2, v2

    int-to-double v4, v0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/e/a;->d(Lcom/ubix/ssp/ad/i/e/a;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/e/a;->e(Lcom/ubix/ssp/ad/i/e/a;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "__TRI_VAL__"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/e/a;->e(Lcom/ubix/ssp/ad/i/e/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "__CLICK_AREA__"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/e/a;->e(Lcom/ubix/ssp/ad/i/e/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/e/a;->f(Lcom/ubix/ssp/ad/i/e/a;)I

    move-result v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/e/a;->e(Lcom/ubix/ssp/ad/i/e/a;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/ubix/ssp/ad/g/k/g;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/e/a;->c(Lcom/ubix/ssp/ad/i/e/a;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$f;->a:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
