.class public Lcom/czhj/sdk/common/track/TrackingRequest;
.super Lcom/czhj/volley/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/track/TrackingRequest$RequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/volley/Request<",
        "Lcom/czhj/volley/NetworkResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final ZERO_RETRIES:I

.field private static reTryFailCount:I


# instance fields
.field private final mListener:Lcom/czhj/sdk/common/track/TrackingRequest$RequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/czhj/sdk/common/track/TrackingRequest$RequestListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p4}, Lcom/czhj/volley/Request;-><init>(ILjava/lang/String;Lcom/czhj/volley/Response$ErrorListener;)V

    iput-object p4, p0, Lcom/czhj/sdk/common/track/TrackingRequest;->mListener:Lcom/czhj/sdk/common/track/TrackingRequest$RequestListener;

    if-gez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    move p2, p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setShouldRetryServerErrors(Z)Lcom/czhj/volley/Request;

    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    const/4 p4, 0x0

    invoke-direct {p1, p3, p3, p2, p4}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIIF)V

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    invoke-virtual {p0, v0}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/czhj/sdk/common/track/TrackingRequest$RequestListener;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/Config;->getNetworkTimeout()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/czhj/sdk/common/track/TrackingRequest;-><init>(Ljava/lang/String;IILcom/czhj/sdk/common/track/TrackingRequest$RequestListener;)V

    return-void
.end method


# virtual methods
.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

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

.method public deliverResponse(Lcom/czhj/volley/NetworkResponse;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/czhj/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/sdk/common/track/TrackingRequest;->mListener:Lcom/czhj/sdk/common/track/TrackingRequest$RequestListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send tracking: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/czhj/sdk/common/track/TrackingRequest$RequestListener;->onSuccess(Lcom/czhj/volley/NetworkResponse;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/czhj/volley/NetworkResponse;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/track/TrackingRequest;->deliverResponse(Lcom/czhj/volley/NetworkResponse;)V

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
