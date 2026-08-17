.class Lcom/czhj/sdk/common/track/TrackManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/track/TrackManager$2;->onErrorResponse(Lcom/czhj/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/czhj/sdk/common/track/TrackManager$2;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/track/TrackManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager$2$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager$2;

    iget-boolean v1, v0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$isRetrySend:Z

    iget-object v0, v0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->setRetryCountInc()V

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager$2;

    iget-object v0, v0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->getRetryCount()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager$2;

    iget-object v0, v0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->deleteDB()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$2$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager$2;

    iget-object v0, v0, Lcom/czhj/sdk/common/track/TrackManager$2;->val$tracker:Lcom/czhj/sdk/common/track/AdTracker;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->updateToDB()V

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/track/AdTracker;->insertToDB(Lcom/czhj/sdk/common/Database/SQLiteTrackHelper$ExecCallBack;)V

    return-void
.end method
