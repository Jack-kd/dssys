.class Lcom/umeng/analytics/pro/bm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/pro/bm;->a(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/bm;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/bm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm$1;->a:Lcom/umeng/analytics/pro/bm;

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
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/umeng/analytics/pro/eu$b;->a(Landroid/os/IBinder;)Lcom/umeng/analytics/pro/eu;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_1
    iget-object p2, p0, Lcom/umeng/analytics/pro/bm$1;->a:Lcom/umeng/analytics/pro/bm;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/umeng/analytics/pro/eu;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2, p1}, Lcom/umeng/analytics/pro/bm;->a(Lcom/umeng/analytics/pro/bm;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/umeng/analytics/pro/bm$1;->a:Lcom/umeng/analytics/pro/bm;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/umeng/analytics/pro/bm;->a(Lcom/umeng/analytics/pro/bm;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    iget-object p1, p0, Lcom/umeng/analytics/pro/bm$1;->a:Lcom/umeng/analytics/pro/bm;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/umeng/analytics/pro/bm;->b(Lcom/umeng/analytics/pro/bm;)Ljava/util/concurrent/CountDownLatch;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    iget-object p2, p0, Lcom/umeng/analytics/pro/bm$1;->a:Lcom/umeng/analytics/pro/bm;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/umeng/analytics/pro/bm;->b(Lcom/umeng/analytics/pro/bm;)Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :catch_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/bm$1;->a:Lcom/umeng/analytics/pro/bm;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/umeng/analytics/pro/bm;->b(Lcom/umeng/analytics/pro/bm;)Ljava/util/concurrent/CountDownLatch;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    :goto_1
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
