.class Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "AdvertisingIdPlatform"

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->a:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "com.hihonor.cloudservice.oaid.IOAIDService"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/c;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/c;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/b;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->a:Landroid/os/IBinder;

    invoke-direct {v1, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/b;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected-debug4-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->c:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;

    invoke-interface {v1, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/c;->a(Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/a$a;)V

    const-string v2, "onServiceConnected-debug5-"

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->d:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;

    invoke-interface {v1, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/c;->b(Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/a$a;)V

    const-string v1, "onServiceConnected-debug6-"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v1

    const-string v2, "onServiceConnected4"

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a()V

    return-void
.end method
