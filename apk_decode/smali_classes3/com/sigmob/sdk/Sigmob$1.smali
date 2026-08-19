.class Lcom/sigmob/sdk/Sigmob$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/track/TrackManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/Sigmob;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/Sigmob;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/Sigmob;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/Sigmob$1;->a:Lcom/sigmob/sdk/Sigmob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V
    .locals 2

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/VolleyError;)V

    return-void
.end method

.method public onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V
    .locals 2

    invoke-virtual {p1}, Lcom/czhj/sdk/common/track/AdTracker;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/czhj/sdk/common/track/AdTracker;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/volley/NetworkResponse;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method
