.class public final synthetic Lo1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/c;->b:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/c;->b:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    invoke-static {v0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->a(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    return-void
.end method
