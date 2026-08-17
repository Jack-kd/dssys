.class public abstract LL1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[I

.field public static final c:[I

.field public static final d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, LL1/g;->a:[B

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, LL1/g;->b:[I

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    fill-array-data v0, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v0, LL1/g;->c:[I

    .line 27
    .line 28
    const/16 v0, 0x13

    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_3

    .line 33
    .line 34
    .line 35
    sput-object v0, LL1/g;->d:[J

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 4
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_2
    .array-data 4
        0x10000000
        0x1000000
        0x100000
        0x10000
        0x1000
        0x100
        0x10
        0x1
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_3
    .array-data 8
        0xde0b6b3a7640000L
        0x16345785d8a0000L
        0x2386f26fc10000L
        0x38d7ea4c68000L
        0x5af3107a4000L
        0x9184e72a000L
        0xe8d4a51000L
        0x174876e800L
        0x2540be400L
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data
.end method

.method public static a(LL1/d;LL1/d;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, LL1/d;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, LL1/d;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-interface {p1}, LL1/d;->getIndex()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-interface {p0}, LL1/d;->getIndex()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    invoke-interface {p0}, LL1/d;->n0()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v1, v3, :cond_2

    .line 26
    .line 27
    invoke-interface {p0, v1}, LL1/d;->k0(I)B

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/lit8 v4, v0, 0x1

    .line 32
    .line 33
    invoke-interface {p1, v0}, LL1/d;->k0(I)B

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eq v3, v0, :cond_1

    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    move v0, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public static b(LL1/d;I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, LL1/d;->getIndex()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    const/16 v0, 0x30

    .line 10
    .line 11
    invoke-interface {p0, p1, v0}, LL1/d;->c0(IB)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, LL1/d;->z0(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-gez p1, :cond_1

    .line 19
    .line 20
    neg-int p1, p1

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-interface {p0}, LL1/d;->getIndex()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_1
    if-lez p1, :cond_2

    .line 29
    .line 30
    and-int/lit8 v2, p1, 0xf

    .line 31
    .line 32
    shr-int/lit8 p1, p1, 0x4

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    sget-object v3, LL1/g;->a:[B

    .line 37
    .line 38
    aget-byte v2, v3, v2

    .line 39
    .line 40
    invoke-interface {p0, v1, v2}, LL1/d;->c0(IB)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    const/16 p1, 0x2d

    .line 49
    .line 50
    invoke-interface {p0, v1, p1}, LL1/d;->c0(IB)V

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-interface {p0, v1}, LL1/d;->z0(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static c(LL1/d;)V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static d(LL1/d;J)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x2d

    .line 8
    .line 9
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 10
    .line 11
    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    .line 13
    .line 14
    cmp-long v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/16 p1, 0x39

    .line 19
    .line 20
    invoke-interface {p0, p1}, LL1/d;->put(B)V

    .line 21
    .line 22
    .line 23
    const-wide p1, 0x31993af1d7c0000L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    neg-long p1, p1

    .line 30
    :cond_1
    :goto_0
    const-wide/16 v0, 0xa

    .line 31
    .line 32
    cmp-long v0, p1, v0

    .line 33
    .line 34
    if-gez v0, :cond_2

    .line 35
    .line 36
    sget-object v0, LL1/g;->a:[B

    .line 37
    .line 38
    long-to-int p1, p1

    .line 39
    aget-byte p1, v0, p1

    .line 40
    .line 41
    invoke-interface {p0, p1}, LL1/d;->put(B)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    move v1, v0

    .line 47
    :goto_1
    sget-object v2, LL1/g;->d:[J

    .line 48
    .line 49
    array-length v3, v2

    .line 50
    if-ge v0, v3, :cond_5

    .line 51
    .line 52
    aget-wide v3, v2, v0

    .line 53
    .line 54
    cmp-long v5, p1, v3

    .line 55
    .line 56
    if-gez v5, :cond_3

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    const/16 v2, 0x30

    .line 61
    .line 62
    invoke-interface {p0, v2}, LL1/d;->put(B)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    div-long v3, p1, v3

    .line 67
    .line 68
    sget-object v1, LL1/g;->a:[B

    .line 69
    .line 70
    long-to-int v5, v3

    .line 71
    aget-byte v1, v1, v5

    .line 72
    .line 73
    invoke-interface {p0, v1}, LL1/d;->put(B)V

    .line 74
    .line 75
    .line 76
    aget-wide v1, v2, v0

    .line 77
    .line 78
    mul-long/2addr v3, v1

    .line 79
    sub-long/2addr p1, v3

    .line 80
    const/4 v1, 0x1

    .line 81
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    return-void
.end method

.method public static e(LL1/d;I)V
    .locals 5

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gez p1, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x2d

    .line 6
    .line 7
    invoke-interface {p0, v1}, LL1/d;->put(B)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x38

    .line 15
    .line 16
    invoke-interface {p0, p1}, LL1/d;->put(B)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    neg-int p1, p1

    .line 42
    :cond_1
    const/16 v1, 0x10

    .line 43
    .line 44
    if-ge p1, v1, :cond_2

    .line 45
    .line 46
    sget-object v0, LL1/g;->a:[B

    .line 47
    .line 48
    aget-byte p1, v0, p1

    .line 49
    .line 50
    invoke-interface {p0, p1}, LL1/d;->put(B)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    move v2, v1

    .line 56
    :goto_0
    sget-object v3, LL1/g;->c:[I

    .line 57
    .line 58
    array-length v4, v3

    .line 59
    if-ge v1, v4, :cond_5

    .line 60
    .line 61
    aget v4, v3, v1

    .line 62
    .line 63
    if-ge p1, v4, :cond_3

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-interface {p0, v0}, LL1/d;->put(B)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    div-int v2, p1, v4

    .line 72
    .line 73
    sget-object v4, LL1/g;->a:[B

    .line 74
    .line 75
    aget-byte v4, v4, v2

    .line 76
    .line 77
    invoke-interface {p0, v4}, LL1/d;->put(B)V

    .line 78
    .line 79
    .line 80
    aget v3, v3, v1

    .line 81
    .line 82
    mul-int/2addr v2, v3

    .line 83
    sub-int/2addr p1, v2

    .line 84
    const/4 v2, 0x1

    .line 85
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    return-void
.end method

.method public static f(LL1/d;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, LL1/e$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/m;->d:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-interface {p0, v0}, LL1/d;->j0(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static g(J)LL1/d;
    .locals 2

    .line 1
    new-instance v0, LL1/h;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, LL1/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0, p1}, LL1/g;->d(LL1/d;J)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static h(LL1/d;)I
    .locals 7

    .line 1
    invoke-interface {p0}, LL1/d;->getIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    invoke-interface {p0}, LL1/d;->n0()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-ge v0, v4, :cond_3

    .line 13
    .line 14
    invoke-interface {p0, v0}, LL1/d;->k0(I)B

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x20

    .line 19
    .line 20
    if-gt v4, v5, :cond_0

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    const/16 v5, 0x30

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-lt v4, v5, :cond_1

    .line 29
    .line 30
    const/16 v5, 0x39

    .line 31
    .line 32
    if-gt v4, v5, :cond_1

    .line 33
    .line 34
    mul-int/lit8 v2, v2, 0xa

    .line 35
    .line 36
    add-int/lit8 v4, v4, -0x30

    .line 37
    .line 38
    add-int/2addr v2, v4

    .line 39
    move v1, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v5, 0x2d

    .line 42
    .line 43
    if-ne v4, v5, :cond_3

    .line 44
    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    move v3, v6

    .line 48
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    neg-int p0, v2

    .line 56
    return p0

    .line 57
    :cond_4
    return v2

    .line 58
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public static i(LL1/d;)J
    .locals 10

    .line 1
    invoke-interface {p0}, LL1/d;->getIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    :goto_0
    invoke-interface {p0}, LL1/d;->n0()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-ge v0, v5, :cond_3

    .line 14
    .line 15
    invoke-interface {p0, v0}, LL1/d;->k0(I)B

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/16 v6, 0x20

    .line 20
    .line 21
    if-gt v5, v6, :cond_0

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    const/16 v6, 0x30

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    if-lt v5, v6, :cond_1

    .line 30
    .line 31
    const/16 v6, 0x39

    .line 32
    .line 33
    if-gt v5, v6, :cond_1

    .line 34
    .line 35
    const-wide/16 v8, 0xa

    .line 36
    .line 37
    mul-long/2addr v1, v8

    .line 38
    add-int/lit8 v5, v5, -0x30

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    add-long/2addr v1, v5

    .line 42
    move v3, v7

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v6, 0x2d

    .line 45
    .line 46
    if-ne v5, v6, :cond_3

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    move v4, v7

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    .line 55
    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    neg-long v0, v1

    .line 59
    return-wide v0

    .line 60
    :cond_4
    return-wide v1

    .line 61
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method
