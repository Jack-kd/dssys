.class public Lcom/sigmob/sdk/downloader/core/connection/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/connection/a;
.implements Lcom/sigmob/sdk/downloader/core/connection/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/connection/c$c;,
        Lcom/sigmob/sdk/downloader/core/connection/c$a;,
        Lcom/sigmob/sdk/downloader/core/connection/c$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "DownloadUrlConnection"


# instance fields
.field protected b:Ljava/net/URLConnection;

.field private c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

.field private d:Ljava/net/URL;

.field private e:Lcom/sigmob/sdk/downloader/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/downloader/core/connection/c;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/downloader/core/connection/c$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/downloader/core/connection/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/sigmob/sdk/downloader/core/connection/c;-><init>(Ljava/net/URL;Lcom/sigmob/sdk/downloader/core/connection/c$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/sigmob/sdk/downloader/core/connection/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/sigmob/sdk/downloader/core/connection/c$c;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/connection/c$c;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/downloader/core/connection/c;-><init>(Ljava/net/URL;Lcom/sigmob/sdk/downloader/core/connection/c$a;Lcom/sigmob/sdk/downloader/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/sigmob/sdk/downloader/core/connection/c$a;Lcom/sigmob/sdk/downloader/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->d:Ljava/net/URL;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->e:Lcom/sigmob/sdk/downloader/i;

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/connection/c;->h()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/sigmob/sdk/downloader/core/connection/c$c;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/connection/c$c;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/downloader/core/connection/c;-><init>(Ljava/net/URLConnection;Lcom/sigmob/sdk/downloader/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Lcom/sigmob/sdk/downloader/i;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->d:Ljava/net/URL;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->e:Lcom/sigmob/sdk/downloader/i;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/downloader/core/connection/c;)Ljava/net/URL;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->d:Ljava/net/URL;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/downloader/core/connection/c;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->d:Ljava/net/URL;

    return-object p1
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/downloader/core/connection/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/connection/c;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->e:Lcom/sigmob/sdk/downloader/i;

    invoke-interface {v1, p0, p0, v0}, Lcom/sigmob/sdk/downloader/i;->a(Lcom/sigmob/sdk/downloader/core/connection/a;Lcom/sigmob/sdk/downloader/core/connection/a$a;Ljava/util/Map;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->e:Lcom/sigmob/sdk/downloader/i;

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config connection for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->d:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadUrlConnection"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/connection/c$a;->a(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->d:Ljava/net/URL;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    invoke-static {v1}, Lcom/sigmob/sdk/downloader/core/connection/c$a;->a(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/connection/c$a;->b(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    invoke-static {v1}, Lcom/sigmob/sdk/downloader/core/connection/c$a;->b(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/connection/c$a;->c(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c;->c:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    invoke-static {v1}, Lcom/sigmob/sdk/downloader/core/connection/c$a;->c(Lcom/sigmob/sdk/downloader/core/connection/c$a;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_3
    return-void
.end method
