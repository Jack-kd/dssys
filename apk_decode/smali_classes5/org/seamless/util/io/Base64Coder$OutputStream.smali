.class public Lorg/seamless/util/io/Base64Coder$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/util/io/Base64Coder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/seamless/util/io/Base64Coder$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 3
    :goto_0
    iput-boolean p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->breakLines:Z

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 4
    :goto_1
    iput-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->encode:Z

    const/4 p1, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :cond_2
    move v0, p1

    .line 5
    :goto_2
    iput v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    .line 6
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    .line 7
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    .line 8
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    .line 9
    iput-boolean v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    .line 10
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    .line 11
    iput p2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    .line 12
    invoke-static {p2}, Lorg/seamless/util/io/Base64Coder;->access$000(I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->decodabet:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/seamless/util/io/Base64Coder$OutputStream;->flushBase64()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    .line 9
    .line 10
    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 11
    .line 12
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->encode:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    .line 12
    .line 13
    iget-object v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    .line 14
    .line 15
    iget v4, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    .line 16
    .line 17
    invoke-static {v2, v3, v0, v4}, Lorg/seamless/util/io/Base64Coder;->access$300([B[BII)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 29
    .line 30
    const-string v1, "Base64 input not properly padded."

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    return-void
.end method

.method public resumeEncoding()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    .line 3
    .line 4
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/seamless/util/io/Base64Coder$OutputStream;->flushBase64()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    .line 6
    .line 7
    return-void
.end method

.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->encode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    iget v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 5
    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    if-lt v3, p1, :cond_4

    .line 6
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    iget v4, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    invoke-static {v3, v0, p1, v4}, Lorg/seamless/util/io/Base64Coder;->access$300([B[BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 7
    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    .line 8
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->breakLines:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 10
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->lineLength:I

    .line 11
    :cond_1
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v0, v0, v2

    const/4 v2, -0x5

    if-le v0, v2, :cond_3

    .line 13
    iget-object v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->buffer:[B

    iget v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 14
    iget p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->bufferLength:I

    if-lt v3, p1, :cond_4

    .line 15
    iget-object p1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    iget v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->options:I

    invoke-static {v0, v1, p1, v1, v2}, Lorg/seamless/util/io/Base64Coder;->access$200([BI[BII)I

    move-result p1

    .line 16
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->b4:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    iput v1, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->position:I

    return-void

    :cond_3
    if-ne v0, v2, :cond_5

    :cond_4
    return-void

    .line 18
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-boolean v0, p0, Lorg/seamless/util/io/Base64Coder$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 21
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/seamless/util/io/Base64Coder$OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
