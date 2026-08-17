.class Lcom/sigmob/sdk/base/network/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/track/TrackManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/network/h;->a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic d:Lcom/czhj/sdk/common/track/TrackManager$Listener;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/sdk/common/track/TrackManager$Listener;)V
    .locals 0

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/network/h$1;->a:Z

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/h$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/h$1;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p4, p0, Lcom/sigmob/sdk/base/network/h$1;->d:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/network/h$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/h$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/h$1;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1, v0, v1, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/VolleyError;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/h$1;->d:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/czhj/sdk/common/track/TrackManager$Listener;->onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/network/h$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/h$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/h$1;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/h$1;->d:Lcom/czhj/sdk/common/track/TrackManager$Listener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/czhj/sdk/common/track/TrackManager$Listener;->onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V

    :cond_1
    return-void
.end method
