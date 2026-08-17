.class public Lorg/eclipse/jetty/http/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:[B


# instance fields
.field public a:Z

.field public b:[B

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public final o:Lorg/eclipse/jetty/util/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lorg/eclipse/jetty/http/o;->p:[B

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/o;->a:Z

    .line 3
    sget-object v1, Lorg/eclipse/jetty/http/o;->p:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/o;->n:Z

    .line 5
    new-instance v0, Lorg/eclipse/jetty/util/q;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/q;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/o;->a:Z

    .line 8
    sget-object v1, Lorg/eclipse/jetty/http/o;->p:[B

    iput-object v1, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 9
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/o;->n:Z

    .line 10
    new-instance v0, Lorg/eclipse/jetty/util/q;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/q;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 11
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/o;->k(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jetty/http/o;->m:I

    .line 3
    .line 4
    iput v0, p0, Lorg/eclipse/jetty/http/o;->l:I

    .line 5
    .line 6
    iput v0, p0, Lorg/eclipse/jetty/http/o;->k:I

    .line 7
    .line 8
    iput v0, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 9
    .line 10
    iput v0, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 11
    .line 12
    iput v0, p0, Lorg/eclipse/jetty/http/o;->g:I

    .line 13
    .line 14
    iput v0, p0, Lorg/eclipse/jetty/http/o;->f:I

    .line 15
    .line 16
    iput v0, p0, Lorg/eclipse/jetty/http/o;->e:I

    .line 17
    .line 18
    iput v0, p0, Lorg/eclipse/jetty/http/o;->d:I

    .line 19
    .line 20
    sget-object v1, Lorg/eclipse/jetty/http/o;->p:[B

    .line 21
    .line 22
    iput-object v1, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    iput-object v1, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/o;->n:Z

    .line 29
    .line 30
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

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
    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/o;->o(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 11

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
    sub-int/2addr v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget v3, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 12
    .line 13
    if-ge v0, v3, :cond_7

    .line 14
    .line 15
    iget-object v3, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 16
    .line 17
    aget-byte v3, v3, v0

    .line 18
    .line 19
    const/16 v4, 0x25

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v3, v4, :cond_5

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/q;->f()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 32
    .line 33
    iget-object v3, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 34
    .line 35
    iget v4, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 36
    .line 37
    sub-int v6, v0, v4

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4, v6}, Lorg/eclipse/jetty/util/Utf8Appendable;->b([BII)V

    .line 40
    .line 41
    .line 42
    move v2, v5

    .line 43
    :cond_1
    add-int/lit8 v3, v0, 0x2

    .line 44
    .line 45
    iget v4, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 46
    .line 47
    if-ge v3, v4, :cond_4

    .line 48
    .line 49
    iget-object v6, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 50
    .line 51
    add-int/lit8 v7, v0, 0x1

    .line 52
    .line 53
    aget-byte v8, v6, v7

    .line 54
    .line 55
    const/16 v9, 0x75

    .line 56
    .line 57
    const/16 v10, 0x10

    .line 58
    .line 59
    if-ne v8, v9, :cond_3

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x5

    .line 62
    .line 63
    if-ge v0, v4, :cond_2

    .line 64
    .line 65
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .line 66
    .line 67
    const/4 v7, 0x4

    .line 68
    invoke-static {v6, v3, v7, v10}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 80
    .line 81
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/q;->h()Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "Bad %u encoding: "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_3
    const/4 v0, 0x2

    .line 120
    invoke-static {v6, v7, v0, v10}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    and-int/lit16 v0, v0, 0xff

    .line 125
    .line 126
    int-to-byte v0, v0

    .line 127
    iget-object v4, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 128
    .line 129
    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;->a(B)V

    .line 130
    .line 131
    .line 132
    move v0, v3

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "Bad % encoding: "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_5
    if-eqz v2, :cond_6

    .line 158
    .line 159
    iget-object v4, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 160
    .line 161
    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/util/Utf8Appendable;->a(B)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_1
    add-int/2addr v0, v5

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_7
    if-nez v2, :cond_8

    .line 168
    .line 169
    iget v0, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 170
    .line 171
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/o;->o(II)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0

    .line 176
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 177
    .line 178
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/q;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 2
    .line 3
    iget v1, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    sub-int/2addr v1, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    iget v5, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 13
    .line 14
    if-ge v0, v5, :cond_7

    .line 15
    .line 16
    iget-object v5, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 17
    .line 18
    aget-byte v6, v5, v0

    .line 19
    .line 20
    const/16 v7, 0x25

    .line 21
    .line 22
    if-ne v6, v7, :cond_5

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-array v2, v1, [B

    .line 27
    .line 28
    iget v6, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 29
    .line 30
    invoke-static {v5, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v5, v0, 0x2

    .line 34
    .line 35
    iget v6, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 36
    .line 37
    if-ge v5, v6, :cond_4

    .line 38
    .line 39
    iget-object v7, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 40
    .line 41
    add-int/lit8 v8, v0, 0x1

    .line 42
    .line 43
    aget-byte v9, v7, v8

    .line 44
    .line 45
    const/16 v10, 0x75

    .line 46
    .line 47
    const/16 v11, 0x10

    .line 48
    .line 49
    if-ne v9, v10, :cond_3

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x5

    .line 52
    .line 53
    if-ge v0, v6, :cond_2

    .line 54
    .line 55
    :try_start_0
    new-instance v6, Ljava/lang/String;

    .line 56
    .line 57
    const/4 v8, 0x4

    .line 58
    invoke-static {v7, v5, v8, v11}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    array-length v6, v5

    .line 74
    invoke-static {v5, v3, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    array-length v5, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    add-int/2addr v4, v5

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v1, "Bad %u encoding: "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_3
    const/4 v0, 0x2

    .line 111
    invoke-static {v7, v8, v0, v11}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    and-int/lit16 v0, v0, 0xff

    .line 116
    .line 117
    int-to-byte v0, v0

    .line 118
    add-int/lit8 v6, v4, 0x1

    .line 119
    .line 120
    aput-byte v0, v2, v4

    .line 121
    .line 122
    move v0, v5

    .line 123
    move v4, v6

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v1, "Bad % encoding: "

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_5
    if-nez v2, :cond_6

    .line 149
    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    add-int/lit8 v5, v4, 0x1

    .line 154
    .line 155
    aput-byte v6, v2, v4

    .line 156
    .line 157
    move v4, v5

    .line 158
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_7
    if-nez v2, :cond_8

    .line 163
    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 165
    .line 166
    iget v1, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 167
    .line 168
    sub-int/2addr v5, v1

    .line 169
    invoke-static {v0, v1, v5, p1}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1

    .line 174
    :cond_8
    invoke-static {v2, v3, v4, p1}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 2

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
    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/o;->o(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

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
    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/o;->o(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/o;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

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
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jetty/http/o;->o(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
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
    const/4 p1, 0x0

    .line 8
    return-object p1

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
    invoke-static {v2, v3, v1, p1}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
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
    sub-int/2addr v1, v0

    .line 86
    add-int/lit8 v1, v1, -0x1

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/o;->o(II)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    array-length v2, v0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jetty/http/o;->m([BII)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public l([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/http/o;->m([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m([BII)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-boolean v3, v0, Lorg/eclipse/jetty/http/o;->n:Z

    .line 9
    .line 10
    move-object/from16 v4, p1

    .line 11
    .line 12
    iput-object v4, v0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 13
    .line 14
    add-int v4, v1, v2

    .line 15
    .line 16
    iput v4, v0, Lorg/eclipse/jetty/http/o;->m:I

    .line 17
    .line 18
    iput v1, v0, Lorg/eclipse/jetty/http/o;->d:I

    .line 19
    .line 20
    iput v1, v0, Lorg/eclipse/jetty/http/o;->e:I

    .line 21
    .line 22
    iput v1, v0, Lorg/eclipse/jetty/http/o;->f:I

    .line 23
    .line 24
    iput v1, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    iput v5, v0, Lorg/eclipse/jetty/http/o;->h:I

    .line 28
    .line 29
    iput v1, v0, Lorg/eclipse/jetty/http/o;->i:I

    .line 30
    .line 31
    iput v4, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 32
    .line 33
    iput v4, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 34
    .line 35
    iput v4, v0, Lorg/eclipse/jetty/http/o;->l:I

    .line 36
    .line 37
    move v5, v1

    .line 38
    move v6, v5

    .line 39
    :goto_0
    const/4 v8, 0x1

    .line 40
    if-ge v5, v4, :cond_20

    .line 41
    .line 42
    iget-object v9, v0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 43
    .line 44
    aget-byte v10, v9, v5

    .line 45
    .line 46
    and-int/lit16 v10, v10, 0xff

    .line 47
    .line 48
    int-to-char v10, v10

    .line 49
    add-int/lit8 v11, v5, 0x1

    .line 50
    .line 51
    const/16 v15, 0x3b

    .line 52
    .line 53
    const/16 v16, 0x9

    .line 54
    .line 55
    const/16 v13, 0x3f

    .line 56
    .line 57
    const/16 v17, 0x7

    .line 58
    .line 59
    const/16 v14, 0x23

    .line 60
    .line 61
    const/16 v7, 0x2f

    .line 62
    .line 63
    const/16 v12, 0x3a

    .line 64
    .line 65
    packed-switch v3, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    :pswitch_0
    goto :goto_2

    .line 69
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v2, "only \'*\'"

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :pswitch_2
    if-ne v10, v14, :cond_1

    .line 78
    .line 79
    iput v5, v0, Lorg/eclipse/jetty/http/o;->l:I

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :pswitch_3
    if-eq v10, v14, :cond_2

    .line 83
    .line 84
    if-eq v10, v13, :cond_0

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_0
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 88
    .line 89
    :goto_1
    move/from16 v3, v16

    .line 90
    .line 91
    :cond_1
    :goto_2
    move v5, v11

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 94
    .line 95
    iput v5, v0, Lorg/eclipse/jetty/http/o;->l:I

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :pswitch_4
    if-eq v10, v14, :cond_6

    .line 99
    .line 100
    const/16 v7, 0x25

    .line 101
    .line 102
    if-eq v10, v7, :cond_5

    .line 103
    .line 104
    if-eq v10, v15, :cond_4

    .line 105
    .line 106
    if-eq v10, v13, :cond_3

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 110
    .line 111
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 115
    .line 116
    const/16 v3, 0x8

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    iput-boolean v8, v0, Lorg/eclipse/jetty/http/o;->n:Z

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 123
    .line 124
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 125
    .line 126
    iput v5, v0, Lorg/eclipse/jetty/http/o;->l:I

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_5
    if-ne v10, v7, :cond_1

    .line 130
    .line 131
    iput v5, v0, Lorg/eclipse/jetty/http/o;->i:I

    .line 132
    .line 133
    iget v3, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 134
    .line 135
    iget v6, v0, Lorg/eclipse/jetty/http/o;->e:I

    .line 136
    .line 137
    if-gt v3, v6, :cond_7

    .line 138
    .line 139
    iput v5, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 140
    .line 141
    :cond_7
    move v6, v5

    .line 142
    :cond_8
    :goto_3
    move v5, v11

    .line 143
    :cond_9
    :goto_4
    move/from16 v3, v17

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :pswitch_6
    if-eq v10, v7, :cond_b

    .line 147
    .line 148
    const/16 v5, 0x5d

    .line 149
    .line 150
    if-eq v10, v5, :cond_a

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_a
    const/4 v3, 0x4

    .line 154
    goto :goto_2

    .line 155
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v5, "No closing \']\' for "

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v5, v0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 168
    .line 169
    sget-object v6, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v5, v1, v2, v6}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v3

    .line 186
    :pswitch_7
    if-eq v10, v7, :cond_f

    .line 187
    .line 188
    if-eq v10, v12, :cond_e

    .line 189
    .line 190
    const/16 v5, 0x40

    .line 191
    .line 192
    if-eq v10, v5, :cond_d

    .line 193
    .line 194
    const/16 v5, 0x5b

    .line 195
    .line 196
    if-eq v10, v5, :cond_c

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_c
    const/4 v3, 0x5

    .line 200
    goto :goto_2

    .line 201
    :cond_d
    iput v11, v0, Lorg/eclipse/jetty/http/o;->f:I

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_e
    iput v5, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 205
    .line 206
    const/4 v3, 0x6

    .line 207
    goto :goto_2

    .line 208
    :cond_f
    iput v5, v0, Lorg/eclipse/jetty/http/o;->i:I

    .line 209
    .line 210
    iput v5, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 211
    .line 212
    move v6, v5

    .line 213
    move/from16 v3, v17

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :pswitch_8
    move/from16 v18, v8

    .line 217
    .line 218
    const/4 v8, 0x6

    .line 219
    if-le v2, v8, :cond_12

    .line 220
    .line 221
    const/16 v8, 0x74

    .line 222
    .line 223
    if-ne v10, v8, :cond_12

    .line 224
    .line 225
    add-int/lit8 v8, v1, 0x3

    .line 226
    .line 227
    aget-byte v15, v9, v8

    .line 228
    .line 229
    if-ne v15, v12, :cond_10

    .line 230
    .line 231
    add-int/lit8 v11, v1, 0x4

    .line 232
    .line 233
    :goto_5
    move v5, v8

    .line 234
    move v10, v12

    .line 235
    goto :goto_6

    .line 236
    :cond_10
    add-int/lit8 v8, v1, 0x4

    .line 237
    .line 238
    aget-byte v15, v9, v8

    .line 239
    .line 240
    if-ne v15, v12, :cond_11

    .line 241
    .line 242
    add-int/lit8 v11, v1, 0x5

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_11
    add-int/lit8 v8, v1, 0x5

    .line 246
    .line 247
    aget-byte v15, v9, v8

    .line 248
    .line 249
    if-ne v15, v12, :cond_12

    .line 250
    .line 251
    add-int/lit8 v11, v1, 0x6

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_12
    :goto_6
    if-eq v10, v14, :cond_17

    .line 255
    .line 256
    if-eq v10, v7, :cond_8

    .line 257
    .line 258
    if-eq v10, v13, :cond_16

    .line 259
    .line 260
    if-eq v10, v12, :cond_14

    .line 261
    .line 262
    const/16 v8, 0x3b

    .line 263
    .line 264
    if-eq v10, v8, :cond_13

    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :cond_13
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 269
    .line 270
    goto/16 :goto_b

    .line 271
    .line 272
    :cond_14
    add-int/lit8 v3, v11, 0x1

    .line 273
    .line 274
    iput v11, v0, Lorg/eclipse/jetty/http/o;->e:I

    .line 275
    .line 276
    iput v11, v0, Lorg/eclipse/jetty/http/o;->i:I

    .line 277
    .line 278
    aget-byte v5, v9, v3

    .line 279
    .line 280
    and-int/lit16 v5, v5, 0xff

    .line 281
    .line 282
    int-to-char v5, v5

    .line 283
    if-ne v5, v7, :cond_15

    .line 284
    .line 285
    move v5, v3

    .line 286
    move v6, v11

    .line 287
    goto/16 :goto_c

    .line 288
    .line 289
    :cond_15
    iput v11, v0, Lorg/eclipse/jetty/http/o;->f:I

    .line 290
    .line 291
    iput v11, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 292
    .line 293
    move v5, v3

    .line 294
    move v6, v11

    .line 295
    goto/16 :goto_4

    .line 296
    .line 297
    :cond_16
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 298
    .line 299
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_17
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 303
    .line 304
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 305
    .line 306
    iput v5, v0, Lorg/eclipse/jetty/http/o;->l:I

    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :pswitch_9
    iget-boolean v3, v0, Lorg/eclipse/jetty/http/o;->a:Z

    .line 311
    .line 312
    if-nez v3, :cond_19

    .line 313
    .line 314
    iget v3, v0, Lorg/eclipse/jetty/http/o;->d:I

    .line 315
    .line 316
    iget v8, v0, Lorg/eclipse/jetty/http/o;->e:I

    .line 317
    .line 318
    if-eq v3, v8, :cond_18

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_18
    const/16 v8, 0x3b

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_19
    :goto_7
    if-ne v10, v7, :cond_18

    .line 325
    .line 326
    iput v11, v0, Lorg/eclipse/jetty/http/o;->f:I

    .line 327
    .line 328
    iget v3, v0, Lorg/eclipse/jetty/http/o;->m:I

    .line 329
    .line 330
    iput v3, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 331
    .line 332
    iput v3, v0, Lorg/eclipse/jetty/http/o;->i:I

    .line 333
    .line 334
    move v5, v11

    .line 335
    const/4 v3, 0x4

    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :goto_8
    if-eq v10, v8, :cond_9

    .line 339
    .line 340
    if-eq v10, v13, :cond_9

    .line 341
    .line 342
    if-ne v10, v14, :cond_1a

    .line 343
    .line 344
    goto/16 :goto_4

    .line 345
    .line 346
    :cond_1a
    iput v6, v0, Lorg/eclipse/jetty/http/o;->f:I

    .line 347
    .line 348
    iput v6, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 349
    .line 350
    goto/16 :goto_3

    .line 351
    .line 352
    :pswitch_a
    move/from16 v18, v8

    .line 353
    .line 354
    if-eq v10, v14, :cond_1f

    .line 355
    .line 356
    const/16 v3, 0x2a

    .line 357
    .line 358
    if-eq v10, v3, :cond_1e

    .line 359
    .line 360
    if-eq v10, v7, :cond_1d

    .line 361
    .line 362
    const/16 v8, 0x3b

    .line 363
    .line 364
    if-eq v10, v8, :cond_1c

    .line 365
    .line 366
    if-eq v10, v13, :cond_1b

    .line 367
    .line 368
    const/4 v3, 0x2

    .line 369
    :goto_9
    move v6, v5

    .line 370
    goto/16 :goto_2

    .line 371
    .line 372
    :cond_1b
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 373
    .line 374
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 375
    .line 376
    move v6, v5

    .line 377
    :goto_a
    move v5, v11

    .line 378
    move/from16 v3, v16

    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_1c
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 383
    .line 384
    move v6, v5

    .line 385
    :goto_b
    move v5, v11

    .line 386
    const/16 v3, 0x8

    .line 387
    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :cond_1d
    move v6, v5

    .line 391
    move v5, v11

    .line 392
    :goto_c
    move/from16 v3, v18

    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_1e
    iput v5, v0, Lorg/eclipse/jetty/http/o;->i:I

    .line 397
    .line 398
    move v6, v5

    .line 399
    move v5, v11

    .line 400
    const/16 v3, 0xa

    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_1f
    iput v5, v0, Lorg/eclipse/jetty/http/o;->j:I

    .line 405
    .line 406
    iput v5, v0, Lorg/eclipse/jetty/http/o;->k:I

    .line 407
    .line 408
    iput v5, v0, Lorg/eclipse/jetty/http/o;->l:I

    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_20
    move/from16 v18, v8

    .line 412
    .line 413
    iget v1, v0, Lorg/eclipse/jetty/http/o;->g:I

    .line 414
    .line 415
    iget v2, v0, Lorg/eclipse/jetty/http/o;->i:I

    .line 416
    .line 417
    if-ge v1, v2, :cond_21

    .line 418
    .line 419
    iget-object v3, v0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 420
    .line 421
    add-int/lit8 v4, v1, 0x1

    .line 422
    .line 423
    sub-int/2addr v2, v1

    .line 424
    add-int/lit8 v2, v2, -0x1

    .line 425
    .line 426
    const/16 v1, 0xa

    .line 427
    .line 428
    invoke-static {v3, v4, v2, v1}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    iput v1, v0, Lorg/eclipse/jetty/http/o;->h:I

    .line 433
    .line 434
    :cond_21
    return-void

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public n([BII)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/o;->n:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 8
    .line 9
    add-int p1, p2, p3

    .line 10
    .line 11
    iput p1, p0, Lorg/eclipse/jetty/http/o;->m:I

    .line 12
    .line 13
    iput p2, p0, Lorg/eclipse/jetty/http/o;->d:I

    .line 14
    .line 15
    iput p2, p0, Lorg/eclipse/jetty/http/o;->e:I

    .line 16
    .line 17
    iput p2, p0, Lorg/eclipse/jetty/http/o;->f:I

    .line 18
    .line 19
    iput p1, p0, Lorg/eclipse/jetty/http/o;->g:I

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lorg/eclipse/jetty/http/o;->h:I

    .line 23
    .line 24
    iput p1, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 25
    .line 26
    iput p1, p0, Lorg/eclipse/jetty/http/o;->j:I

    .line 27
    .line 28
    iput p1, p0, Lorg/eclipse/jetty/http/o;->k:I

    .line 29
    .line 30
    iput p1, p0, Lorg/eclipse/jetty/http/o;->l:I

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    move v1, p2

    .line 34
    move v2, v0

    .line 35
    :goto_0
    if-ge v1, p1, :cond_6

    .line 36
    .line 37
    iget-object v3, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 38
    .line 39
    aget-byte v3, v3, v1

    .line 40
    .line 41
    and-int/lit16 v3, v3, 0xff

    .line 42
    .line 43
    int-to-char v3, v3

    .line 44
    add-int/lit8 v4, v1, 0x1

    .line 45
    .line 46
    const/4 v5, 0x5

    .line 47
    if-eq v2, v0, :cond_3

    .line 48
    .line 49
    if-eq v2, v5, :cond_0

    .line 50
    .line 51
    :goto_1
    move v1, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 v1, 0x2f

    .line 54
    .line 55
    if-eq v3, v1, :cond_2

    .line 56
    .line 57
    const/16 v1, 0x5d

    .line 58
    .line 59
    if-eq v3, v1, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v2, v0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "No closing \']\' for "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 77
    .line 78
    sget-object v2, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v1, p2, p3, v2}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_3
    const/16 v6, 0x3a

    .line 96
    .line 97
    if-eq v3, v6, :cond_5

    .line 98
    .line 99
    const/16 v1, 0x5b

    .line 100
    .line 101
    if-eq v3, v1, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    move v2, v5

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    iput v1, p0, Lorg/eclipse/jetty/http/o;->g:I

    .line 107
    .line 108
    :cond_6
    iget p1, p0, Lorg/eclipse/jetty/http/o;->g:I

    .line 109
    .line 110
    iget p3, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 111
    .line 112
    if-ge p1, p3, :cond_7

    .line 113
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 115
    .line 116
    add-int/lit8 v1, p1, 0x1

    .line 117
    .line 118
    sub-int/2addr p3, p1

    .line 119
    add-int/lit8 p3, p3, -0x1

    .line 120
    .line 121
    const/16 p1, 0xa

    .line 122
    .line 123
    invoke-static {v0, v1, p3, p1}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    iput p1, p0, Lorg/eclipse/jetty/http/o;->h:I

    .line 128
    .line 129
    iput p2, p0, Lorg/eclipse/jetty/http/o;->i:I

    .line 130
    .line 131
    return-void

    .line 132
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string p2, "No port"

    .line 135
    .line 136
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method public final o(II)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/q;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/eclipse/jetty/http/o;->b:[B

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/util/Utf8Appendable;->b([BII)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/eclipse/jetty/http/o;->o:Lorg/eclipse/jetty/util/q;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/q;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/eclipse/jetty/http/o;->d:I

    .line 6
    .line 7
    iget v1, p0, Lorg/eclipse/jetty/http/o;->m:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/o;->o(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/o;->c:Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method
