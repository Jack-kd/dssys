.class Lcom/ubix/ssp/ad/e/a0/s$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/s;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/s;->b(Lcom/ubix/ssp/ad/e/a0/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/s;->c(Lcom/ubix/ssp/ad/e/a0/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"acc\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/s;->b(Lcom/ubix/ssp/ad/e/a0/s;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",\"angle\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/s;->c(Lcom/ubix/ssp/ad/e/a0/s;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/s;->d(Lcom/ubix/ssp/ad/e/a0/s;)Lcom/ubix/ssp/ad/e/a0/s$e;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/s$c;->b:Lcom/ubix/ssp/ad/e/a0/s;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/s;->d(Lcom/ubix/ssp/ad/e/a0/s;)Lcom/ubix/ssp/ad/e/a0/s$e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ubix/ssp/ad/e/a0/s$e;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
