.class public final Lcom/kwad/components/ad/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/kwad/components/ad/c/a/b;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {p0}, Lcom/kwad/components/ad/c/a/b;->ai()V

    return-void
.end method

.method private static a(Lcom/kwad/components/ad/c/a/b;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-interface {p0}, Lcom/kwad/components/ad/c/a/b;->aj()V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;Lcom/kwad/components/ad/c/a/b;)Z
    .locals 8
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string p0, "\u5b57\u6bb5\u4e3anull"

    invoke-static {p2, p0}, Lcom/kwad/components/ad/c/a/a;->a(Lcom/kwad/components/ad/c/a/b;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;->getAdVideoPreCacheSize()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v3, 0x400

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x1

    if-lez v5, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;->isContinueLoadingAll()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v3, -0x1

    goto :goto_0

    :cond_1
    move-wide v3, v0

    .line 7
    :goto_0
    new-instance v5, Lcom/kwad/sdk/core/network/a/a$a;

    invoke-direct {v5}, Lcom/kwad/sdk/core/network/a/a$a;-><init>()V

    .line 8
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/core/videocache/c/a;->cm(Landroid/content/Context;)Lcom/kwad/sdk/core/videocache/f;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v2}, Lcom/kwad/sdk/core/videocache/f;->fy(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-static {p2}, Lcom/kwad/components/ad/c/a/a;->a(Lcom/kwad/components/ad/c/a/b;)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v6, Lcom/kwad/components/ad/c/a/a$1;

    invoke-direct {v6, v0, v1, p2, p1}, Lcom/kwad/components/ad/c/a/a$1;-><init>(JLcom/kwad/components/ad/c/a/b;Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;)V

    move-object v1, p0

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/kwad/sdk/core/videocache/f;->a(Ljava/lang/String;JLcom/kwad/sdk/core/network/a/a$a;Lcom/kwad/sdk/export/proxy/AdHttpResponseListener;)Z

    move-result v6

    .line 13
    :goto_1
    iget-object p0, v5, Lcom/kwad/sdk/core/network/a/a$a;->msg:Ljava/lang/String;

    goto :goto_4

    .line 14
    :cond_3
    const-string v0, ""

    if-gez v5, :cond_7

    .line 15
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->Lx()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/diskcache/b/a;->cO(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/kwad/sdk/utils/y;->Q(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    new-instance v0, Lcom/kwad/sdk/core/network/a/a$a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/network/a/a$a;-><init>()V

    .line 18
    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->Lx()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lcom/kwad/sdk/core/diskcache/b/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/network/a/a$a;)Z

    move-result v6

    .line 19
    iget-object v0, v0, Lcom/kwad/sdk/core/network/a/a$a;->msg:Ljava/lang/String;

    :goto_2
    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 21
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setDownloadSize(J)V

    if-eqz v6, :cond_6

    .line 22
    invoke-static {p2}, Lcom/kwad/components/ad/c/a/a;->a(Lcom/kwad/components/ad/c/a/b;)V

    :cond_6
    :goto_3
    move-object p0, v0

    goto :goto_4

    .line 23
    :cond_7
    invoke-static {p2}, Lcom/kwad/components/ad/c/a/a;->a(Lcom/kwad/components/ad/c/a/b;)V

    goto :goto_3

    :goto_4
    if-eqz v6, :cond_8

    .line 24
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;->getAdVideoPreCacheSize()I

    move-result p0

    invoke-static {v2, p0}, Lcom/kwad/components/core/video/k;->n(Ljava/lang/String;I)V

    return v6

    .line 25
    :cond_8
    invoke-static {p2, p0}, Lcom/kwad/components/ad/c/a/a;->a(Lcom/kwad/components/ad/c/a/b;Ljava/lang/String;)V

    return v6
.end method

.method public static synthetic b(Lcom/kwad/components/ad/c/a/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/components/ad/c/a/a;->a(Lcom/kwad/components/ad/c/a/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
