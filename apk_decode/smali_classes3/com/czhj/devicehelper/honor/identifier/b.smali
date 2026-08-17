.class public Lcom/czhj/devicehelper/honor/identifier/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/devicehelper/honor/identifier/b$a;,
        Lcom/czhj/devicehelper/honor/identifier/b$b;
    }
.end annotation


# instance fields
.field public a:Lcom/czhj/devicehelper/honor/identifier/a$a;

.field public b:Landroid/content/Context;

.field public c:Lcom/czhj/devicehelper/honor/identifier/b$a;

.field public d:Lcom/czhj/devicehelper/honor/identifier/b$b;

.field public e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/czhj/devicehelper/honor/identifier/a$a;

    invoke-direct {v0}, Lcom/czhj/devicehelper/honor/identifier/a$a;-><init>()V

    iput-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b;->a:Lcom/czhj/devicehelper/honor/identifier/a$a;

    new-instance v0, Lcom/czhj/devicehelper/honor/identifier/b$a;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/honor/identifier/b$a;-><init>(Lcom/czhj/devicehelper/honor/identifier/b;)V

    iput-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b;->c:Lcom/czhj/devicehelper/honor/identifier/b$a;

    new-instance v0, Lcom/czhj/devicehelper/honor/identifier/b$b;

    invoke-direct {v0, p0}, Lcom/czhj/devicehelper/honor/identifier/b$b;-><init>(Lcom/czhj/devicehelper/honor/identifier/b;)V

    iput-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b;->d:Lcom/czhj/devicehelper/honor/identifier/b$b;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OAIDClientImpl#disconnect#Disconnect error::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertisingIdPlatform"

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

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/czhj/devicehelper/honor/identifier/b$1;

    invoke-direct {v0, p0, p2}, Lcom/czhj/devicehelper/honor/identifier/b$1;-><init>(Lcom/czhj/devicehelper/honor/identifier/b;Landroid/os/IBinder;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/czhj/devicehelper/honor/identifier/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/czhj/devicehelper/honor/identifier/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
