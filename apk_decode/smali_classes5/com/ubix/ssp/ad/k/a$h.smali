.class Lcom/ubix/ssp/ad/k/a$h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/k/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->C(Lcom/ubix/ssp/ad/k/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    iget v1, v0, Lcom/ubix/ssp/ad/k/a;->j0:I

    const/16 v2, -0x63

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    iput v1, v0, Lcom/ubix/ssp/ad/k/a;->j0:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget v1, v0, Lcom/ubix/ssp/ad/k/a;->j0:I

    if-gtz v1, :cond_3

    iput v2, v0, Lcom/ubix/ssp/ad/k/a;->j0:I

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->D(Lcom/ubix/ssp/ad/k/a;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    iget v1, v0, Lcom/ubix/ssp/ad/k/a;->n0:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ubix/ssp/ad/k/a;->n0:I

    if-ge v1, v2, :cond_2

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/k/a;->b(Lcom/ubix/ssp/ad/k/a;Z)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const v1, 0x7a184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    iget v2, v0, Lcom/ubix/ssp/ad/k/a;->l0:I

    iget v3, v0, Lcom/ubix/ssp/ad/k/a;->m0:I

    mul-int/2addr v2, v3

    if-gtz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/ubix/ssp/ad/k/a;->l0:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/ubix/ssp/ad/k/a;->m0:I

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$h;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->D(Lcom/ubix/ssp/ad/k/a;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
