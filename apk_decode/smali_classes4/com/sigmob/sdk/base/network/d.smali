.class public Lcom/sigmob/sdk/base/network/d;
.super Lcom/czhj/sdk/common/network/SigmobRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/network/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/network/d$a;

.field private b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/BidResponse;Lcom/sigmob/sdk/base/network/d$a;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/d;->a:Lcom/sigmob/sdk/base/network/d$a;

    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    const/4 p3, 0x2

    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-direct {p1, v1, p3, v0}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/network/d;->a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string p2, "KGpfzbYsn4T9Jyuq"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/network/d;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "feedback body bug"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;)Ljava/lang/String;
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "scene"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "context"

    if-eqz p1, :cond_0

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/sigmob/sdk/base/network/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const-string p1, "ads"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "materials"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v2

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "html_snippet"

    invoke-direct {p0, v6, v7}, Lcom/sigmob/sdk/base/network/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v7, "closecard_html_snippet"

    invoke-direct {p0, v6, v7}, Lcom/sigmob/sdk/base/network/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v6, "main_template"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v6, v1}, Lcom/sigmob/sdk/base/network/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    const-string v6, "sub_template"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v6, v1}, Lcom/sigmob/sdk/base/network/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_3
    const-string v0, "Serialize error"

    invoke-static {v0, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 2
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/czhj/volley/Request;->deliverError(Lcom/czhj/volley/VolleyError;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/d;->a:Lcom/sigmob/sdk/base/network/d$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/czhj/volley/Response$ErrorListener;->onErrorResponse(Lcom/czhj/volley/VolleyError;)V

    return-void
.end method

.method public deliverResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/base/network/d;->a:Lcom/sigmob/sdk/base/network/d$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/network/d$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/d;->b:[B

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
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

    :try_start_0
    const-string v1, "agn"

    invoke-static {}, Lcom/czhj/sdk/common/utils/AESUtil;->generateNonce()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "e"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
