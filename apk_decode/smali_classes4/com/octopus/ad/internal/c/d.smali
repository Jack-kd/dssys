.class public abstract Lcom/octopus/ad/internal/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/c/d$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/octopus/ad/internal/c/d;->a:Z

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c/d;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/c/d;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 8
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c/d;Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/c/d;->a(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c/d;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/octopus/ad/internal/c/d;->a:Z

    return p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/octopus/ad/internal/c/e;)V
.end method

.method public b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/c/d$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/c/d$1;-><init>(Lcom/octopus/ad/internal/c/d;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
