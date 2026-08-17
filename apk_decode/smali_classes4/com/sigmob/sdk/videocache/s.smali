.class public Lcom/sigmob/sdk/videocache/s;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/videocache/t;)Lcom/sigmob/sdk/videocache/t;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sigmob/sdk/videocache/l;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videocache/l;-><init>(Lcom/sigmob/sdk/videocache/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/videocache/i;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videocache/i;-><init>(Lcom/sigmob/sdk/videocache/t;)V

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/sigmob/sdk/videocache/t;
    .locals 1

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sigmob/sdk/videocache/l;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videocache/l;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/videocache/i;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videocache/i;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)Lcom/sigmob/sdk/videocache/t;
    .locals 1

    .line 3
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/sigmob/sdk/videocache/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/sdk/videocache/l;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/videocache/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/sdk/videocache/i;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/videocache/sourcestorage/c;Lcom/sigmob/sdk/videocache/headers/b;)V

    :cond_1
    return-object v0
.end method
