.class Lcom/beizi/fusion/xm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/fk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/xm;->a(Lcom/beizi/fusion/lc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/xm;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/xm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/xm$a;->a:Lcom/beizi/fusion/xm;

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
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/beizi/fusion/sm/repeackage/com/samsung/android/deviceidservice/IDeviceIdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/beizi/fusion/sm/repeackage/com/samsung/android/deviceidservice/IDeviceIdService;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/beizi/fusion/sm/repeackage/com/samsung/android/deviceidservice/IDeviceIdService;->getOAID()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Lcom/beizi/fusion/vj;

    .line 13
    .line 14
    const-string v0, "IDeviceIdService is null"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/beizi/fusion/vj;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
