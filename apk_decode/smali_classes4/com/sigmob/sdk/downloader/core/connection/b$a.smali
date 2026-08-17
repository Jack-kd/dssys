.class public Lcom/sigmob/sdk/downloader/core/connection/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/connection/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/connection/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/OkHttpClient$Builder;

.field private volatile b:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/connection/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->b:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_2

    const-class v0, Lcom/sigmob/sdk/downloader/core/connection/b$a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->b:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->a:Lokhttp3/OkHttpClient$Builder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->b:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->a:Lokhttp3/OkHttpClient$Builder;

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/connection/b;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->b:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, p1}, Lcom/sigmob/sdk/downloader/core/connection/b;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lokhttp3/OkHttpClient$Builder;)Lcom/sigmob/sdk/downloader/core/connection/b$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->a:Lokhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public a()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->a:Lokhttp3/OkHttpClient$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->a:Lokhttp3/OkHttpClient$Builder;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/b$a;->a:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method
