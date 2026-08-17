.class public LXI/XI/K0/K0$XI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXI/XI/K0/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic XI:LXI/XI/K0/K0;


# direct methods
.method public constructor <init>(LXI/XI/K0/K0;)V
    .locals 0

    iput-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    .line 2
    .line 3
    sget v0, LXI/XI/XI/XI$XI;->XI:I

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "com.android.creator.IdsSupplier"

    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    instance-of v1, v0, LXI/XI/XI/XI;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    move-object p2, v0

    .line 22
    check-cast p2, LXI/XI/XI/XI;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, LXI/XI/XI/XI$XI$XI;

    .line 26
    .line 27
    invoke-direct {v0, p2}, LXI/XI/XI/XI$XI$XI;-><init>(Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    move-object p2, v0

    .line 31
    :goto_0
    iput-object p2, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 32
    .line 33
    iget-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    .line 34
    .line 35
    iget-object p1, p1, LXI/XI/K0/K0;->kM:LXI/XI/K0/xo;

    .line 36
    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-interface {p1, p2}, LXI/XI/K0/xo;->connectSuccess(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 5
    .line 6
    return-void
.end method
