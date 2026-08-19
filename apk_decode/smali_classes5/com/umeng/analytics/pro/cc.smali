.class public Lcom/umeng/analytics/pro/cc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/cc$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "HttpClient"

.field private static f:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/umeng/analytics/pro/cc$a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/umeng/analytics/pro/cd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/umeng/analytics/pro/cc$a;Ljava/util/Map;Lcom/umeng/analytics/pro/cd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/pro/cc$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/umeng/analytics/pro/cd;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/umeng/analytics/pro/cc;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/umeng/analytics/pro/cc;->c:Lcom/umeng/analytics/pro/cc$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/umeng/analytics/pro/cc;->d:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/umeng/analytics/pro/cc;->e:Lcom/umeng/analytics/pro/cd;

    .line 11
    .line 12
    return-void
.end method

.method private static a()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/cc;->f:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/umeng/analytics/pro/cc$1;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/cc$1;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/cc;->f:Ljavax/net/ssl/HostnameVerifier;

    .line 3
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/cc;->f:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/umeng/analytics/pro/cc;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 8
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 10
    invoke-static {}, Lcom/umeng/analytics/pro/cc;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 11
    iget-object v2, p0, Lcom/umeng/analytics/pro/cc;->d:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/umeng/analytics/pro/cc;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 16
    iget-object v4, p0, Lcom/umeng/analytics/pro/cc;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 19
    iget-object p1, p0, Lcom/umeng/analytics/pro/cc;->c:Lcom/umeng/analytics/pro/cc$a;

    sget-object v2, Lcom/umeng/analytics/pro/cc$a;->a:Lcom/umeng/analytics/pro/cc$a;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    .line 20
    const-string p1, "POST"

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 22
    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    const/4 p1, 0x0

    .line 23
    invoke-virtual {v1, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 26
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 28
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    .line 29
    :cond_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    goto :goto_1

    .line 30
    :cond_3
    const-string p1, "GET"

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 31
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_6

    .line 32
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    :try_start_2
    const-string v2, ""

    if-eqz p2, :cond_4

    .line 35
    array-length v4, p2

    if-le v4, v3, :cond_4

    .line 36
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 37
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/umeng/analytics/pro/cc;->e:Lcom/umeng/analytics/pro/cd;

    if-eqz p2, :cond_5

    .line 38
    invoke-interface {p2, v2}, Lcom/umeng/analytics/pro/cd;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :cond_5
    :try_start_3
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 41
    :goto_3
    :try_start_4
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    .line 42
    throw p2
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 43
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b

    :catchall_1
    move-object v1, v0

    goto :goto_5

    :catch_0
    move-object v1, v0

    goto :goto_6

    :catch_1
    move-object v1, v0

    goto :goto_7

    :catch_2
    move-object v1, v0

    goto :goto_8

    :catch_3
    move-object v1, v0

    goto :goto_9

    :catch_4
    move-object v1, v0

    goto :goto_a

    :catchall_2
    :goto_5
    if-eqz v1, :cond_7

    goto :goto_4

    :catch_5
    :goto_6
    if-eqz v1, :cond_7

    goto :goto_4

    :catch_6
    :goto_7
    if-eqz v1, :cond_7

    goto :goto_4

    :catch_7
    :goto_8
    if-eqz v1, :cond_7

    goto :goto_4

    :catch_8
    :goto_9
    if-eqz v1, :cond_7

    goto :goto_4

    :catch_9
    :goto_a
    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_b
    return-object v0
.end method
