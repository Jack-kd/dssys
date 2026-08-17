.class Lcom/ubix/ssp/ad/e/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/h;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/h;->p:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->a(Lcom/ubix/ssp/ad/e/h;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->a(Lcom/ubix/ssp/ad/e/h;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->b(Lcom/ubix/ssp/ad/e/h;)I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->h(Lcom/ubix/ssp/ad/e/h;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/h;->a(Lcom/ubix/ssp/ad/e/h;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/h;->b(Lcom/ubix/ssp/ad/e/h;I)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->h(Lcom/ubix/ssp/ad/e/h;)I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/h;->i(Lcom/ubix/ssp/ad/e/h;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/h;->c(Lcom/ubix/ssp/ad/e/h;I)I

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->h(Lcom/ubix/ssp/ad/e/h;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/h;->k(Lcom/ubix/ssp/ad/e/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/h;->k(Lcom/ubix/ssp/ad/e/h;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/e/h$b;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/h$b;->c()I

    move-result v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/h;->i(Lcom/ubix/ssp/ad/e/h;)I

    move-result v4

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/h;->l(Lcom/ubix/ssp/ad/e/h;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/h$b;->a(Lcom/ubix/ssp/ad/e/h$b;Z)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    iget-boolean v4, v3, Lcom/ubix/ssp/ad/e/h;->z:Z

    if-nez v4, :cond_4

    invoke-static {v3, v2}, Lcom/ubix/ssp/ad/e/h;->a(Lcom/ubix/ssp/ad/e/h;Lcom/ubix/ssp/ad/e/h$b;)V

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    iget-boolean v3, v3, Lcom/ubix/ssp/ad/e/h;->z:Z

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/h$b;->c()I

    move-result v3

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/h$b;->f(Lcom/ubix/ssp/ad/e/h$b;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/h$b;->b(I)V

    :cond_5
    invoke-static {v2}, Lcom/ubix/ssp/ad/e/h$b;->e(Lcom/ubix/ssp/ad/e/h$b;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    iget-boolean v2, v1, Lcom/ubix/ssp/ad/e/h;->z:Z

    if-nez v2, :cond_8

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h;->l(Lcom/ubix/ssp/ad/e/h;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h;->c(Lcom/ubix/ssp/ad/e/h;)V

    :cond_8
    move v1, v0

    :cond_9
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->k(Lcom/ubix/ssp/ad/e/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->k(Lcom/ubix/ssp/ad/e/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_b

    :goto_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/h;->e(Lcom/ubix/ssp/ad/e/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/h$a;->a:Lcom/ubix/ssp/ad/e/h;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/h;->d(Lcom/ubix/ssp/ad/e/h;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_3
    return-void
.end method
