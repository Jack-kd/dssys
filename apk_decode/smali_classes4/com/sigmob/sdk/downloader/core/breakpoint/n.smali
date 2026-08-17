.class Lcom/sigmob/sdk/downloader/core/breakpoint/n;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field private final b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/breakpoint/m$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;-><init>(Lcom/sigmob/sdk/downloader/core/breakpoint/m$a;)V

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;-><init>(Lcom/sigmob/sdk/downloader/core/breakpoint/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/breakpoint/m;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->a()V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->a(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->e(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    iget-wide v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->a:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->a(IJ)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->e(I)V

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->a(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->d(I)V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->d(I)V

    throw v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->e(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/m;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/m;->c(I)V

    return-void
.end method
