.class Lcom/czhj/sdk/common/track/TrackManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/track/TrackManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/track/TrackManager;->sendRetryTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/czhj/sdk/common/track/TrackManager;

.field final synthetic val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/track/TrackManager;Lcom/czhj/sdk/common/track/TrackManager$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    iput-object p2, p0, Lcom/czhj/sdk/common/track/TrackManager$1;->val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$1;->val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/czhj/sdk/common/track/TrackManager$Listener;->onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V

    iget-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    invoke-static {p1}, Lcom/czhj/sdk/common/track/TrackManager;->access$100(Lcom/czhj/sdk/common/track/TrackManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/czhj/sdk/common/track/TrackManager$1$2;

    invoke-direct {p2, p0}, Lcom/czhj/sdk/common/track/TrackManager$1$2;-><init>(Lcom/czhj/sdk/common/track/TrackManager$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$1;->val$listener:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    invoke-interface {v0, p1, p2}, Lcom/czhj/sdk/common/track/TrackManager$Listener;->onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V

    iget-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    invoke-static {p1}, Lcom/czhj/sdk/common/track/TrackManager;->access$100(Lcom/czhj/sdk/common/track/TrackManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/czhj/sdk/common/track/TrackManager$1$1;

    invoke-direct {p2, p0}, Lcom/czhj/sdk/common/track/TrackManager$1$1;-><init>(Lcom/czhj/sdk/common/track/TrackManager$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
