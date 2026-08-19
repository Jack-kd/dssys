.class Lcom/czhj/sdk/common/track/TrackManager$3;
.super Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/track/TrackManager;->startRetryTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/czhj/sdk/common/track/TrackManager;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/track/TrackManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager$3;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    invoke-direct {p0, p2}, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$3;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    invoke-static {v0}, Lcom/czhj/sdk/common/track/TrackManager;->access$200(Lcom/czhj/sdk/common/track/TrackManager;)V

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$3;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    invoke-static {v0}, Lcom/czhj/sdk/common/track/TrackManager;->access$400(Lcom/czhj/sdk/common/track/TrackManager;)Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager$3;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    invoke-static {v1}, Lcom/czhj/sdk/common/track/TrackManager;->access$300(Lcom/czhj/sdk/common/track/TrackManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/czhj/sdk/common/ThreadPool/RepeatingHandlerRunnable;->startRepeating(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryFaildTracking error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method
