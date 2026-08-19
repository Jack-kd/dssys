.class final Lcom/kwad/sdk/pngencrypt/b$2;
.super Lcom/kwad/sdk/pngencrypt/ChunkReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/pngencrypt/b;->a(Ljava/lang/String;IJZ)Lcom/kwad/sdk/pngencrypt/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bjL:Lcom/kwad/sdk/pngencrypt/b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/b;ILjava/lang/String;JLcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/b$2;->bjL:Lcom/kwad/sdk/pngencrypt/b;

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    invoke-direct/range {p1 .. p6}, Lcom/kwad/sdk/pngencrypt/ChunkReader;-><init>(ILjava/lang/String;JLcom/kwad/sdk/pngencrypt/ChunkReader$ChunkReaderMode;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final SE()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/b$2;->bjL:Lcom/kwad/sdk/pngencrypt/b;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/pngencrypt/b;->a(Lcom/kwad/sdk/pngencrypt/ChunkReader;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final a(I[BII)V
    .locals 0

    .line 1
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 2
    .line 3
    const-string p2, "should never happen"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
