.class public abstract Lcom/baidu/mobads/sdk/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/internal/j$a;,
        Lcom/baidu/mobads/sdk/internal/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "BaseTask"

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static j:Lcom/baidu/mobads/sdk/internal/j$b;


# instance fields
.field protected a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "default"

    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/j;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/j;->f:Ljava/lang/String;

    return-void
.end method

.method private static k()Landroid/os/Handler;
    .locals 3

    .line 1
    const-class v0, Lcom/baidu/mobads/sdk/internal/j;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/baidu/mobads/sdk/internal/j;->j:Lcom/baidu/mobads/sdk/internal/j$b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/baidu/mobads/sdk/internal/j$b;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Lcom/baidu/mobads/sdk/internal/j$b;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/baidu/mobads/sdk/internal/j;->j:Lcom/baidu/mobads/sdk/internal/j$b;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object v1, Lcom/baidu/mobads/sdk/internal/j;->j:Lcom/baidu/mobads/sdk/internal/j$b;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/baidu/mobads/sdk/internal/j;->g:J

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/j;->a:Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/j;->a:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/j;->k()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/baidu/mobads/sdk/internal/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobads/sdk/internal/j$a;-><init>(Lcom/baidu/mobads/sdk/internal/j;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/baidu/mobads/sdk/internal/j;->a(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/j;->a:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/j;->a:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public e()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/baidu/mobads/sdk/internal/j;->h:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/baidu/mobads/sdk/internal/j;->g:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public f()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/baidu/mobads/sdk/internal/j;->i:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/baidu/mobads/sdk/internal/j;->g:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public g()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/baidu/mobads/sdk/internal/j;->i:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/baidu/mobads/sdk/internal/j;->h:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public h()Lcom/baidu/mobads/sdk/internal/j;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/baidu/mobads/sdk/internal/j;->h:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/j;->i()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/j;->k()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lcom/baidu/mobads/sdk/internal/j$a;

    .line 16
    .line 17
    invoke-direct {v2, p0, v0}, Lcom/baidu/mobads/sdk/internal/j$a;-><init>(Lcom/baidu/mobads/sdk/internal/j;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/baidu/mobads/sdk/internal/j;->i:J

    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/j;->k()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lcom/baidu/mobads/sdk/internal/j$a;

    .line 41
    .line 42
    invoke-direct {v2, p0, v0}, Lcom/baidu/mobads/sdk/internal/j$a;-><init>(Lcom/baidu/mobads/sdk/internal/j;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    iput-wide v1, p0, Lcom/baidu/mobads/sdk/internal/j;->i:J

    .line 60
    .line 61
    throw v0
.end method

.method public abstract i()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/mobads/sdk/internal/j;->h()Lcom/baidu/mobads/sdk/internal/j;

    .line 2
    .line 3
    .line 4
    return-void
.end method
