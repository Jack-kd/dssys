.class Lcom/ubix/ssp/ad/h/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/h/a;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/h/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/a$e;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget v0, Lcom/ubix/ssp/ad/d/b;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$e;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->q(Lcom/ubix/ssp/ad/h/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$e;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->r(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$e;->a:Lcom/ubix/ssp/ad/h/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/h/a;->setShakeSensor(Landroid/view/View;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$e;->a:Lcom/ubix/ssp/ad/h/a;

    const v1, 0x61a81

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/ubix/ssp/ad/e/g;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/g;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$e;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->n(Lcom/ubix/ssp/ad/h/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$e;->a:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->n(Lcom/ubix/ssp/ad/h/a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
