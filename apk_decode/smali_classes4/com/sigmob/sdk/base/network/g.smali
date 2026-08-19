.class public Lcom/sigmob/sdk/base/network/g;
.super Lcom/czhj/sdk/common/network/SigmobRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/network/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/sdk/common/network/SigmobRequest<",
        "Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/network/g$a;

.field private final b:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

.field private c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/network/g$a;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/g;->a:Lcom/sigmob/sdk/base/network/g$a;

    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-direct {p1, v1, p2, v0}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    invoke-static {}, Lcom/sigmob/sdk/base/network/g;->a()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/g;->b:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceLocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/network/a;->b()Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;->app(Lcom/czhj/sdk/common/models/App;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/network/a;->c()Lcom/czhj/sdk/common/models/User$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/User$Builder;->build()Lcom/czhj/sdk/common/models/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;->user(Lcom/czhj/sdk/common/models/User;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/network/a;->d()Lcom/czhj/sdk/common/models/Privacy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;->build()Lcom/czhj/sdk/common/models/Privacy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;->privacy(Lcom/czhj/sdk/common/models/Privacy;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/b;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/models/Network$Builder;->build()Lcom/czhj/sdk/common/models/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;->network(Lcom/czhj/sdk/common/models/Network;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object v2

    invoke-static {v1}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDeviceId(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->build()Lcom/czhj/sdk/common/models/DeviceId;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/models/Device$Builder;->did(Lcom/czhj/sdk/common/models/DeviceId;)Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;->device(Lcom/czhj/sdk/common/models/Device;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/g;->a:Lcom/sigmob/sdk/base/network/g$a;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/network/g$a;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;)V

    return-void
.end method

.method public b()Lcom/sigmob/sdk/base/network/g$a;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/g;->a:Lcom/sigmob/sdk/base/network/g$a;

    return-object v0
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/network/g;->a(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;)V

    return-void
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/g;->c:[B

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "cp"

    const-string v1, "1"

    const-string v2, "e"

    const-string v3, "agn"

    invoke-super {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/AESUtil;->generateNonce()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v5, p0, Lcom/sigmob/sdk/base/network/g;->b:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigRequest;

    move-result-object v5

    :try_start_1
    invoke-virtual {v5}, Lcom/czhj/wire/Message;->encode()[B

    move-result-object v6

    iput-object v6, p0, Lcom/sigmob/sdk/base/network/g;->c:[B

    invoke-static {v6}, Lcom/sigmob/sdk/base/network/c;->b([B)[B

    move-result-object v6

    iput-object v6, p0, Lcom/sigmob/sdk/base/network/g;->c:[B

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/czhj/wire/Message;->encode()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/network/g;->c:[B

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/g;->c:[B

    const-string v1, "KGpfzbYsn4T9Jyuq"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/network/g;->c:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v4
.end method

.method public parseNetworkResponse(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/NetworkResponse;",
            ")",
            "Lcom/czhj/volley/Response<",
            "Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "cp"

    :try_start_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    if-nez v1, :cond_0

    new-instance v0, Lcom/czhj/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    iget-object v2, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    invoke-static {v0}, Lcom/sigmob/sdk/base/network/c;->a([B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    :goto_0
    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;

    invoke-static {p1}, Lcom/czhj/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/czhj/volley/Response;->success(Ljava/lang/Object;Lcom/czhj/volley/Cache$Entry;)Lcom/czhj/volley/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/czhj/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    move-result-object p1

    return-object p1
.end method
