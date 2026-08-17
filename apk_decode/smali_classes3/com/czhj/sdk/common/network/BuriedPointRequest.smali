.class public Lcom/czhj/sdk/common/network/BuriedPointRequest;
.super Lcom/czhj/sdk/common/network/SigmobRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;
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
.field private final a:Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;

.field private b:[B

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    iput-object v1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->b:[B

    iput-object p3, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->a:Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;

    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    const/4 p3, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-direct {p1, v2, p3, v1}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/Config;->isEnc()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string p3, "KGpfzbYsn4T9Jyuq"

    invoke-static {p1, p3}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->b:[B

    iput-boolean v0, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->b:[B

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean p1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->b:[B

    :cond_1
    return-void

    :goto_2
    iget-boolean p3, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->c:Z

    if-nez p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->b:[B

    :cond_2
    throw p1
.end method

.method public static BuriedPointSend(Ljava/lang/String;Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/czhj/volley/VolleyError;

    const-string v1, "body is empty"

    invoke-direct {v0, v1}, Lcom/czhj/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;->onErrorResponse(Lcom/czhj/volley/VolleyError;)V

    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getBuriedPointRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    new-instance p0, Lcom/czhj/volley/VolleyError;

    const-string v0, "BuriedPointRequestQueue is empty"

    invoke-direct {p0, v0}, Lcom/czhj/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;->onErrorResponse(Lcom/czhj/volley/VolleyError;)V

    return-void

    :cond_2
    :try_start_0
    new-instance v0, Lcom/czhj/sdk/common/network/BuriedPointRequest;

    invoke-static {}, Lcom/czhj/sdk/common/models/Config;->sharedInstance()Lcom/czhj/sdk/common/models/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Config;->getLogUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/czhj/sdk/common/network/BuriedPointRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getBuriedPointRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    new-instance p0, Lcom/czhj/volley/VolleyError;

    const-string v0, "network is disconnect "

    invoke-direct {p0, v0}, Lcom/czhj/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;->onErrorResponse(Lcom/czhj/volley/VolleyError;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/czhj/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->a:Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send dclog: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onErrorResponse"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;->onErrorResponse(Lcom/czhj/volley/VolleyError;)V

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

.method public deliverResponse(Lcom/czhj/volley/NetworkResponse;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/czhj/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->a:Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send dclog: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " success"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;->onSuccess()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/czhj/volley/NetworkResponse;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/network/BuriedPointRequest;->deliverResponse(Lcom/czhj/volley/NetworkResponse;)V

    return-void
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->b:[B

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, p0, Lcom/czhj/sdk/common/network/BuriedPointRequest;->c:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/utils/AESUtil;->generateNonce()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "agn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "gz"

    const-string v2, "on"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
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
