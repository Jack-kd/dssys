.class Lcom/czhj/sdk/common/network/RequestQueueHttpStack;
.super Lcom/czhj/volley/toolbox/BaseHttpStack;


# instance fields
.field a:Lcom/czhj/volley/toolbox/BaseHttpStack;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/czhj/volley/toolbox/BaseHttpStack;-><init>()V

    invoke-static {}, Lcom/czhj/volley/toolbox/Volley;->isEnableOkhttp3()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/czhj/volley/toolbox/OkHttp3Stack;

    invoke-direct {v0}, Lcom/czhj/volley/toolbox/OkHttp3Stack;-><init>()V

    iput-object v0, p0, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;->a:Lcom/czhj/volley/toolbox/BaseHttpStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;->a:Lcom/czhj/volley/toolbox/BaseHttpStack;

    if-nez v0, :cond_1

    new-instance v0, Lcom/czhj/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/czhj/volley/toolbox/HurlStack;-><init>()V

    iput-object v0, p0, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;->a:Lcom/czhj/volley/toolbox/BaseHttpStack;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/czhj/volley/toolbox/BaseHttpStack;-><init>()V

    invoke-static {}, Lcom/czhj/volley/toolbox/Volley;->isEnableOkhttp3()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/czhj/volley/toolbox/OkHttp3Stack;

    invoke-direct {v0, p1}, Lcom/czhj/volley/toolbox/OkHttp3Stack;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v0, p0, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;->a:Lcom/czhj/volley/toolbox/BaseHttpStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;->a:Lcom/czhj/volley/toolbox/BaseHttpStack;

    if-nez v0, :cond_1

    new-instance v0, Lcom/czhj/volley/toolbox/HurlStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/czhj/volley/toolbox/HurlStack;-><init>(Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v0, p0, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;->a:Lcom/czhj/volley/toolbox/BaseHttpStack;

    :cond_1
    return-void
.end method


# virtual methods
.method public executeRequest(Lcom/czhj/volley/Request;Ljava/util/Map;)Lcom/czhj/volley/toolbox/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/czhj/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/czhj/volley/AuthFailureError;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    :cond_1
    sget-object v0, Lcom/czhj/sdk/common/network/ResponseHeader;->USER_AGENT:Lcom/czhj/sdk/common/network/ResponseHeader;

    invoke-virtual {v0}, Lcom/czhj/sdk/common/network/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;->a:Lcom/czhj/volley/toolbox/BaseHttpStack;

    invoke-virtual {v0, p1, p2}, Lcom/czhj/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/czhj/volley/Request;Ljava/util/Map;)Lcom/czhj/volley/toolbox/HttpResponse;

    move-result-object p1

    return-object p1
.end method
