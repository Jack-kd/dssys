.class public Lcom/meishu/sdk/core/oaid/impl/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/oaid/impl/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/oaid/impl/b;->a(Lcom/meishu/sdk/core/oaid/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/oaid/impl/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/oaid/impl/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/oaid/impl/b$a;->a:Lcom/meishu/sdk/core/oaid/impl/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    sget v0, Lcom/meishu/sdk/core/oaid/repeackage/com/coolpad/deviceidsupport/a$a;->a:I

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
    const-string v0, "com.coolpad.deviceidsupport.IDeviceIdManager"

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
    instance-of v1, v0, Lcom/meishu/sdk/core/oaid/repeackage/com/coolpad/deviceidsupport/a;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    check-cast p1, Lcom/meishu/sdk/core/oaid/repeackage/com/coolpad/deviceidsupport/a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/meishu/sdk/core/oaid/repeackage/com/coolpad/deviceidsupport/a$a$a;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/meishu/sdk/core/oaid/repeackage/com/coolpad/deviceidsupport/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/core/oaid/impl/b$a;->a:Lcom/meishu/sdk/core/oaid/impl/b;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/meishu/sdk/core/oaid/impl/b;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/oaid/repeackage/com/coolpad/deviceidsupport/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_2
    new-instance p1, Lcom/meishu/sdk/core/oaid/OAIDException;

    .line 45
    .line 46
    const-string v0, "IDeviceIdManager is null"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/meishu/sdk/core/oaid/OAIDException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
