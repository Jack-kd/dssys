.class Lcom/fl/saas/adx/oaid/impl/OAIDService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;
    }
.end annotation


# instance fields
.field private final caller:Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;

.field private final context:Landroid/content/Context;

.field private final getter:Lcom/fl/saas/adx/oaid/IGetter;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/oaid/IGetter;Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->context:Landroid/content/Context;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->getter:Lcom/fl/saas/adx/oaid/IGetter;

    iput-object p3, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->caller:Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;

    return-void
.end method

.method public static bind(Landroid/content/Context;Landroid/content/Intent;Lcom/fl/saas/adx/oaid/IGetter;Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/oaid/impl/OAIDService;

    invoke-direct {v0, p0, p2, p3}, Lcom/fl/saas/adx/oaid/impl/OAIDService;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/oaid/IGetter;Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;)V

    invoke-direct {v0, p1}, Lcom/fl/saas/adx/oaid/impl/OAIDService;->bind(Landroid/content/Intent;)V

    return-void
.end method

.method private bind(Landroid/content/Intent;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service has been bound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fl/saas/adx/oaid/OAIDException;

    const-string v0, "Service binding failed"

    invoke-direct {p1, v0}, Lcom/fl/saas/adx/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->getter:Lcom/fl/saas/adx/oaid/IGetter;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/oaid/IGetter;->onOAIDGetError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Service has been unbound: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service has been connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->caller:Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;

    invoke-interface {v1, p2}, Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;->callRemoteInterface(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OAID/AAID acquire success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->getter:Lcom/fl/saas/adx/oaid/IGetter;

    invoke-interface {v1, p2}, Lcom/fl/saas/adx/oaid/IGetter;->onOAIDGetComplete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->context:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p2, Lcom/fl/saas/adx/oaid/OAIDException;

    const-string v1, "OAID/AAID acquire failed"

    invoke-direct {p2, v1}, Lcom/fl/saas/adx/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-static {p2}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->getter:Lcom/fl/saas/adx/oaid/IGetter;

    invoke-interface {v1, p2}, Lcom/fl/saas/adx/oaid/IGetter;->onOAIDGetError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object p2, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->context:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    return-void

    :catchall_2
    move-exception p2

    :try_start_5
    iget-object v1, p0, Lcom/fl/saas/adx/oaid/impl/OAIDService;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    :goto_2
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service has been disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return-void
.end method
