.class Lcom/sigmob/sdk/downloader/a$c;
.super Lcom/sigmob/sdk/downloader/core/listener/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Lcom/sigmob/sdk/downloader/b;

.field private final c:Lcom/sigmob/sdk/downloader/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/a;Lcom/sigmob/sdk/downloader/b;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/listener/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/a$c;->b:Lcom/sigmob/sdk/downloader/b;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$c;->c:Lcom/sigmob/sdk/downloader/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 7

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v6

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/a$c;->b:Lcom/sigmob/sdk/downloader/b;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/a$c;->c:Lcom/sigmob/sdk/downloader/a;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/sigmob/sdk/downloader/b;->a(Lcom/sigmob/sdk/downloader/a;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;I)V

    if-gtz v6, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/a$c;->b:Lcom/sigmob/sdk/downloader/b;

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/a$c;->c:Lcom/sigmob/sdk/downloader/a;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/downloader/b;->a(Lcom/sigmob/sdk/downloader/a;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "taskEnd and remainCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadContext"

    invoke-static {p2, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a_(Lcom/sigmob/sdk/downloader/f;)V
    .locals 0

    return-void
.end method
