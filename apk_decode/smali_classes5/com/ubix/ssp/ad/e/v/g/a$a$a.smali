.class Lcom/ubix/ssp/ad/e/v/g/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/v/g/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/v/g/a$a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/g/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/v/e$a;

    iget-object p3, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p3, p3, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {p3, p2}, Lcom/ubix/ssp/ad/e/v/g/a;->d(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object v1, v0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/v/g/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v0}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/v/e$a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v1, p1, p2}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/v/e$a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/v/g/a$a$a;->a:Lcom/ubix/ssp/ad/e/v/g/a$a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    const/4 v0, 0x5

    const-string v1, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ubix/ssp/ad/e/v/g/a;->c(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
