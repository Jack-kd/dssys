.class Lcom/ubix/ssp/ad/e/v/g/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/v/g/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/v/e$b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:I

.field final synthetic e:Lcom/ubix/ssp/ad/e/v/g/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/ad/e/v/e$b;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->a:Lcom/ubix/ssp/ad/e/v/e$b;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->c:Landroid/widget/ImageView;

    iput p5, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    new-instance v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lcom/ubix/ssp/ad/e/v/e$a;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->a:Lcom/ubix/ssp/ad/e/v/e$b;

    invoke-direct {v2, v3}, Lcom/ubix/ssp/ad/e/v/e$a;-><init>(Lcom/ubix/ssp/ad/e/v/e$b;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/v/e$a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/v/e$a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    const/4 v2, 0x3

    const-string v3, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->i(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/v/g/a;->b(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->d:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/c;->b()Lcom/ubix/ssp/ad/e/v/c;

    move-result-object v0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->b:Ljava/lang/String;

    new-instance v3, Lcom/ubix/ssp/ad/e/v/g/a$a$a;

    invoke-direct {v3, p0}, Lcom/ubix/ssp/ad/e/v/g/a$a$a;-><init>(Lcom/ubix/ssp/ad/e/v/g/a$a;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/ubix/ssp/ad/e/v/c;->a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/b;)V

    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/v/e$a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/g/a$a;->e:Lcom/ubix/ssp/ad/e/v/g/a;

    const/16 v2, 0x9

    const-string v3, "\u5185\u5bb9\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v2, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/v/g/a;->a(Lcom/ubix/ssp/ad/e/v/g/a;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
