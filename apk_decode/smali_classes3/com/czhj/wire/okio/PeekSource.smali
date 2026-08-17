.class final Lcom/czhj/wire/okio/PeekSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/wire/okio/Source;


# instance fields
.field private final a:Lcom/czhj/wire/okio/BufferedSource;

.field private final b:Lcom/czhj/wire/okio/Buffer;

.field private c:Lcom/czhj/wire/okio/Segment;

.field private d:I

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/czhj/wire/okio/BufferedSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/czhj/wire/okio/PeekSource;->a:Lcom/czhj/wire/okio/BufferedSource;

    invoke-interface {p1}, Lcom/czhj/wire/okio/BufferedSource;->buffer()Lcom/czhj/wire/okio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/wire/okio/PeekSource;->b:Lcom/czhj/wire/okio/Buffer;

    iget-object p1, p1, Lcom/czhj/wire/okio/Buffer;->b:Lcom/czhj/wire/okio/Segment;

    iput-object p1, p0, Lcom/czhj/wire/okio/PeekSource;->c:Lcom/czhj/wire/okio/Segment;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/czhj/wire/okio/Segment;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/czhj/wire/okio/PeekSource;->d:I

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/czhj/wire/okio/PeekSource;->e:Z

    return-void
.end method

.method public read(Lcom/czhj/wire/okio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    iget-boolean v3, p0, Lcom/czhj/wire/okio/PeekSource;->e:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/czhj/wire/okio/PeekSource;->c:Lcom/czhj/wire/okio/Segment;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/czhj/wire/okio/PeekSource;->b:Lcom/czhj/wire/okio/Buffer;

    iget-object v4, v4, Lcom/czhj/wire/okio/Buffer;->b:Lcom/czhj/wire/okio/Segment;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/czhj/wire/okio/PeekSource;->d:I

    iget v4, v4, Lcom/czhj/wire/okio/Segment;->d:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Peek source is invalid because upstream source was used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/czhj/wire/okio/PeekSource;->a:Lcom/czhj/wire/okio/BufferedSource;

    iget-wide v1, p0, Lcom/czhj/wire/okio/PeekSource;->f:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/czhj/wire/okio/BufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_3
    iget-object v0, p0, Lcom/czhj/wire/okio/PeekSource;->c:Lcom/czhj/wire/okio/Segment;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/czhj/wire/okio/PeekSource;->b:Lcom/czhj/wire/okio/Buffer;

    iget-object v0, v0, Lcom/czhj/wire/okio/Buffer;->b:Lcom/czhj/wire/okio/Segment;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/czhj/wire/okio/PeekSource;->c:Lcom/czhj/wire/okio/Segment;

    iget v0, v0, Lcom/czhj/wire/okio/Segment;->d:I

    iput v0, p0, Lcom/czhj/wire/okio/PeekSource;->d:I

    :cond_4
    iget-object v0, p0, Lcom/czhj/wire/okio/PeekSource;->b:Lcom/czhj/wire/okio/Buffer;

    iget-wide v0, v0, Lcom/czhj/wire/okio/Buffer;->c:J

    iget-wide v2, p0, Lcom/czhj/wire/okio/PeekSource;->f:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v2, p0, Lcom/czhj/wire/okio/PeekSource;->b:Lcom/czhj/wire/okio/Buffer;

    iget-wide v4, p0, Lcom/czhj/wire/okio/PeekSource;->f:J

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/czhj/wire/okio/Buffer;->copyTo(Lcom/czhj/wire/okio/Buffer;JJ)Lcom/czhj/wire/okio/Buffer;

    iget-wide p1, p0, Lcom/czhj/wire/okio/PeekSource;->f:J

    add-long/2addr p1, v6

    iput-wide p1, p0, Lcom/czhj/wire/okio/PeekSource;->f:J

    return-wide v6

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lcom/czhj/wire/okio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/czhj/wire/okio/PeekSource;->a:Lcom/czhj/wire/okio/BufferedSource;

    invoke-interface {v0}, Lcom/czhj/wire/okio/Source;->timeout()Lcom/czhj/wire/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
