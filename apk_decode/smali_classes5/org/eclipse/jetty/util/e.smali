.class public Lorg/eclipse/jetty/util/e;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public b:[B

.field public c:I

.field public d:Lorg/eclipse/jetty/util/f;

.field public e:Ljava/io/OutputStreamWriter;

.field public f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/eclipse/jetty/util/e;->e:Ljava/io/OutputStreamWriter;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/e;->f:Z

    .line 11
    .line 12
    new-array p1, p1, [B

    .line 13
    .line 14
    iput-object p1, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public A(C)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/e;->c(I)V

    .line 3
    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x7f

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 12
    .line 13
    iget v1, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    aput-byte p1, v0, v1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-array v1, v0, [C

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-char p1, v1, v2

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jetty/util/e;->B([CII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final B([CII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/eclipse/jetty/util/f;

    .line 6
    .line 7
    mul-int/lit8 v1, p3, 0x2

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/f;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 13
    .line 14
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 17
    .line 18
    const-string v2, "ISO-8859-1"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/eclipse/jetty/util/e;->e:Ljava/io/OutputStreamWriter;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/e;->e:Ljava/io/OutputStreamWriter;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStreamWriter;->write([CII)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/eclipse/jetty/util/e;->e:Ljava/io/OutputStreamWriter;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/f;->getCount()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/e;->c(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/f;->b()[B

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p2, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 55
    .line 56
    iget p3, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 57
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/f;->getCount()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 69
    .line 70
    iget-object p2, p0, Lorg/eclipse/jetty/util/e;->d:Lorg/eclipse/jetty/util/f;

    .line 71
    .line 72
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/f;->getCount()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    add-int/2addr p1, p2

    .line 77
    iput p1, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 78
    .line 79
    return-void
.end method

.method public C(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 3
    .line 4
    return-void
.end method

.method public c(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 2
    .line 3
    add-int v1, v0, p1

    .line 4
    .line 5
    iget-object v2, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-le v1, v3, :cond_1

    .line 9
    .line 10
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/e;->f:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    array-length v1, v2

    .line 15
    add-int/2addr v1, p1

    .line 16
    mul-int/lit8 v1, v1, 0x4

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x3

    .line 19
    .line 20
    new-array p1, v1, [B

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "Buffer overflow: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/eclipse/jetty/util/e;->b:[B

    .line 42
    .line 43
    array-length v1, v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 10
    const-string p1, "null"

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/e;->write(Ljava/lang/String;II)V

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 12
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/e;->c(I)V

    :goto_0
    if-ge v0, v1, :cond_2

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ltz v2, :cond_1

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_1

    .line 14
    iget-object v3, p0, Lorg/eclipse/jetty/util/e;->b:[B

    iget v4, p0, Lorg/eclipse/jetty/util/e;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jetty/util/e;->c:I

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/e;->B([CII)V

    :cond_2
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5

    .line 16
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/e;->c(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ltz v2, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 18
    iget-object v1, p0, Lorg/eclipse/jetty/util/e;->b:[B

    iget v3, p0, Lorg/eclipse/jetty/util/e;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/e;->c:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sub-int/2addr p3, v0

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jetty/util/e;->B([CII)V

    :cond_1
    return-void
.end method

.method public write([C)V
    .locals 5

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/e;->c(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-char v1, p1, v0

    if-ltz v1, :cond_0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lorg/eclipse/jetty/util/e;->b:[B

    iget v3, p0, Lorg/eclipse/jetty/util/e;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/e;->c:I

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jetty/util/e;->B([CII)V

    :cond_1
    return-void
.end method

.method public write([CII)V
    .locals 5

    .line 6
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/e;->c(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 7
    aget-char v2, p1, v1

    if-ltz v2, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 8
    iget-object v1, p0, Lorg/eclipse/jetty/util/e;->b:[B

    iget v3, p0, Lorg/eclipse/jetty/util/e;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/util/e;->c:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p3, v0

    .line 9
    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jetty/util/e;->B([CII)V

    :cond_1
    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/util/e;->c:I

    .line 2
    .line 3
    return v0
.end method
