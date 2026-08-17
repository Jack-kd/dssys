.class public Lcom/sigmob/sdk/base/network/b;
.super Lcom/czhj/sdk/common/network/SigmobRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/network/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/sdk/common/network/SigmobRequest<",
        "Lcom/czhj/volley/NetworkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/network/b$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/sigmob/sdk/base/network/b$a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/b;->a:Lcom/sigmob/sdk/base/network/b$a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setShouldRetryServerErrors(Z)Lcom/czhj/volley/Request;

    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    const/16 p3, 0x1388

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIIF)V

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    invoke-virtual {p0, v0}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/network/b$a;)V
    .locals 1

    .line 2
    const/16 v0, 0x1388

    invoke-direct {p0, p1, v0, p2}, Lcom/sigmob/sdk/base/network/b;-><init>(Ljava/lang/String;ILcom/sigmob/sdk/base/network/b$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/czhj/volley/NetworkResponse;Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "hb_tracking"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/al;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/windad/WindAdRequest;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p2

    new-instance v0, Lcom/sigmob/sdk/base/network/k;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/sigmob/sdk/base/network/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/volley/NetworkResponse;)V

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/sdk/base/common/ad$a;)Lcom/sigmob/sdk/base/common/al;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/al;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/network/b;

    new-instance v1, Lcom/sigmob/sdk/base/network/b$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/sdk/base/network/b$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/base/network/b;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/network/b$a;)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/volley/NetworkResponse;Ljava/lang/Object;)V
    .locals 1

    .line 4
    instance-of v0, p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_2

    check-cast p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTracking_type(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p3, Lcom/czhj/volley/NetworkResponse;->data:[B

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setResponse(Ljava/lang/String;)V

    iget p0, p3, Lcom/czhj/volley/NetworkResponse;->statusCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setHttp_code(Ljava/lang/String;)V

    iget-wide p0, p3, Lcom/czhj/volley/NetworkResponse;->networkTimeMs:J

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setTime_spend(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string p1, "Content-Type"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setContent_type(Ljava/lang/String;)V

    iget-object p0, p3, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string p1, "Content-Length"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setContent_length(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/volley/NetworkResponse;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/network/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/volley/NetworkResponse;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/volley/NetworkResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/czhj/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/network/b;->a:Lcom/sigmob/sdk/base/network/b$a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send tracking: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, p1}, Lcom/sigmob/sdk/base/network/b$a;->a(Lcom/czhj/volley/NetworkResponse;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/czhj/volley/Request;->deliverError(Lcom/czhj/volley/VolleyError;)V

    return-void
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/czhj/volley/NetworkResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/network/b;->a(Lcom/czhj/volley/NetworkResponse;)V

    return-void
.end method

.method public getMaxLength()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public parseNetworkResponse(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/NetworkResponse;",
            ")",
            "Lcom/czhj/volley/Response<",
            "Lcom/czhj/volley/NetworkResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/czhj/volley/Response;->success(Ljava/lang/Object;Lcom/czhj/volley/Cache$Entry;)Lcom/czhj/volley/Response;

    move-result-object p1

    return-object p1
.end method
