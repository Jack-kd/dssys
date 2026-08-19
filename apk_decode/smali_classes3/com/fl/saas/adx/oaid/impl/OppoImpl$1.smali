.class Lcom/fl/saas/adx/oaid/impl/OppoImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/oaid/impl/OAIDService$RemoteCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/oaid/impl/OppoImpl;->doGet(Lcom/fl/saas/adx/oaid/IGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/oaid/impl/OppoImpl;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/oaid/impl/OppoImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/oaid/impl/OppoImpl$1;->this$0:Lcom/fl/saas/adx/oaid/impl/OppoImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callRemoteInterface(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/oaid/impl/OppoImpl$1;->this$0:Lcom/fl/saas/adx/oaid/impl/OppoImpl;

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/oaid/impl/OppoImpl;->realGetOUID(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/fl/saas/adx/oaid/OAIDException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/fl/saas/adx/oaid/OAIDException;

    invoke-direct {v0, p1}, Lcom/fl/saas/adx/oaid/OAIDException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method
