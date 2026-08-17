.class public abstract LL1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/d;


# static fields
.field public static final l:LR1/c;

.field public static final m:Z


# instance fields
.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:LL1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LL1/a;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LL1/a;->l:LR1/c;

    .line 8
    .line 9
    const-string v0, "org.eclipse.jetty.io.AbstractBuffer.boundsChecking"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, LL1/a;->m:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p2, "IMMUTABLE && VOLATILE"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0}, LL1/a;->o0(I)V

    .line 19
    .line 20
    .line 21
    iput p1, p0, LL1/a;->b:I

    .line 22
    .line 23
    iput-boolean p2, p0, LL1/a;->c:Z

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public A0(LL1/d;)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p1}, LL1/d;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, LL1/a;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    return v3

    .line 17
    :cond_1
    iget v1, p0, LL1/a;->f:I

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    instance-of v2, p1, LL1/a;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    move-object v2, p1

    .line 26
    check-cast v2, LL1/a;

    .line 27
    .line 28
    iget v2, v2, LL1/a;->f:I

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-eq v1, v2, :cond_2

    .line 33
    .line 34
    return v3

    .line 35
    :cond_2
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-interface {p1}, LL1/d;->n0()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {p1}, LL1/d;->p0()[B

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/16 v6, 0x7a

    .line 52
    .line 53
    const/16 v7, 0x61

    .line 54
    .line 55
    if-eqz v4, :cond_6

    .line 56
    .line 57
    if-eqz v5, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :goto_0
    add-int/lit8 v8, p1, -0x1

    .line 64
    .line 65
    if-le p1, v1, :cond_a

    .line 66
    .line 67
    aget-byte p1, v4, v8

    .line 68
    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    aget-byte v9, v5, v2

    .line 72
    .line 73
    if-eq p1, v9, :cond_5

    .line 74
    .line 75
    if-gt v7, p1, :cond_3

    .line 76
    .line 77
    if-gt p1, v6, :cond_3

    .line 78
    .line 79
    add-int/lit8 p1, p1, -0x20

    .line 80
    .line 81
    int-to-byte p1, p1

    .line 82
    :cond_3
    if-gt v7, v9, :cond_4

    .line 83
    .line 84
    if-gt v9, v6, :cond_4

    .line 85
    .line 86
    add-int/lit8 v9, v9, -0x20

    .line 87
    .line 88
    int-to-byte v9, v9

    .line 89
    :cond_4
    if-eq p1, v9, :cond_5

    .line 90
    .line 91
    return v3

    .line 92
    :cond_5
    move p1, v8

    .line 93
    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .line 99
    .line 100
    if-le v4, v1, :cond_a

    .line 101
    .line 102
    invoke-interface {p0, v5}, LL1/d;->k0(I)B

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    add-int/lit8 v2, v2, -0x1

    .line 107
    .line 108
    invoke-interface {p1, v2}, LL1/d;->k0(I)B

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eq v4, v8, :cond_9

    .line 113
    .line 114
    if-gt v7, v4, :cond_7

    .line 115
    .line 116
    if-gt v4, v6, :cond_7

    .line 117
    .line 118
    add-int/lit8 v4, v4, -0x20

    .line 119
    .line 120
    int-to-byte v4, v4

    .line 121
    :cond_7
    if-gt v7, v8, :cond_8

    .line 122
    .line 123
    if-gt v8, v6, :cond_8

    .line 124
    .line 125
    add-int/lit8 v8, v8, -0x20

    .line 126
    .line 127
    int-to-byte v8, v8

    .line 128
    :cond_8
    if-eq v4, v8, :cond_9

    .line 129
    .line 130
    return v3

    .line 131
    :cond_9
    move v4, v5

    .line 132
    goto :goto_1

    .line 133
    :cond_a
    return v0
.end method

.method public B0()Z
    .locals 2

    .line 1
    iget v0, p0, LL1/a;->e:I

    .line 2
    .line 3
    iget v1, p0, LL1/a;->d:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public C0()LL1/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, LL1/a;->s0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, LL1/a;->a(I)LL1/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public a(I)LL1/h;
    .locals 4

    .line 1
    invoke-virtual {p0}, LL1/a;->buffer()LL1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p0, LL1/d$a;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    instance-of v0, v0, LL1/d$a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, LL1/h;

    .line 16
    .line 17
    invoke-virtual {p0}, LL1/a;->a0()[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, LL1/a;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-direct {v0, v1, v2, v3, p1}, LL1/h;-><init>([BIII)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    :goto_0
    new-instance v0, LL1/h$a;

    .line 30
    .line 31
    invoke-virtual {p0}, LL1/a;->a0()[B

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, LL1/a;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-direct {v0, v1, v2, v3, p1}, LL1/h$a;-><init>([BIII)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public a0()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, LL1/a;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, LL1/a;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-interface {p0, v0, v1, v3, v2}, LL1/d;->d0(I[BII)I

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method public b([BII)I
    .locals 1

    .line 1
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1, p2, p3}, LL1/a;->g0(I[BII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public b0(ILL1/d;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, LL1/a;->f:I

    .line 3
    .line 4
    invoke-interface {p2}, LL1/d;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    add-int v2, p1, v1

    .line 9
    .line 10
    invoke-interface {p0}, LL1/d;->w0()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-le v2, v3, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, LL1/d;->w0()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v1, p1

    .line 21
    :cond_0
    invoke-interface {p2}, LL1/d;->p0()[B

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {p2}, LL1/d;->getIndex()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {v2, p2, v3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {p2}, LL1/d;->getIndex()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :goto_0
    if-ge v0, v1, :cond_4

    .line 48
    .line 49
    add-int/lit8 v3, p1, 0x1

    .line 50
    .line 51
    add-int/lit8 v4, p2, 0x1

    .line 52
    .line 53
    aget-byte p2, v2, p2

    .line 54
    .line 55
    invoke-interface {p0, p1, p2}, LL1/d;->c0(IB)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    move p1, v3

    .line 61
    move p2, v4

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-interface {p2}, LL1/d;->getIndex()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_1
    if-ge v0, v1, :cond_4

    .line 70
    .line 71
    add-int/lit8 v4, p1, 0x1

    .line 72
    .line 73
    add-int/lit8 v5, v2, 0x1

    .line 74
    .line 75
    invoke-interface {p2, v2}, LL1/d;->k0(I)B

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    aput-byte v2, v3, p1

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    move p1, v4

    .line 84
    move v2, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-interface {p2}, LL1/d;->getIndex()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_2
    if-ge v0, v1, :cond_4

    .line 91
    .line 92
    add-int/lit8 v3, p1, 0x1

    .line 93
    .line 94
    add-int/lit8 v4, v2, 0x1

    .line 95
    .line 96
    invoke-interface {p2, v2}, LL1/d;->k0(I)B

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-interface {p0, p1, v2}, LL1/d;->c0(IB)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    move p1, v3

    .line 106
    move v2, v4

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    return v1
.end method

.method public buffer()LL1/d;
    .locals 0

    .line 1
    return-object p0
.end method

.method public c(I)LL1/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0, p1}, LL1/a;->h0(II)LL1/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0}, LL1/a;->o0(I)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, LL1/a;->o0(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, LL1/a;->z0(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e0(Ljava/io/InputStream;I)I
    .locals 4

    .line 1
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, LL1/a;->f0()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le v1, p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p2, v1

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v1, p0, LL1/a;->e:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_1

    .line 22
    .line 23
    iget p2, p0, LL1/a;->e:I

    .line 24
    .line 25
    add-int/2addr p2, p1

    .line 26
    iput p2, p0, LL1/a;->e:I

    .line 27
    .line 28
    :cond_1
    return p1

    .line 29
    :cond_2
    const/16 v0, 0x400

    .line 30
    .line 31
    if-le p2, v0, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    move v0, p2

    .line 35
    :goto_1
    new-array v1, v0, [B

    .line 36
    .line 37
    :goto_2
    const/4 v2, 0x0

    .line 38
    if-lez p2, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-gez v3, :cond_4

    .line 45
    .line 46
    const/4 p1, -0x1

    .line 47
    return p1

    .line 48
    :cond_4
    invoke-virtual {p0, v1, v2, v3}, LL1/a;->b([BII)I

    .line 49
    .line 50
    .line 51
    sub-int/2addr p2, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_5
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_8

    .line 7
    .line 8
    instance-of v2, p1, LL1/d;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    move-object v2, p1

    .line 14
    check-cast v2, LL1/d;

    .line 15
    .line 16
    instance-of v3, p0, LL1/d$a;

    .line 17
    .line 18
    if-nez v3, :cond_7

    .line 19
    .line 20
    instance-of v3, v2, LL1/d$a;

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-interface {v2}, LL1/d;->length()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, LL1/a;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eq v3, v4, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    iget v3, p0, LL1/a;->f:I

    .line 37
    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    instance-of v4, p1, LL1/a;

    .line 41
    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    check-cast p1, LL1/a;

    .line 45
    .line 46
    iget p1, p1, LL1/a;->f:I

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    if-eq v3, p1, :cond_4

    .line 51
    .line 52
    return v1

    .line 53
    :cond_4
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-interface {v2}, LL1/d;->n0()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .line 66
    .line 67
    if-le v4, p1, :cond_6

    .line 68
    .line 69
    invoke-interface {p0, v5}, LL1/d;->k0(I)B

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    add-int/lit8 v3, v3, -0x1

    .line 74
    .line 75
    invoke-interface {v2, v3}, LL1/d;->k0(I)B

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eq v4, v6, :cond_5

    .line 80
    .line 81
    return v1

    .line 82
    :cond_5
    move v4, v5

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    return v0

    .line 85
    :cond_7
    :goto_1
    invoke-virtual {p0, v2}, LL1/a;->A0(LL1/d;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    :cond_8
    :goto_2
    return v1
.end method

.method public f0()I
    .locals 2

    .line 1
    invoke-interface {p0}, LL1/d;->w0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, LL1/a;->e:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public abstract g0(I[BII)I
.end method

.method public get()B
    .locals 2

    .line 1
    iget v0, p0, LL1/a;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LL1/a;->d:I

    invoke-interface {p0, v0}, LL1/d;->k0(I)B

    move-result v0

    return v0
.end method

.method public get(I)LL1/d;
    .locals 2

    .line 2
    invoke-virtual {p0}, LL1/a;->getIndex()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0, p1}, LL1/a;->h0(II)LL1/d;

    move-result-object v1

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, LL1/a;->z0(I)V

    return-object v1
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, LL1/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public h0(II)LL1/d;
    .locals 7

    .line 1
    iget-object v0, p0, LL1/a;->k:LL1/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v1, LL1/l;

    .line 6
    .line 7
    add-int v5, p1, p2

    .line 8
    .line 9
    invoke-virtual {p0}, LL1/a;->isReadOnly()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    :goto_0
    move v6, p2

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p2, 0x2

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    const/4 v3, -0x1

    .line 21
    move-object v2, p0

    .line 22
    move v4, p1

    .line 23
    invoke-direct/range {v1 .. v6}, LL1/l;-><init>(LL1/d;IIII)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v2, LL1/a;->k:LL1/l;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    move-object v2, p0

    .line 30
    move v4, p1

    .line 31
    invoke-virtual {p0}, LL1/a;->buffer()LL1/d;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, LL1/l;->update(LL1/d;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v2, LL1/a;->k:LL1/l;

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    invoke-virtual {p1, v0}, LL1/a;->o0(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, LL1/a;->k:LL1/l;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, LL1/a;->z0(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v2, LL1/a;->k:LL1/l;

    .line 51
    .line 52
    add-int/2addr p2, v4

    .line 53
    invoke-virtual {p1, p2}, LL1/a;->q0(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, v2, LL1/a;->k:LL1/l;

    .line 57
    .line 58
    invoke-virtual {p1, v4}, LL1/a;->z0(I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    iget-object p1, v2, LL1/a;->k:LL1/l;

    .line 62
    .line 63
    return-object p1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget v0, p0, LL1/a;->f:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, LL1/a;->g:I

    .line 6
    .line 7
    iget v1, p0, LL1/a;->d:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, LL1/a;->h:I

    .line 12
    .line 13
    iget v1, p0, LL1/a;->e:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_6

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v2, 0x7a

    .line 26
    .line 27
    const/16 v3, 0x61

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_0
    add-int/lit8 v4, v1, -0x1

    .line 36
    .line 37
    if-le v1, v0, :cond_4

    .line 38
    .line 39
    invoke-interface {p0, v4}, LL1/d;->k0(I)B

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-gt v3, v1, :cond_1

    .line 44
    .line 45
    if-gt v1, v2, :cond_1

    .line 46
    .line 47
    add-int/lit8 v1, v1, -0x20

    .line 48
    .line 49
    int-to-byte v1, v1

    .line 50
    :cond_1
    iget v5, p0, LL1/a;->f:I

    .line 51
    .line 52
    mul-int/lit8 v5, v5, 0x1f

    .line 53
    .line 54
    add-int/2addr v5, v1

    .line 55
    iput v5, p0, LL1/a;->f:I

    .line 56
    .line 57
    move v1, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .line 64
    .line 65
    if-le v4, v0, :cond_4

    .line 66
    .line 67
    aget-byte v4, v1, v5

    .line 68
    .line 69
    if-gt v3, v4, :cond_3

    .line 70
    .line 71
    if-gt v4, v2, :cond_3

    .line 72
    .line 73
    add-int/lit8 v4, v4, -0x20

    .line 74
    .line 75
    int-to-byte v4, v4

    .line 76
    :cond_3
    iget v6, p0, LL1/a;->f:I

    .line 77
    .line 78
    mul-int/lit8 v6, v6, 0x1f

    .line 79
    .line 80
    add-int/2addr v6, v4

    .line 81
    iput v6, p0, LL1/a;->f:I

    .line 82
    .line 83
    move v4, v5

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget v0, p0, LL1/a;->f:I

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    const/4 v0, -0x1

    .line 90
    iput v0, p0, LL1/a;->f:I

    .line 91
    .line 92
    :cond_5
    iget v0, p0, LL1/a;->d:I

    .line 93
    .line 94
    iput v0, p0, LL1/a;->g:I

    .line 95
    .line 96
    iget v0, p0, LL1/a;->e:I

    .line 97
    .line 98
    iput v0, p0, LL1/a;->h:I

    .line 99
    .line 100
    :cond_6
    iget v0, p0, LL1/a;->f:I

    .line 101
    .line 102
    return v0
.end method

.method public i0()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, LL1/a;->buffer()LL1/d;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ",m="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ",g="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ",p="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ",c="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-interface {p0}, LL1/d;->w0()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, "]={"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ltz v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_0
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-ge v1, v2, :cond_0

    .line 102
    .line 103
    invoke-interface {p0, v1}, LL1/d;->k0(I)B

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-static {v2, v0}, Lorg/eclipse/jetty/util/n;->g(BLjava/lang/Appendable;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    const-string v1, "}{"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/4 v2, 0x0

    .line 123
    :goto_1
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ge v1, v3, :cond_3

    .line 128
    .line 129
    invoke-interface {p0, v1}, LL1/d;->k0(I)B

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-static {v3, v0}, Lorg/eclipse/jetty/util/n;->g(BLjava/lang/Appendable;)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v2, 0x1

    .line 137
    .line 138
    const/16 v4, 0x32

    .line 139
    .line 140
    if-ne v2, v4, :cond_2

    .line 141
    .line 142
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    sub-int/2addr v2, v1

    .line 147
    const/16 v4, 0x14

    .line 148
    .line 149
    if-le v2, v4, :cond_2

    .line 150
    .line 151
    const-string v1, " ... "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    sub-int/2addr v1, v4

    .line 161
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    move v2, v3

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    const/16 v1, 0x7d

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    return-object v0
.end method

.method public isReadOnly()Z
    .locals 2

    .line 1
    iget v0, p0, LL1/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public j0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v2, Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {p0}, LL1/a;->length()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-direct {v2, v1, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, LL1/a;->a0()[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, LL1/a;->length()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-direct {v1, v2, v0, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :goto_0
    sget-object v1, LL1/a;->l:LR1/c;

    .line 39
    .line 40
    invoke-interface {v1, p1}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, LL1/a;->a0()[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, LL1/a;->length()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-direct {p1, v1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method

.method public l0()V
    .locals 1

    .line 1
    iget v0, p0, LL1/a;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, LL1/a;->o0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public length()I
    .locals 2

    .line 1
    iget v0, p0, LL1/a;->e:I

    .line 2
    .line 3
    iget v1, p0, LL1/a;->d:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public m0(LL1/d;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, LL1/a;->b0(ILL1/d;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public final n0()I
    .locals 1

    .line 1
    iget v0, p0, LL1/a;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public o0(I)V
    .locals 0

    .line 1
    iput p1, p0, LL1/a;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public peek()B
    .locals 1

    .line 1
    iget v0, p0, LL1/a;->d:I

    .line 2
    .line 3
    invoke-interface {p0, v0}, LL1/d;->k0(I)B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public put(B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0, v0, p1}, LL1/d;->c0(IB)V

    .line 6
    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public q0(I)V
    .locals 0

    .line 1
    iput p1, p0, LL1/a;->e:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, LL1/a;->f:I

    .line 5
    .line 6
    return-void
.end method

.method public r0([B)I
    .locals 3

    .line 1
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    array-length v2, p1

    .line 7
    invoke-virtual {p0, v0, p1, v1, v2}, LL1/a;->g0(I[BII)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr v0, p1

    .line 12
    invoke-virtual {p0, v0}, LL1/a;->q0(I)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public s0()Z
    .locals 1

    .line 1
    iget v0, p0, LL1/a;->b:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public skip(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, LL1/a;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, LL1/a;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, p1

    .line 16
    invoke-virtual {p0, v0}, LL1/a;->z0(I)V

    .line 17
    .line 18
    .line 19
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, LL1/a;->s0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, LL1/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, LL1/a;->a0()[B

    move-result-object v2

    invoke-virtual {p0}, LL1/a;->length()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, LL1/a;->j:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, LL1/a;->j:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, LL1/a;->a0()[B

    move-result-object v2

    invoke-virtual {p0}, LL1/a;->length()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-interface {p0}, LL1/d;->p0()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, LL1/a;->getIndex()I

    move-result v3

    invoke-virtual {p0}, LL1/a;->length()I

    move-result v4

    invoke-direct {v2, v1, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception p1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, LL1/a;->a0()[B

    move-result-object v2

    invoke-virtual {p0}, LL1/a;->length()I

    move-result v3

    invoke-direct {v1, v2, v0, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 9
    :goto_0
    sget-object v1, LL1/a;->l:LR1/c;

    invoke-interface {v1, p1}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 10
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, LL1/a;->a0()[B

    move-result-object v1

    invoke-virtual {p0}, LL1/a;->length()I

    move-result v2

    invoke-direct {p1, v1, v0, v2}, Ljava/lang/String;-><init>([BII)V

    return-object p1
.end method

.method public u0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LL1/a;->isReadOnly()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    if-lez v0, :cond_4

    .line 23
    .line 24
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v2, v0

    .line 33
    if-lez v2, :cond_2

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v1, v0, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p0, v0, v2}, LL1/a;->h0(II)LL1/d;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p0, v3, v1}, LL1/a;->b0(ILL1/d;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_1
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-lez v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    sub-int/2addr v1, v0

    .line 68
    invoke-virtual {p0, v1}, LL1/a;->o0(I)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    sub-int/2addr v1, v0

    .line 76
    invoke-virtual {p0, v1}, LL1/a;->z0(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, LL1/a;->n0()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sub-int/2addr v1, v0

    .line 84
    invoke-virtual {p0, v1}, LL1/a;->q0(I)V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void

    .line 88
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string v1, "READONLY"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method public v0()LL1/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, LL1/a;->x0()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, LL1/a;->c(I)LL1/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6

    .line 1
    invoke-interface {p0}, LL1/d;->p0()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, LL1/a;->getIndex()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, LL1/a;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 16
    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    invoke-virtual {p0}, LL1/a;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x400

    .line 24
    .line 25
    if-le v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, v0

    .line 29
    :goto_0
    new-array v2, v1, [B

    .line 30
    .line 31
    iget v3, p0, LL1/a;->d:I

    .line 32
    .line 33
    :goto_1
    if-lez v0, :cond_3

    .line 34
    .line 35
    if-le v0, v1, :cond_2

    .line 36
    .line 37
    move v4, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v4, v0

    .line 40
    :goto_2
    const/4 v5, 0x0

    .line 41
    invoke-interface {p0, v3, v2, v5, v4}, LL1/d;->d0(I[BII)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    .line 47
    .line 48
    add-int/2addr v3, v4

    .line 49
    sub-int/2addr v0, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_3
    invoke-virtual {p0}, LL1/a;->clear()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public x0()I
    .locals 1

    .line 1
    iget v0, p0, LL1/a;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public y0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LL1/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public z0(I)V
    .locals 0

    .line 1
    iput p1, p0, LL1/a;->d:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, LL1/a;->f:I

    .line 5
    .line 6
    return-void
.end method
