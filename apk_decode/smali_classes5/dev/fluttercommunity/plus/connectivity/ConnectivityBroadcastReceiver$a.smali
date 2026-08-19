.class public Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;


# direct methods
.method public constructor <init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$a;->a:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$a;->a:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    .line 2
    .line 3
    invoke-static {v0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)Lo1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lo1/a;->a(Landroid/net/Network;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->e(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$a;->a:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    .line 2
    .line 3
    invoke-static {p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->c(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)Lo1/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lo1/a;->b(Landroid/net/NetworkCapabilities;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->e(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$a;->a:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    .line 2
    .line 3
    invoke-static {p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->d(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
