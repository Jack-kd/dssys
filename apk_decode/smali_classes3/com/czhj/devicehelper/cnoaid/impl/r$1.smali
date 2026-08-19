.class Lcom/czhj/devicehelper/cnoaid/impl/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/devicehelper/cnoaid/impl/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/devicehelper/cnoaid/impl/r;->a(Lcom/czhj/devicehelper/cnoaid/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/devicehelper/cnoaid/impl/r;


# direct methods
.method public constructor <init>(Lcom/czhj/devicehelper/cnoaid/impl/r;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/devicehelper/cnoaid/impl/r$1;->a:Lcom/czhj/devicehelper/cnoaid/impl/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/czhj/devicehelper/cnoaid/f;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/devicehelper/cnoaid/com/samsung/android/deviceidservice/IDeviceIdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/czhj/devicehelper/cnoaid/com/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/czhj/devicehelper/cnoaid/com/samsung/android/deviceidservice/IDeviceIdService;->getOAID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/czhj/devicehelper/cnoaid/f;

    const-string v0, "IDeviceIdService is null"

    invoke-direct {p1, v0}, Lcom/czhj/devicehelper/cnoaid/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method
