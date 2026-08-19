.class Lcom/sigmob/sdk/videoAd/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/track/TrackManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/e;->t(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/e;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/e;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/e$1;->a:Lcom/sigmob/sdk/videoAd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/VolleyError;)V
    .locals 2

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/e$1;->a:Lcom/sigmob/sdk/videoAd/e;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/e$1;->a:Lcom/sigmob/sdk/videoAd/e;

    const-string p2, "0"

    const-string v0, "1"

    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v0}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/volley/NetworkResponse;)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/e$1;->a:Lcom/sigmob/sdk/videoAd/e;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/e$1;->a:Lcom/sigmob/sdk/videoAd/e;

    const/4 p2, 0x2

    const-string v0, "1"

    invoke-static {p1, p2, v0, v0}, Lcom/sigmob/sdk/videoAd/e;->a(Lcom/sigmob/sdk/videoAd/e;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
