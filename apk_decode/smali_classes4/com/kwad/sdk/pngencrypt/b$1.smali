.class final Lcom/kwad/sdk/pngencrypt/b$1;
.super Lcom/kwad/sdk/pngencrypt/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/pngencrypt/b;->c(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bjL:Lcom/kwad/sdk/pngencrypt/b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/pngencrypt/b;ILjava/lang/String;ZJLcom/kwad/sdk/pngencrypt/DeflatedChunksSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/pngencrypt/b$1;->bjL:Lcom/kwad/sdk/pngencrypt/b;

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    move-wide p4, p5

    .line 5
    move-object p6, p7

    .line 6
    invoke-direct/range {p1 .. p6}, Lcom/kwad/sdk/pngencrypt/d;-><init>(ILjava/lang/String;JLcom/kwad/sdk/pngencrypt/DeflatedChunksSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final SE()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/pngencrypt/d;->SE()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/pngencrypt/b$1;->bjL:Lcom/kwad/sdk/pngencrypt/b;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/pngencrypt/b;->a(Lcom/kwad/sdk/pngencrypt/ChunkReader;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
