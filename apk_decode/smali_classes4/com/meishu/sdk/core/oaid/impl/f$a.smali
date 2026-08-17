.class public Lcom/meishu/sdk/core/oaid/impl/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/oaid/impl/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/oaid/impl/f;->a(Lcom/meishu/sdk/core/oaid/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/oaid/impl/f;)V
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
    sget v0, Lcom/meishu/sdk/core/oaid/repeackage/com/google/android/gms/ads/identifier/internal/a$a;->a:I

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
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

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
    instance-of v1, v0, Lcom/meishu/sdk/core/oaid/repeackage/com/google/android/gms/ads/identifier/internal/a;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    check-cast p1, Lcom/meishu/sdk/core/oaid/repeackage/com/google/android/gms/ads/identifier/internal/a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/meishu/sdk/core/oaid/repeackage/com/google/android/gms/ads/identifier/internal/a$a$a;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/meishu/sdk/core/oaid/repeackage/com/google/android/gms/ads/identifier/internal/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :goto_0
    const/4 v0, 0x1

    .line 30
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/oaid/repeackage/com/google/android/gms/ads/identifier/internal/a;->a(Z)Z

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/meishu/sdk/core/oaid/repeackage/com/google/android/gms/ads/identifier/internal/a;->c()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method
