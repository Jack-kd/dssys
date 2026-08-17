.class Lcom/ubix/ssp/ad/e/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/o;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->k:F

    iget v2, v0, Lcom/ubix/ssp/ad/e/o;->l:F

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/o;->a(Lcom/ubix/ssp/ad/e/o;)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v5, :cond_3

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->k:F

    iget v2, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    int-to-float v7, v2

    div-float/2addr v7, v6

    add-float/2addr v1, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->k:F

    iget v2, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    int-to-float v7, v2

    div-float/2addr v7, v6

    sub-float/2addr v1, v7

    :goto_0
    iget v0, v0, Lcom/ubix/ssp/ad/e/o;->l:F

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v2, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->k:F

    iget v2, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    int-to-float v7, v2

    div-float/2addr v7, v6

    add-float/2addr v1, v7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->k:F

    iget v2, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    int-to-float v7, v2

    div-float/2addr v7, v6

    sub-float/2addr v1, v7

    :goto_1
    iget v0, v0, Lcom/ubix/ssp/ad/e/o;->l:F

    int-to-float v2, v2

    div-float/2addr v2, v6

    sub-float v2, v0, v2

    :goto_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget-object v7, v0, Lcom/ubix/ssp/ad/e/o;->j:Landroid/graphics/Paint;

    iget v0, v0, Lcom/ubix/ssp/ad/e/o;->b:I

    rsub-int v0, v0, 0xff

    const/4 v8, 0x0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/o;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->v:F

    cmpl-float v2, v1, v6

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/o;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_6

    iput v8, v0, Lcom/ubix/ssp/ad/e/o;->b:I

    iput v8, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/o;->a(Lcom/ubix/ssp/ad/e/o;)I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    invoke-static {v0, v5}, Lcom/ubix/ssp/ad/e/o;->a(Lcom/ubix/ssp/ad/e/o;I)I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/o;->b(Lcom/ubix/ssp/ad/e/o;)I

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/ubix/ssp/ad/e/o;->a:I

    const/16 v2, 0x41

    if-le v1, v2, :cond_7

    iget v1, v0, Lcom/ubix/ssp/ad/e/o;->b:I

    iget v2, v0, Lcom/ubix/ssp/ad/e/o;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ubix/ssp/ad/e/o;->b:I

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/o;->d:Z

    if-eqz v1, :cond_8

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/o$a;->a:Lcom/ubix/ssp/ad/e/o;

    iput-boolean v8, v0, Lcom/ubix/ssp/ad/e/o;->d:Z

    return-void

    :cond_8
    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
