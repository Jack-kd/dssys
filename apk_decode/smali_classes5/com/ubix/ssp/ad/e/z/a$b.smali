.class Lcom/ubix/ssp/ad/e/z/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/z/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/z/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/z/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/a;->a(Lcom/ubix/ssp/ad/e/z/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    iget v1, v0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    const/4 v2, 0x3

    const/16 v3, -0x63

    if-ne v1, v3, :cond_1

    iput v2, v0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, v0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    if-gtz v1, :cond_2

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/a;->b(Lcom/ubix/ssp/ad/e/z/a;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    iput v3, v0, Lcom/ubix/ssp/ad/e/z/a;->w:I

    return-void

    :cond_2
    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    iget v3, v0, Lcom/ubix/ssp/ad/e/z/a;->A:I

    iget v4, v0, Lcom/ubix/ssp/ad/e/z/a;->B:I

    mul-int/2addr v3, v4

    if-gtz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    div-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/ubix/ssp/ad/e/z/a;->A:I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/ubix/ssp/ad/e/z/a;->B:I

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/a;->b(Lcom/ubix/ssp/ad/e/z/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/z/a$b;->a:Lcom/ubix/ssp/ad/e/z/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/z/a;->c(Lcom/ubix/ssp/ad/e/z/a;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
