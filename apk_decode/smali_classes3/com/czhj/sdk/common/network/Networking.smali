.class public Lcom/czhj/sdk/common/network/Networking;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "sigmob-volley-cache"

.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

.field private static volatile d:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

.field private static volatile e:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

.field private static volatile f:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

.field private static volatile g:Ljava/lang/String;

.field private static volatile h:Ljava/lang/String;

.field private static volatile i:Lcom/czhj/sdk/common/network/MaxWidthImageLoader;

.field private static j:Z

.field private static k:Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;

.field private static volatile l:Lcom/czhj/volley/Cache;

.field private static m:Ljava/util/HashSet;

.field private static n:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

.field private static o:Lcom/czhj/sdk/common/network/SigmobRequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/network/Networking;->b:Ljava/lang/String;

    sput-object v0, Lcom/czhj/sdk/common/network/Networking;->h:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/czhj/sdk/common/network/Networking;->j:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/czhj/sdk/common/network/Networking;->l:Lcom/czhj/volley/Cache;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/czhj/sdk/common/network/Networking;->m:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddSigmobServerURL(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/czhj/volley/Cache;
    .locals 0

    .line 1
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->l:Lcom/czhj/volley/Cache;

    if-nez p0, :cond_0

    new-instance p0, Lcom/czhj/volley/toolbox/NoCache;

    invoke-direct {p0}, Lcom/czhj/volley/toolbox/NoCache;-><init>()V

    sput-object p0, Lcom/czhj/sdk/common/network/Networking;->l:Lcom/czhj/volley/Cache;

    :cond_0
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->l:Lcom/czhj/volley/Cache;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/czhj/sdk/common/network/Networking;->g:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;
    .locals 0

    .line 1
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->k:Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;

    if-nez p0, :cond_0

    new-instance p0, Lcom/czhj/sdk/common/network/PlayServicesUrlRewriter;

    invoke-direct {p0}, Lcom/czhj/sdk/common/network/PlayServicesUrlRewriter;-><init>()V

    sput-object p0, Lcom/czhj/sdk/common/network/Networking;->k:Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;

    :cond_0
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->k:Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;

    return-object p0
.end method

.method private static b()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/czhj/sdk/common/network/Networking;->j:Z

    return v0
.end method

.method private static c(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 5

    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->n:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_1

    const-class v0, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->n:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_0

    const/16 p0, 0x2710

    invoke-static {p0}, Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;->getDefault(I)Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;

    move-result-object p0

    new-instance v1, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p0, Lcom/czhj/volley/toolbox/BasicNetwork;

    invoke-direct {p0, v1}, Lcom/czhj/volley/toolbox/BasicNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V

    new-instance v1, Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    new-instance v2, Lcom/czhj/volley/ExecutorDelivery;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Lcom/czhj/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x2

    const v4, 0x7fffffff

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/czhj/sdk/common/network/SigmobRequestQueue;-><init>(Lcom/czhj/volley/Network;IILcom/czhj/volley/ResponseDelivery;)V

    sput-object v1, Lcom/czhj/sdk/common/network/Networking;->n:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-virtual {v1}, Lcom/czhj/volley/RequestQueue;->start()V

    move-object p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static getAdTrackerRetryQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->o:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-object v0
.end method

.method public static getBaseUrlScheme()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    return-object v0

    :cond_0
    const-string v0, "http"

    return-object v0
.end method

.method public static getBuriedPointRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->e:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-object v0
.end method

.method public static getCachedUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->b:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getCommonRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->f:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-object v0
.end method

.method public static getDownloadRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->d:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-object v0
.end method

.method public static getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->n:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-object v0
.end method

.method public static getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "https"

    return-object v0
.end method

.method public static getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->c:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-object v0
.end method

.method public static getSigmobServerURLS()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->m:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getUrlRewriter()Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->k:Lcom/czhj/volley/toolbox/HurlStack$UrlRewriter;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->h:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeUserAgentCache(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeUserAgent(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeBuriedPointRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeDownloadRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->c(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeCommonRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeImageLoader(Landroid/content/Context;)Lcom/czhj/volley/toolbox/ImageLoader;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeadTrackerReTryQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-void
.end method

.method public static initializeBuriedPointRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 4

    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->e:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_1

    const-class v0, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->e:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_0

    const/16 p0, 0x2710

    invoke-static {p0}, Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;->getDefault(I)Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;

    move-result-object p0

    new-instance v1, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p0, Lcom/czhj/volley/toolbox/BasicNetwork;

    invoke-direct {p0, v1}, Lcom/czhj/volley/toolbox/BasicNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V

    new-instance v1, Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/czhj/sdk/common/network/SigmobRequestQueue;-><init>(Lcom/czhj/volley/Network;II)V

    sput-object v1, Lcom/czhj/sdk/common/network/Networking;->e:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-virtual {v1}, Lcom/czhj/volley/RequestQueue;->start()V

    move-object p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static initializeCommonRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 4

    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->f:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_1

    const-class v0, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->f:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_0

    const/16 p0, 0x2710

    invoke-static {p0}, Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;->getDefault(I)Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;

    move-result-object p0

    new-instance v1, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p0, Lcom/czhj/volley/toolbox/BasicNetwork;

    invoke-direct {p0, v1}, Lcom/czhj/volley/toolbox/BasicNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V

    new-instance v1, Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    const/4 v2, 0x2

    const/16 v3, 0xa

    invoke-direct {v1, p0, v2, v3}, Lcom/czhj/sdk/common/network/SigmobRequestQueue;-><init>(Lcom/czhj/volley/Network;II)V

    sput-object v1, Lcom/czhj/sdk/common/network/Networking;->f:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-virtual {v1}, Lcom/czhj/volley/RequestQueue;->start()V

    move-object p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static initializeDownloadRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 4

    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->d:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_1

    const-class v0, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->d:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_0

    const/16 p0, 0x2710

    invoke-static {p0}, Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;->getDefault(I)Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;

    move-result-object p0

    new-instance v1, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p0, Lcom/czhj/volley/toolbox/FileDownloadNetwork;

    invoke-direct {p0, v1}, Lcom/czhj/volley/toolbox/FileDownloadNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V

    new-instance v1, Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-direct {v1, p0, v2, v3}, Lcom/czhj/sdk/common/network/SigmobRequestQueue;-><init>(Lcom/czhj/volley/Network;II)V

    sput-object v1, Lcom/czhj/sdk/common/network/Networking;->d:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-virtual {v1}, Lcom/czhj/volley/RequestQueue;->start()V

    move-object p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static initializeImageLoader(Landroid/content/Context;)Lcom/czhj/volley/toolbox/ImageLoader;
    .locals 5

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->i:Lcom/czhj/sdk/common/network/MaxWidthImageLoader;

    if-nez v0, :cond_1

    const-class v1, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->i:Lcom/czhj/sdk/common/network/MaxWidthImageLoader;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getDownloadRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    invoke-static {p0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Lcom/czhj/sdk/common/network/Networking$1;

    invoke-direct {v3, v2}, Lcom/czhj/sdk/common/network/Networking$1;-><init>(I)V

    new-instance v2, Lcom/czhj/sdk/common/network/MaxWidthImageLoader;

    new-instance v4, Lcom/czhj/sdk/common/network/Networking$2;

    invoke-direct {v4, v3}, Lcom/czhj/sdk/common/network/Networking$2;-><init>(Landroid/util/LruCache;)V

    invoke-direct {v2, v0, p0, v4}, Lcom/czhj/sdk/common/network/MaxWidthImageLoader;-><init>(Lcom/czhj/volley/RequestQueue;Landroid/content/Context;Lcom/czhj/volley/toolbox/ImageLoader$ImageCache;)V

    sput-object v2, Lcom/czhj/sdk/common/network/Networking;->i:Lcom/czhj/sdk/common/network/MaxWidthImageLoader;

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static initializeMill(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeUserAgentCache(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/Networking;->initializeUserAgent(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->c(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeCommonRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeBuriedPointRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-void
.end method

.method public static initializeSigRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 4

    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->c:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_1

    const-class v0, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lcom/czhj/sdk/common/network/Networking;->c:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez p0, :cond_0

    const/16 p0, 0x2710

    invoke-static {p0}, Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;->getDefault(I)Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;

    move-result-object p0

    new-instance v1, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p0, Lcom/czhj/volley/toolbox/BasicNetwork;

    invoke-direct {p0, v1}, Lcom/czhj/volley/toolbox/BasicNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V

    new-instance v1, Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v3}, Lcom/czhj/sdk/common/network/SigmobRequestQueue;-><init>(Lcom/czhj/volley/Network;II)V

    sput-object v1, Lcom/czhj/sdk/common/network/Networking;->c:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-virtual {v1}, Lcom/czhj/volley/RequestQueue;->start()V

    move-object p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0
.end method

.method public static initializeUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v1, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v2

    new-instance v3, Lcom/czhj/sdk/common/network/Networking$3;

    invoke-direct {v3, p0}, Lcom/czhj/sdk/common/network/Networking$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    return-object v0
.end method

.method public static initializeUserAgentCache(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/czhj/sdk/common/utils/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "user-agent-cache"

    sget-object v1, Lcom/czhj/sdk/common/network/Networking;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/czhj/sdk/common/network/Networking;->h:Ljava/lang/String;

    return-void
.end method

.method public static initializeV2(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeUserAgentCache(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeUserAgent(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeBuriedPointRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeDownloadRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeCommonRequestQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->initializeadTrackerReTryQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    return-void
.end method

.method public static initializeadTrackerReTryQueue(Landroid/content/Context;)Lcom/czhj/sdk/common/network/SigmobRequestQueue;
    .locals 4

    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->o:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez v0, :cond_2

    const-class v1, Lcom/czhj/sdk/common/network/Networking;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/czhj/sdk/common/network/Networking;->o:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    if-nez v0, :cond_1

    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;->getDefault(I)Lcom/czhj/sdk/common/network/CustomSSLSocketFactory;

    move-result-object v0

    new-instance v2, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;

    invoke-direct {v2, v0}, Lcom/czhj/sdk/common/network/RequestQueueHttpStack;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/czhj/volley/toolbox/BasicNetwork;

    invoke-direct {v0, v2}, Lcom/czhj/volley/toolbox/BasicNetwork;-><init>(Lcom/czhj/volley/toolbox/BaseHttpStack;)V

    sget-object v2, Lcom/czhj/sdk/common/network/Networking;->l:Lcom/czhj/volley/Cache;

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/czhj/sdk/common/network/Networking;->a(Landroid/content/Context;)Lcom/czhj/volley/Cache;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p0, Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {p0, v0, v2, v3}, Lcom/czhj/sdk/common/network/SigmobRequestQueue;-><init>(Lcom/czhj/volley/Network;II)V

    sput-object p0, Lcom/czhj/sdk/common/network/Networking;->o:Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    invoke-virtual {p0}, Lcom/czhj/volley/RequestQueue;->start()V

    move-object v0, p0

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-object v0
.end method

.method public static useHttps(Z)V
    .locals 0

    sput-boolean p0, Lcom/czhj/sdk/common/network/Networking;->j:Z

    return-void
.end method
