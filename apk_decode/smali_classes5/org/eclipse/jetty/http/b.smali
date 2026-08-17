.class public Lorg/eclipse/jetty/http/b;
.super Lorg/eclipse/jetty/http/o;
.source "SourceFile"


# instance fields
.field public final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/http/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/eclipse/jetty/http/b;->q:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->m:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    iget-object v3, p0, Lorg/eclipse/jetty/http/b;->q:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, v0, v1, v3}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    invoke-static {v2, v0, v1}, Lorg/eclipse/jetty/util/o;->e([BII)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->f:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->g:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    iget-object v3, p0, Lorg/eclipse/jetty/http/b;->q:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, v0, v1, v3}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->k:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    iget-object v3, p0, Lorg/eclipse/jetty/http/b;->q:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, v0, v1, v3}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public g()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->g:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 10
    .line 11
    add-int/lit8 v3, v0, 0x1

    .line 12
    .line 13
    sub-int/2addr v1, v0

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    invoke-static {v2, v3, v1, v0}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->k:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->l:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 10
    .line 11
    add-int/lit8 v3, v0, 0x1

    .line 12
    .line 13
    sub-int/2addr v1, v0

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iget-object v0, p0, Lorg/eclipse/jetty/http/b;->q:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v3, v1, v0}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->d:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->e:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    sub-int v2, v1, v0

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    const/16 v4, 0x70

    .line 13
    .line 14
    const/16 v5, 0x68

    .line 15
    .line 16
    const/16 v6, 0x74

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 21
    .line 22
    aget-byte v7, v3, v0

    .line 23
    .line 24
    if-ne v7, v5, :cond_1

    .line 25
    .line 26
    add-int/lit8 v7, v0, 0x1

    .line 27
    .line 28
    aget-byte v7, v3, v7

    .line 29
    .line 30
    if-ne v7, v6, :cond_1

    .line 31
    .line 32
    add-int/lit8 v7, v0, 0x2

    .line 33
    .line 34
    aget-byte v7, v3, v7

    .line 35
    .line 36
    if-ne v7, v6, :cond_1

    .line 37
    .line 38
    add-int/lit8 v7, v0, 0x3

    .line 39
    .line 40
    aget-byte v3, v3, v7

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    const-string v0, "http"

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    const/4 v3, 0x6

    .line 48
    if-ne v2, v3, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 51
    .line 52
    aget-byte v3, v2, v0

    .line 53
    .line 54
    if-ne v3, v5, :cond_2

    .line 55
    .line 56
    add-int/lit8 v3, v0, 0x1

    .line 57
    .line 58
    aget-byte v3, v2, v3

    .line 59
    .line 60
    if-ne v3, v6, :cond_2

    .line 61
    .line 62
    add-int/lit8 v3, v0, 0x2

    .line 63
    .line 64
    aget-byte v3, v2, v3

    .line 65
    .line 66
    if-ne v3, v6, :cond_2

    .line 67
    .line 68
    add-int/lit8 v3, v0, 0x3

    .line 69
    .line 70
    aget-byte v3, v2, v3

    .line 71
    .line 72
    if-ne v3, v4, :cond_2

    .line 73
    .line 74
    add-int/lit8 v3, v0, 0x4

    .line 75
    .line 76
    aget-byte v2, v2, v3

    .line 77
    .line 78
    const/16 v3, 0x73

    .line 79
    .line 80
    if-ne v2, v3, :cond_2

    .line 81
    .line 82
    const-string v0, "https"

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 86
    .line 87
    sub-int/2addr v1, v0

    .line 88
    add-int/lit8 v1, v1, -0x1

    .line 89
    .line 90
    iget-object v3, p0, Lorg/eclipse/jetty/http/b;->q:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2, v0, v1, v3}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 6
    .line 7
    iget v1, p0, Lorg/eclipse/jetty/http/o;->d:I

    .line 8
    .line 9
    iget v2, p0, Lorg/eclipse/jetty/http/o;->m:I

    .line 10
    .line 11
    sub-int/2addr v2, v1

    .line 12
    iget-object v3, p0, Lorg/eclipse/jetty/http/b;->q:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method
