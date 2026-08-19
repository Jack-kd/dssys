.class Lcom/czhj/devicehelper/honor/identifier/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/devicehelper/honor/identifier/b;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/czhj/devicehelper/honor/identifier/b;


# direct methods
.method public constructor <init>(Lcom/czhj/devicehelper/honor/identifier/b;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->b:Lcom/czhj/devicehelper/honor/identifier/b;

    iput-object p2, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "com.hihonor.cloudservice.oaid.IOAIDService"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/czhj/devicehelper/honor/oaid/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/czhj/devicehelper/honor/oaid/b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/czhj/devicehelper/honor/oaid/b$a$a;

    iget-object v1, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->a:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Lcom/czhj/devicehelper/honor/oaid/b$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->b:Lcom/czhj/devicehelper/honor/identifier/b;

    iget-object v1, v1, Lcom/czhj/devicehelper/honor/identifier/b;->c:Lcom/czhj/devicehelper/honor/identifier/b$a;

    invoke-interface {v0, v1}, Lcom/czhj/devicehelper/honor/oaid/b;->a(Lcom/czhj/devicehelper/honor/oaid/a$a;)V

    iget-object v1, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->b:Lcom/czhj/devicehelper/honor/identifier/b;

    iget-object v1, v1, Lcom/czhj/devicehelper/honor/identifier/b;->d:Lcom/czhj/devicehelper/honor/identifier/b$b;

    invoke-interface {v0, v1}, Lcom/czhj/devicehelper/honor/oaid/b;->b(Lcom/czhj/devicehelper/honor/oaid/a$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertisingIdPlatform"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->b:Lcom/czhj/devicehelper/honor/identifier/b;

    iget-object v0, v0, Lcom/czhj/devicehelper/honor/identifier/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->b:Lcom/czhj/devicehelper/honor/identifier/b;

    iget-object v0, v0, Lcom/czhj/devicehelper/honor/identifier/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/czhj/devicehelper/honor/identifier/b$1;->b:Lcom/czhj/devicehelper/honor/identifier/b;

    invoke-virtual {v0}, Lcom/czhj/devicehelper/honor/identifier/b;->a()V

    return-void
.end method
