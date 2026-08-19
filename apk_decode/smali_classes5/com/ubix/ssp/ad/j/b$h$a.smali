.class Lcom/ubix/ssp/ad/j/b$h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b$h;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/j/b$h;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/b$h;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$h$a;->a:Lcom/ubix/ssp/ad/j/b$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/b0/b;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$h$a;->a:Lcom/ubix/ssp/ad/j/b$h;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/b$h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$h$a;->a:Lcom/ubix/ssp/ad/j/b$h;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/b$h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$h$a;->a:Lcom/ubix/ssp/ad/j/b$h;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/b$h;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->g(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/b$h$a;->a:Lcom/ubix/ssp/ad/j/b$h;

    iget-object v0, v0, Lcom/ubix/ssp/ad/j/b$h;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/b;->g(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
