.class Lcom/czhj/sdk/common/track/TrackManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/track/TrackingRequest$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/track/TrackManager;->sendTracking(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/track/BaseMacroCommon;ZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$inQueue:Z

.field final synthetic val$isRetrySend:Z

.field final synthetic val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

.field final synthetic val$tracker:Lcom/czhj/sdk/common/track/AdTracker;


# direct methods
.method public constructor <init>(ZLcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/track/TrackManager$Listener;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$isRetrySend:Z

    iput-object p2, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    iput-object p3, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    iput-boolean p4, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$inQueue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 2

    iget-object v0, p1, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    iget-boolean v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$inQueue:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->getRetryNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$isRetrySend:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/czhj/sdk/common/track/TrackManager$2$1;

    invoke-direct {v0, p0}, Lcom/czhj/sdk/common/track/TrackManager$2$1;-><init>(Lcom/czhj/sdk/common/track/TrackManager$2;)V

    invoke-static {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-interface {v0, v1, p1}, Lcom/czhj/sdk/common/track/TrackManager$Listener;->onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V

    :cond_2
    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/czhj/volley/NetworkResponse;)V
    .locals 2

    iget-boolean v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$isRetrySend:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/czhj/sdk/common/track/a;

    invoke-direct {v1, v0}, Lcom/czhj/sdk/common/track/a;-><init>(Lcom/czhj/sdk/common/track/AdTracker;)V

    invoke-static {v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->MainThreadRun(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-interface {v0, v1, p1}, Lcom/czhj/sdk/common/track/TrackManager$Listener;->onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V

    :cond_1
    return-void
.end method
