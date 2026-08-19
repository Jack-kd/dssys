.class public final synthetic Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/b;->b:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    iput-object p2, p0, Lo1/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/b;->b:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    iget-object v1, p0, Lo1/b;->c:Ljava/util/List;

    invoke-static {v0, v1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->b(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/util/List;)V

    return-void
.end method
