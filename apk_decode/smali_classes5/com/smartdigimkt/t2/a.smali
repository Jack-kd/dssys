.class public final Lcom/smartdigimkt/t2/a;
.super Lcom/smartdigimkt/b4/g;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/smartdigimkt/t2/b;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/t2/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/smartdigimkt/t2/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/smartdigimkt/b4/g;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 10

    const-string v0, "30001"

    const-string v1, ""

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    iget-object v3, v3, Lcom/smartdigimkt/t2/b;->a:Ljava/lang/String;

    .line 2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_31
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2a
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_28
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v3, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 5
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/smartdigimkt/t2/b;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 7
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    move-object v2, p1

    move-object p1, v4

    goto/16 :goto_23

    :catch_0
    move-exception v3

    move-object v4, v2

    goto/16 :goto_d

    :catch_1
    move-exception v3

    move-object v4, v2

    goto/16 :goto_10

    :catch_2
    move-exception v3

    move-object v4, v2

    goto/16 :goto_12

    :catch_3
    move-exception v3

    move-object v4, v2

    goto/16 :goto_14

    :catch_4
    move-exception v0

    move-object v3, v2

    goto/16 :goto_16

    :catch_5
    move-exception v3

    move-object v4, v2

    goto/16 :goto_18

    :catch_6
    move-exception v3

    move-object v4, v2

    goto/16 :goto_1a

    :catch_7
    move-exception v3

    move-object v4, v2

    goto/16 :goto_1c

    :catch_8
    move-exception v3

    move-object v4, v2

    goto/16 :goto_1e

    :catch_9
    move-exception v3

    move-object v4, v2

    goto/16 :goto_20

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object v3

    const-string v4, "ua"

    invoke-virtual {v3, v4}, Lcom/smartdigimkt/sdk/core/SDKContext;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    const-string v3, "User-Agent"

    invoke-static {}, Lcom/smartdigimkt/c5/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v3, 0xea60

    .line 12
    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 13
    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 14
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 15
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_6

    const/16 v4, 0x12e

    const-string v5, "90002"

    const-string v6, "Http respond status code is "

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x133

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v3

    .line 18
    invoke-virtual {v4, v6, v3}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 20
    :cond_3
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-object v4, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    iget v7, v4, Lcom/smartdigimkt/t2/b;->c:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_4

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "over 5 MAX_REDIRECTS_COUNT,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {v5, v6}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v5

    .line 25
    invoke-virtual {v4, v3, v5}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 27
    :try_start_4
    iput v7, v4, Lcom/smartdigimkt/t2/b;->c:I

    .line 28
    const-string v3, "Location"

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 30
    invoke-virtual {p0, v3}, Lcom/smartdigimkt/t2/a;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    :cond_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 32
    :cond_6
    :try_start_5
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/smartdigimkt/t2/b;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 34
    :try_start_6
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_27
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_26
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_25
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_23
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_21
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_20
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1e
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 35
    :try_start_7
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_17
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 36
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 38
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 39
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-virtual {v6, v2}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 41
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 42
    :catchall_1
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    if-eqz v3, :cond_26

    .line 43
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_27

    goto/16 :goto_22

    :catchall_3
    move-exception v0

    move-object v2, v5

    goto/16 :goto_24

    :catch_a
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_e

    :catch_b
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_11

    :catch_c
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_13

    :catch_d
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_15

    :catch_e
    move-exception v0

    move-object v2, v5

    goto/16 :goto_17

    :catch_f
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_19

    :catch_10
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_1b

    :catch_11
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_1d

    :catch_12
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_1f

    :catch_13
    move-exception v2

    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_21

    :catchall_4
    move-exception v0

    goto/16 :goto_24

    :catch_14
    move-exception v5

    goto :goto_3

    :catch_15
    move-exception v5

    goto :goto_4

    :catch_16
    move-exception v5

    goto :goto_5

    :catch_17
    move-exception v5

    goto :goto_6

    :catch_18
    move-exception v0

    goto/16 :goto_17

    :catch_19
    move-exception v5

    goto :goto_7

    :catch_1a
    move-exception v5

    goto :goto_8

    :catch_1b
    move-exception v5

    goto :goto_9

    :catch_1c
    move-exception v5

    goto :goto_a

    :catch_1d
    move-exception v5

    goto :goto_b

    :goto_3
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_e

    :goto_4
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_11

    :goto_5
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_13

    :goto_6
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_15

    :goto_7
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_19

    :goto_8
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_1b

    :goto_9
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_1d

    :goto_a
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_1f

    :goto_b
    move-object v9, v5

    move-object v5, p1

    move-object p1, v3

    move-object v3, v9

    goto/16 :goto_21

    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v4, v1

    :goto_c
    move-object v2, p1

    move-object p1, v3

    goto/16 :goto_23

    :catch_1e
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_d

    :catch_1f
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_10

    :catch_20
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_12

    :catch_21
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_14

    :catch_22
    move-exception v0

    goto/16 :goto_16

    :catch_23
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_18

    :catch_24
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_1a

    :catch_25
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_1c

    :catch_26
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_1e

    :catch_27
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_20

    :catchall_6
    move-exception v0

    move-object p1, v2

    move-object v1, p1

    move-object v4, v1

    goto/16 :goto_23

    :catch_28
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto :goto_d

    :catch_29
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_10

    :catch_2a
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_12

    :catch_2b
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_14

    :catch_2c
    move-exception v0

    move-object p1, v2

    move-object v3, p1

    goto/16 :goto_16

    :catch_2d
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_18

    :catch_2e
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_1a

    :catch_2f
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_1c

    :catch_30
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_1e

    :catch_31
    move-exception v3

    move-object p1, v2

    move-object v4, p1

    goto/16 :goto_20

    :goto_d
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 44
    :goto_e
    :try_start_c
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    iget-object v6, v6, Lcom/smartdigimkt/t2/b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    .line 47
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 48
    invoke-virtual {v3, v1, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    if-eqz v2, :cond_8

    .line 49
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    :cond_8
    if-eqz v4, :cond_9

    .line 50
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    :cond_9
    if-eqz p1, :cond_a

    .line 51
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    :cond_a
    if-eqz v5, :cond_27

    :goto_f
    move-object p1, v5

    goto/16 :goto_22

    :catchall_a
    move-exception v0

    move-object v1, v2

    move-object v2, v5

    goto/16 :goto_23

    :goto_10
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 52
    :goto_11
    :try_start_10
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    iget-object v6, v6, Lcom/smartdigimkt/t2/b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-eqz v2, :cond_b

    .line 56
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :catchall_b
    :cond_b
    if-eqz v4, :cond_c

    .line 57
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :catchall_c
    :cond_c
    if-eqz p1, :cond_d

    .line 58
    :try_start_13
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    :catchall_d
    :cond_d
    if-eqz v5, :cond_27

    goto :goto_f

    :goto_12
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 59
    :goto_13
    :try_start_14
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    .line 62
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 63
    invoke-virtual {v3, v1, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    if-eqz v2, :cond_e

    .line 64
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    :catchall_e
    :cond_e
    if-eqz v4, :cond_f

    .line 65
    :try_start_16
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    :catchall_f
    :cond_f
    if-eqz p1, :cond_10

    .line 66
    :try_start_17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    :catchall_10
    :cond_10
    if-eqz v5, :cond_27

    goto :goto_f

    :goto_14
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 67
    :goto_15
    :try_start_18
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    .line 70
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 71
    invoke-virtual {v3, v1, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    if-eqz v2, :cond_11

    .line 72
    :try_start_19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    :catchall_11
    :cond_11
    if-eqz v4, :cond_12

    .line 73
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    :catchall_12
    :cond_12
    if-eqz p1, :cond_13

    .line 74
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    :catchall_13
    :cond_13
    if-eqz v5, :cond_27

    goto/16 :goto_f

    :goto_16
    move-object v4, v2

    .line 75
    :goto_17
    :try_start_1c
    iget-object v1, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    invoke-virtual {v1, v0}, Lcom/smartdigimkt/t2/b;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_17

    if-eqz v2, :cond_14

    .line 76
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    :catchall_14
    :cond_14
    if-eqz v4, :cond_15

    .line 77
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    :catchall_15
    :cond_15
    if-eqz v3, :cond_16

    .line 78
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    :catchall_16
    :cond_16
    if-eqz p1, :cond_27

    goto/16 :goto_22

    :catchall_17
    move-exception v0

    move-object v1, v2

    goto/16 :goto_c

    :goto_18
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 79
    :goto_19
    :try_start_20
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    const-string v7, "Connect timeout."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 81
    invoke-virtual {v6, v7, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    if-eqz v2, :cond_17

    .line 82
    :try_start_21
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_18

    :catchall_18
    :cond_17
    if-eqz v4, :cond_18

    .line 83
    :try_start_22
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_19

    :catchall_19
    :cond_18
    if-eqz p1, :cond_19

    .line 84
    :try_start_23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1a

    :catchall_1a
    :cond_19
    if-eqz v5, :cond_27

    goto/16 :goto_f

    :goto_1a
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 85
    :goto_1b
    :try_start_24
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    const-string v7, "connect socket failed."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 87
    invoke-virtual {v6, v7, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    if-eqz v2, :cond_1a

    .line 88
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1b

    :catchall_1b
    :cond_1a
    if-eqz v4, :cond_1b

    .line 89
    :try_start_26
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1c

    :catchall_1c
    :cond_1b
    if-eqz p1, :cond_1c

    .line 90
    :try_start_27
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1d

    :catchall_1d
    :cond_1c
    if-eqz v5, :cond_27

    goto/16 :goto_f

    :goto_1c
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 91
    :goto_1d
    :try_start_28
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    const-string v7, "connect ssl failed."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 93
    invoke-virtual {v6, v7, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    if-eqz v2, :cond_1d

    .line 94
    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1e

    :catchall_1e
    :cond_1d
    if-eqz v4, :cond_1e

    .line 95
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1f

    :catchall_1f
    :cond_1e
    if-eqz p1, :cond_1f

    .line 96
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_20

    :catchall_20
    :cond_1f
    if-eqz v5, :cond_27

    goto/16 :goto_f

    :goto_1e
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 97
    :goto_1f
    :try_start_2c
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    const-string v7, "Connect error."

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 99
    invoke-virtual {v6, v7, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    if-eqz v2, :cond_20

    .line 100
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_21

    :catchall_21
    :cond_20
    if-eqz v4, :cond_21

    .line 101
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_22

    :catchall_22
    :cond_21
    if-eqz p1, :cond_22

    .line 102
    :try_start_2f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_23

    :catchall_23
    :cond_22
    if-eqz v5, :cond_27

    goto/16 :goto_f

    :goto_20
    move-object v5, p1

    move-object p1, v4

    move-object v4, v2

    .line 103
    :goto_21
    :try_start_30
    iget-object v6, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    const-string v7, "UnknownHostException"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    .line 105
    invoke-virtual {v6, v7, v0}, Lcom/smartdigimkt/t2/b;->a(Ljava/lang/String;Lcom/smartdigimkt/k4/a;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    if-eqz v2, :cond_23

    .line 106
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_24

    :catchall_24
    :cond_23
    if-eqz v4, :cond_24

    .line 107
    :try_start_32
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_25

    :catchall_25
    :cond_24
    if-eqz p1, :cond_25

    .line 108
    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_26

    :catchall_26
    :cond_25
    if-eqz v5, :cond_27

    goto/16 :goto_f

    .line 109
    :catchall_27
    :cond_26
    :goto_22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_27
    return-void

    :goto_23
    move-object v3, p1

    move-object p1, v2

    move-object v2, v1

    :goto_24
    if-eqz v2, :cond_28

    .line 110
    :try_start_34
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_28

    :catchall_28
    :cond_28
    if-eqz v4, :cond_29

    .line 111
    :try_start_35
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_29

    :catchall_29
    :cond_29
    if-eqz v3, :cond_2a

    .line 112
    :try_start_36
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2a

    :catchall_2a
    :cond_2a
    if-eqz p1, :cond_2b

    .line 113
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    :cond_2b
    throw v0
.end method

.method public final b()V
    .locals 5

    .line 1
    const-string v0, "30001"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/16 v2, 0x270f

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/smartdigimkt/t2/b;->b:Lcom/smartdigimkt/l4/b;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-interface {v3, v2}, Lcom/smartdigimkt/l4/b;->a(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_1

    .line 19
    :catch_1
    move-exception v3

    .line 20
    goto :goto_2

    .line 21
    :catch_2
    move-exception v3

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lcom/smartdigimkt/t2/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/smartdigimkt/t2/b;->b:Lcom/smartdigimkt/l4/b;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v3, v2, v1, v0}, Lcom/smartdigimkt/l4/b;->a(ILjava/lang/String;Lcom/smartdigimkt/sdk/api/AdError;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v3, p0, Lcom/smartdigimkt/t2/a;->c:Lcom/smartdigimkt/t2/b;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/smartdigimkt/t2/b;->b:Lcom/smartdigimkt/l4/b;

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v3, v2, v1, v0}, Lcom/smartdigimkt/l4/b;->a(ILjava/lang/String;Lcom/smartdigimkt/sdk/api/AdError;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_3
    return-void
.end method
