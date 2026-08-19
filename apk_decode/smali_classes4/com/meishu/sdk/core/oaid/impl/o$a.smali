.class public Lcom/meishu/sdk/core/oaid/impl/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/oaid/impl/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/oaid/impl/o;->a(Lcom/meishu/sdk/core/oaid/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/oaid/impl/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meishu/sdk/core/oaid/OAIDException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/meishu/sdk/core/oaid/repeackage/com/samsung/android/deviceidservice/a$a;->a:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    instance-of v1, v0, Lcom/meishu/sdk/core/oaid/repeackage/com/samsung/android/deviceidservice/a;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    check-cast p1, Lcom/meishu/sdk/core/oaid/repeackage/com/samsung/android/deviceidservice/a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/meishu/sdk/core/oaid/repeackage/com/samsung/android/deviceidservice/a$a$a;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/meishu/sdk/core/oaid/repeackage/com/samsung/android/deviceidservice/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/meishu/sdk/core/oaid/repeackage/com/samsung/android/deviceidservice/a;->a()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_2
    new-instance p1, Lcom/meishu/sdk/core/oaid/OAIDException;

    .line 37
    .line 38
    const-string v0, "IDeviceIdService is null"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
