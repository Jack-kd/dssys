.class Lcom/ubix/ssp/ad/j/b$h;
.super Lcom/ubix/ssp/ad/e/a0/b0/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/b;->a(JLjava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/ubix/ssp/ad/j/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/b$h;->b:Lcom/ubix/ssp/ad/j/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/j/b$h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->c(Landroid/app/Activity;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ubix/ssp/ad/j/b$h$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/j/b$h$a;-><init>(Lcom/ubix/ssp/ad/j/b$h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->e(Landroid/app/Activity;)V

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/b0/b;->a()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b$h;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b$h;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/j/b;->g(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/b$h;->b:Lcom/ubix/ssp/ad/j/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/j/b;->g(Lcom/ubix/ssp/ad/j/b;)Lcom/ubix/ssp/ad/e/a0/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/g;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
