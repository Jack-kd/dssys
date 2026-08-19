.class public LXI/K0/XI/XI$K0$XI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXI/K0/XI/XI$K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic XI:LXI/K0/XI/XI$K0;


# direct methods
.method public constructor <init>(LXI/K0/XI/XI$K0;)V
    .locals 0

    iput-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    .line 2
    .line 3
    sget v0, LXI/K0/XI/XI$XI;->XI:I

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
    const-string v0, "com.heytap.openid.IOpenID"

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
    instance-of v1, v0, LXI/K0/XI/XI;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    move-object p2, v0

    .line 22
    check-cast p2, LXI/K0/XI/XI;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, LXI/K0/XI/XI$XI$XI;

    .line 26
    .line 27
    invoke-direct {v0, p2}, LXI/K0/XI/XI$XI$XI;-><init>(Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    move-object p2, v0

    .line 31
    :goto_0
    iput-object p2, p1, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    .line 32
    .line 33
    iget-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    .line 34
    .line 35
    iget-object p1, p1, LXI/K0/XI/XI$K0;->xo:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object p2, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    .line 39
    .line 40
    iget-object p2, p2, LXI/K0/XI/XI$K0;->xo:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 43
    .line 44
    .line 45
    monitor-exit p1

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    const/4 v0, 0x0

    iput-object v0, p1, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    return-void
.end method
