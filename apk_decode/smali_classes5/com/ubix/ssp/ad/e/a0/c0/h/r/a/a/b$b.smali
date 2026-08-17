.class Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;
.super Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJZFDLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 3

    .line 2
    const-string v0, "ubix_sp_special_seed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OAIDCallBack handleResult retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdvertisingIdPlatform"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    if-eqz p1, :cond_3

    const-string p1, "oa_id_flag"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    iput-object p1, p2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAIDCallBack handleResult success "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->b:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v1, "seed"

    invoke-static {p2, v0, v1, p1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "seed_time"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p2, v0, p1, v1, v2}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OAIDCallBack handleResult error retCode=$ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catchall_0
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
