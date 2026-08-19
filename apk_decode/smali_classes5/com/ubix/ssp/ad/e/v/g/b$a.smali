.class Lcom/ubix/ssp/ad/e/v/g/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/b0/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/v/g/b;->a(Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/e/v/g/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/g/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    iput p2, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCacheAvailable ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1, p3}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;I)I

    iget p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->a:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;)Lcom/ubix/ssp/ad/e/v/e$a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;)Lcom/ubix/ssp/ad/e/v/e$a;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    const/4 v1, 0x3

    const-string v2, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/a0/a;->i(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->a:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/16 p1, 0x64

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/b;->b(Lcom/ubix/ssp/ad/e/v/g/b;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;Z)Z

    sget-object p1, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-virtual {p1, p0}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Lcom/ubix/ssp/ad/e/b0/h/b;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;)Lcom/ubix/ssp/ad/e/v/e$a;

    move-result-object p1

    iget-object p3, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    sget-object v0, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-virtual {v0, p2}, Lcom/ubix/ssp/ad/e/b0/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/b;->c(Lcom/ubix/ssp/ad/e/v/g/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/b;->c(Lcom/ubix/ssp/ad/e/v/g/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/v/g/b;->c(Lcom/ubix/ssp/ad/e/v/g/b;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b$a;->b:Lcom/ubix/ssp/ad/e/v/g/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Lcom/ubix/ssp/ad/e/v/g/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method
