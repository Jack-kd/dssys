.class Lcom/czhj/sdk/common/track/TrackManager$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/track/TrackManager$1;->onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/czhj/sdk/common/track/TrackManager$1;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/track/TrackManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/track/TrackManager$1$2;->this$1:Lcom/czhj/sdk/common/track/TrackManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/track/TrackManager$1$2;->this$1:Lcom/czhj/sdk/common/track/TrackManager$1;

    iget-object v0, v0, Lcom/czhj/sdk/common/track/TrackManager$1;->this$0:Lcom/czhj/sdk/common/track/TrackManager;

    invoke-static {v0}, Lcom/czhj/sdk/common/track/TrackManager;->access$000(Lcom/czhj/sdk/common/track/TrackManager;)V

    return-void
.end method
