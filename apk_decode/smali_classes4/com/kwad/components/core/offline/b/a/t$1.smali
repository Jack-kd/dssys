.class final Lcom/kwad/components/core/offline/b/a/t$1;
.super Lcom/kwad/framework/filedownloader/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/offline/b/a/t;->download(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/downloader/DownloadListener;ZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic acu:Lcom/kwad/components/offline/api/core/downloader/DownloadListener;

.field final synthetic acv:Lcom/kwad/components/core/offline/b/a/t;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/offline/b/a/t;Lcom/kwad/components/offline/api/core/downloader/DownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/offline/b/a/t$1;->acv:Lcom/kwad/components/core/offline/b/a/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/offline/b/a/t$1;->acu:Lcom/kwad/components/offline/api/core/downloader/DownloadListener;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/i;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/framework/filedownloader/a;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/framework/filedownloader/i;->a(Lcom/kwad/framework/filedownloader/a;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download started:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnionDownloader"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/offline/b/a/t$1;->acu:Lcom/kwad/components/offline/api/core/downloader/DownloadListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/downloader/DownloadListener;->onStart(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/kwad/framework/filedownloader/a;II)V
    .locals 0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "download pending:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UnionDownloader"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/kwad/framework/filedownloader/a;Ljava/lang/Throwable;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnionDownloader"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/offline/b/a/t$1;->acu:Lcom/kwad/components/offline/api/core/downloader/DownloadListener;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/kwad/components/offline/api/core/downloader/DownloadListener;->onError(ILjava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/kwad/framework/filedownloader/a;)V
    .locals 4

    .line 7
    const-string v0, "UnionDownloader"

    const-string v1, "download completed:"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/offline/b/a/t$1;->acu:Lcom/kwad/components/offline/api/core/downloader/DownloadListener;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getFilename()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getTargetFilePath()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/kwad/components/offline/api/core/downloader/DownloadListener;->onCompleted(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/kwad/framework/filedownloader/a;II)V
    .locals 6

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "download progress:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", soFarBytes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->AD()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", totalBytes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->AF()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    const-string p3, "UnionDownloader"

    invoke-static {p3, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/offline/b/a/t$1;->acu:Lcom/kwad/components/offline/api/core/downloader/DownloadListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->AD()I

    move-result p2

    int-to-long v2, p2

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->AF()I

    move-result p1

    int-to-long v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/kwad/components/offline/api/core/downloader/DownloadListener;->onProgress(IJJ)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/kwad/framework/filedownloader/a;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download warn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnionDownloader"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/kwad/framework/filedownloader/a;II)V
    .locals 0

    .line 1
    return-void
.end method
