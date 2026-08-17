.class public final LXI/kM/XI/XI/XI/XI$XI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXI/kM/XI/XI/XI/XI;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic K0:LXI/kM/XI/XI/XI/XI;

.field public final synthetic XI:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(LXI/kM/XI/XI/XI/XI;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, LXI/kM/XI/XI/XI/XI$XI;->K0:LXI/kM/XI/XI/XI/XI;

    iput-object p2, p0, LXI/kM/XI/XI/XI/XI$XI;->XI:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LXI/kM/XI/XI/XI/XI$XI;->K0:LXI/kM/XI/XI/XI/XI;

    .line 5
    .line 6
    iget-object v0, v0, LXI/kM/XI/XI/XI/XI;->K0:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    .line 8
    iget-object v1, p0, LXI/kM/XI/XI/XI/XI$XI;->XI:Landroid/os/IBinder;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    return-void
.end method
