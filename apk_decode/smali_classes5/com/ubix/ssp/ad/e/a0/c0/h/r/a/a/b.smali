.class public Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;,
        Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;
    }
.end annotation


# instance fields
.field public a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

.field public b:Landroid/content/Context;

.field public c:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;

.field public d:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;

.field public e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->c:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$b;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->d:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    const-string v0, "AdvertisingIdPlatform"

    const-string v1, "HonorSC"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    const-string v0, "disconnect"

    const-string v1, "AdvertisingIdPlatform"

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAIDClientImpl#disconnect#Disconnect error::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 4

    .line 2
    const-string v0, "com.hihonor.id"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.hihonor.id.HnOaIdService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    xor-int/lit8 p1, p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "AdvertisingIdPlatform"

    const-string v0, "onServiceConnected "

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;

    invoke-direct {v0, p0, p2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$a;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;Landroid/os/IBinder;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "AdvertisingIdPlatform"

    const-string v0, "onServiceDisconnected "

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
