.class public Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lo1/a;

.field public d:Lio/flutter/plugin/common/EventChannel$EventSink;

.field public final e:Landroid/os/Handler;

.field public f:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo1/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->e:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->b:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c:Lo1/a;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f()V

    return-void
.end method

.method public static synthetic b(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->g(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic c(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)Lo1/a;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c:Lo1/a;

    return-object p0
.end method

.method public static bridge synthetic d(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->i()V

    return-void
.end method

.method public static bridge synthetic e(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->j(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final synthetic f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->d:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c:Lo1/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lo1/a;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final synthetic g(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->d:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c:Lo1/a;

    .line 7
    .line 8
    invoke-virtual {v1}, Lo1/a;->c()Landroid/net/ConnectivityManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    iput-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 22
    .line 23
    throw v1

    .line 24
    :catch_0
    iput-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    new-instance v0, Lo1/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lo1/c;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->e:Landroid/os/Handler;

    .line 7
    .line 8
    const-wide/16 v2, 0x1f4

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lo1/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lo1/b;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->e:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->d:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    new-instance p1, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$a;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$a;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 9
    .line 10
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c:Lo1/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lo1/a;->c()Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c:Lo1/a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lo1/a;->d()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->j(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->d:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c:Lo1/a;

    .line 6
    .line 7
    invoke-virtual {p2}, Lo1/a;->d()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
