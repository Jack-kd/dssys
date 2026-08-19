.class public Lcom/octopus/ad/c/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Lcom/octopus/ad/c/h/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/c/h/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/c/h/d;->a:Lcom/octopus/ad/c/h/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/c/h/d;->a:Lcom/octopus/ad/c/h/a;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/octopus/ad/c/h/c$a;->a(Landroid/os/IBinder;)Lcom/octopus/ad/c/h/c;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/octopus/ad/c/h/a;->a:Lcom/octopus/ad/c/h/c;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/c/h/d;->a:Lcom/octopus/ad/c/h/a;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/octopus/ad/c/h/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/octopus/ad/c/h/d;->a:Lcom/octopus/ad/c/h/a;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/octopus/ad/c/h/a;->d:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 19
    .line 20
    .line 21
    monitor-exit p1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p2

    .line 24
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/c/h/d;->a:Lcom/octopus/ad/c/h/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/octopus/ad/c/h/a;->a:Lcom/octopus/ad/c/h/c;

    .line 5
    .line 6
    return-void
.end method
