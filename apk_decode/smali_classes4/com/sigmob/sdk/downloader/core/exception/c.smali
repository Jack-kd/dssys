.class public Lcom/sigmob/sdk/downloader/core/exception/c;
.super Ljava/io/IOException;


# static fields
.field public static final a:Lcom/sigmob/sdk/downloader/core/exception/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/downloader/core/exception/c$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/exception/c$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Interrupted"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sigmob/sdk/downloader/core/exception/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/downloader/core/exception/c;-><init>()V

    return-void
.end method
