.class public Lcom/sigmob/sdk/downloader/core/connection/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/connection/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/connection/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/downloader/core/connection/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/downloader/core/connection/c$b;-><init>(Lcom/sigmob/sdk/downloader/core/connection/c$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/connection/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/connection/c$b;->a:Lcom/sigmob/sdk/downloader/core/connection/c$a;

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
    new-instance v0, Lcom/sigmob/sdk/downloader/core/connection/c;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c$b;->a:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/connection/c;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/downloader/core/connection/c$a;)V

    return-object v0
.end method

.method public a(Ljava/net/URL;)Lcom/sigmob/sdk/downloader/core/connection/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/connection/c;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/connection/c$b;->a:Lcom/sigmob/sdk/downloader/core/connection/c$a;

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/connection/c;-><init>(Ljava/net/URL;Lcom/sigmob/sdk/downloader/core/connection/c$a;)V

    return-object v0
.end method
