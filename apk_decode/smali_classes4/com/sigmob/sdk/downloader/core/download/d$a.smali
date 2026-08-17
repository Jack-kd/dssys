.class Lcom/sigmob/sdk/downloader/core/download/d$a;
.super Lcom/sigmob/sdk/downloader/core/download/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/download/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/download/d;-><init>(Lcom/sigmob/sdk/downloader/core/file/d;)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/download/d;->c(Ljava/io/IOException;)V

    return-void
.end method
