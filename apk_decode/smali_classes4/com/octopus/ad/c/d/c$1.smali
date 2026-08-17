.class Lcom/octopus/ad/c/d/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/c/d/c;->a(Landroid/content/Context;Lcom/octopus/ad/c/d/c$a;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/c/d/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/c/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/c/d/c$1;->a:Lcom/octopus/ad/c/d/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/c/d/c$1;->a:Lcom/octopus/ad/c/d/c;

    .line 3
    .line 4
    invoke-static {p2}, Lcom/octopus/ad/c/d/a$a;->a(Landroid/os/IBinder;)Lcom/octopus/ad/c/d/a;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Lcom/octopus/ad/c/d/c;->a(Lcom/octopus/ad/c/d/c;Lcom/octopus/ad/c/d/a;)Lcom/octopus/ad/c/d/a;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/octopus/ad/c/d/c$1;->a:Lcom/octopus/ad/c/d/c;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/octopus/ad/c/d/c;->a(Lcom/octopus/ad/c/d/c;)Lcom/octopus/ad/c/d/c$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/c/d/c$1;->a:Lcom/octopus/ad/c/d/c;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/c/d/c;->a(Lcom/octopus/ad/c/d/c;)Lcom/octopus/ad/c/d/c$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "Deviceid Service Connected"

    .line 26
    .line 27
    iget-object v0, p0, Lcom/octopus/ad/c/d/c$1;->a:Lcom/octopus/ad/c/d/c;

    .line 28
    .line 29
    invoke-interface {p1, p2, v0}, Lcom/octopus/ad/c/d/c$a;->a(Ljava/lang/Object;Lcom/octopus/ad/c/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/c/d/c$1;->a:Lcom/octopus/ad/c/d/c;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/octopus/ad/c/d/c;->a(Lcom/octopus/ad/c/d/c;Lcom/octopus/ad/c/d/a;)Lcom/octopus/ad/c/d/a;

    .line 5
    .line 6
    .line 7
    return-void
.end method
