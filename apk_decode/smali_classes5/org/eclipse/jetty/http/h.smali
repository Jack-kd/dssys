.class public Lorg/eclipse/jetty/http/h;
.super Lorg/eclipse/jetty/http/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/h$b;
    }
.end annotation


# static fields
.field public static final A:[Lorg/eclipse/jetty/http/h$b;

.field public static final B:[B

.field public static final C:[B

.field public static final D:[B

.field public static final E:[B

.field public static final F:[B

.field public static final G:[B

.field public static final H:[B

.field public static I:[B

.field public static final z:LR1/c;


# instance fields
.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Lorg/eclipse/jetty/http/h;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/http/h;->z:LR1/c;

    .line 8
    .line 9
    const/16 v0, 0x1fc

    .line 10
    .line 11
    new-array v0, v0, [Lorg/eclipse/jetty/http/h$b;

    .line 12
    .line 13
    sput-object v0, Lorg/eclipse/jetty/http/h;->A:[Lorg/eclipse/jetty/http/h$b;

    .line 14
    .line 15
    sget-object v0, Lorg/eclipse/jetty/http/p;->d:LL1/d;

    .line 16
    .line 17
    invoke-interface {v0}, LL1/d;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    move v2, v1

    .line 23
    :goto_0
    sget-object v3, Lorg/eclipse/jetty/http/h;->A:[Lorg/eclipse/jetty/http/h$b;

    .line 24
    .line 25
    array-length v3, v3

    .line 26
    if-ge v2, v3, :cond_2

    .line 27
    .line 28
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpStatus;->a(I)Lorg/eclipse/jetty/http/HttpStatus$Code;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    add-int/lit8 v4, v0, 0x5

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/2addr v5, v4

    .line 47
    add-int/lit8 v5, v5, 0x2

    .line 48
    .line 49
    new-array v6, v5, [B

    .line 50
    .line 51
    sget-object v7, Lorg/eclipse/jetty/http/p;->d:LL1/d;

    .line 52
    .line 53
    invoke-interface {v7, v1, v6, v1, v0}, LL1/d;->d0(I[BII)I

    .line 54
    .line 55
    .line 56
    const/16 v7, 0x20

    .line 57
    .line 58
    aput-byte v7, v6, v0

    .line 59
    .line 60
    add-int/lit8 v8, v0, 0x1

    .line 61
    .line 62
    div-int/lit8 v9, v2, 0x64

    .line 63
    .line 64
    add-int/lit8 v9, v9, 0x30

    .line 65
    .line 66
    int-to-byte v9, v9

    .line 67
    aput-byte v9, v6, v8

    .line 68
    .line 69
    add-int/lit8 v8, v0, 0x2

    .line 70
    .line 71
    rem-int/lit8 v9, v2, 0x64

    .line 72
    .line 73
    const/16 v10, 0xa

    .line 74
    .line 75
    div-int/2addr v9, v10

    .line 76
    add-int/lit8 v9, v9, 0x30

    .line 77
    .line 78
    int-to-byte v9, v9

    .line 79
    aput-byte v9, v6, v8

    .line 80
    .line 81
    add-int/lit8 v8, v0, 0x3

    .line 82
    .line 83
    rem-int/lit8 v9, v2, 0xa

    .line 84
    .line 85
    add-int/lit8 v9, v9, 0x30

    .line 86
    .line 87
    int-to-byte v9, v9

    .line 88
    aput-byte v9, v6, v8

    .line 89
    .line 90
    add-int/lit8 v8, v0, 0x4

    .line 91
    .line 92
    aput-byte v7, v6, v8

    .line 93
    .line 94
    move v7, v1

    .line 95
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-ge v7, v8, :cond_1

    .line 100
    .line 101
    add-int v8, v4, v7

    .line 102
    .line 103
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    int-to-byte v9, v9

    .line 108
    aput-byte v9, v6, v8

    .line 109
    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    add-int/2addr v7, v4

    .line 118
    const/16 v8, 0xd

    .line 119
    .line 120
    aput-byte v8, v6, v7

    .line 121
    .line 122
    add-int/lit8 v7, v0, 0x6

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    add-int/2addr v7, v3

    .line 129
    aput-byte v10, v6, v7

    .line 130
    .line 131
    sget-object v3, Lorg/eclipse/jetty/http/h;->A:[Lorg/eclipse/jetty/http/h$b;

    .line 132
    .line 133
    new-instance v7, Lorg/eclipse/jetty/http/h$b;

    .line 134
    .line 135
    const/4 v8, 0x0

    .line 136
    invoke-direct {v7, v8}, Lorg/eclipse/jetty/http/h$b;-><init>(Lorg/eclipse/jetty/http/h$a;)V

    .line 137
    .line 138
    .line 139
    aput-object v7, v3, v2

    .line 140
    .line 141
    new-instance v8, LL1/h;

    .line 142
    .line 143
    sub-int v9, v5, v0

    .line 144
    .line 145
    add-int/lit8 v9, v9, -0x7

    .line 146
    .line 147
    invoke-direct {v8, v6, v4, v9, v1}, LL1/h;-><init>([BIII)V

    .line 148
    .line 149
    .line 150
    iput-object v8, v7, Lorg/eclipse/jetty/http/h$b;->a:LL1/d;

    .line 151
    .line 152
    aget-object v7, v3, v2

    .line 153
    .line 154
    new-instance v8, LL1/h;

    .line 155
    .line 156
    invoke-direct {v8, v6, v1, v4, v1}, LL1/h;-><init>([BIII)V

    .line 157
    .line 158
    .line 159
    iput-object v8, v7, Lorg/eclipse/jetty/http/h$b;->b:LL1/d;

    .line 160
    .line 161
    aget-object v3, v3, v2

    .line 162
    .line 163
    new-instance v4, LL1/h;

    .line 164
    .line 165
    invoke-direct {v4, v6, v1, v5, v1}, LL1/h;-><init>([BIII)V

    .line 166
    .line 167
    .line 168
    iput-object v4, v3, Lorg/eclipse/jetty/http/h$b;->c:LL1/d;

    .line 169
    .line 170
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_2
    const/4 v0, 0x5

    .line 175
    new-array v0, v0, [B

    .line 176
    .line 177
    fill-array-data v0, :array_0

    .line 178
    .line 179
    .line 180
    sput-object v0, Lorg/eclipse/jetty/http/h;->B:[B

    .line 181
    .line 182
    const-string v0, "Content-Length: 0\r\n"

    .line 183
    .line 184
    invoke-static {v0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sput-object v0, Lorg/eclipse/jetty/http/h;->C:[B

    .line 189
    .line 190
    const-string v0, "Connection: keep-alive\r\n"

    .line 191
    .line 192
    invoke-static {v0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sput-object v0, Lorg/eclipse/jetty/http/h;->D:[B

    .line 197
    .line 198
    const-string v0, "Connection: close\r\n"

    .line 199
    .line 200
    invoke-static {v0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sput-object v0, Lorg/eclipse/jetty/http/h;->E:[B

    .line 205
    .line 206
    const-string v0, "Connection: "

    .line 207
    .line 208
    invoke-static {v0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    sput-object v0, Lorg/eclipse/jetty/http/h;->F:[B

    .line 213
    .line 214
    const-string v0, "\r\n"

    .line 215
    .line 216
    invoke-static {v0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    sput-object v0, Lorg/eclipse/jetty/http/h;->G:[B

    .line 221
    .line 222
    const-string v0, "Transfer-Encoding: chunked\r\n"

    .line 223
    .line 224
    invoke-static {v0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    sput-object v0, Lorg/eclipse/jetty/http/h;->H:[B

    .line 229
    .line 230
    const-string v0, "Server: Jetty(7.0.x)\r\n"

    .line 231
    .line 232
    invoke-static {v0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    sput-object v0, Lorg/eclipse/jetty/http/h;->I:[B

    .line 237
    .line 238
    return-void

    .line 239
    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;LL1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/a;-><init>(Lorg/eclipse/jetty/io/Buffers;LL1/k;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 12
    .line 13
    return-void
.end method

.method public static G(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Server: Jetty("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, ")\r\n"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sput-object p0, Lorg/eclipse/jetty/http/h;->I:[B

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, LL1/d;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, LL1/d;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v2, v1

    .line 28
    :goto_1
    or-int/2addr v0, v2

    .line 29
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v2}, LL1/d;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_2
    or-int/2addr v0, v1

    .line 45
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, LL1/d;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, LL1/d;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, LL1/d;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

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

.method public final D()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_14

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, LL1/d;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, LL1/d;->f0()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 31
    .line 32
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 33
    .line 34
    invoke-interface {v0, v2}, LL1/d;->m0(LL1/d;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 39
    .line 40
    invoke-interface {v2, v0}, LL1/d;->skip(I)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 44
    .line 45
    invoke-interface {v0}, LL1/d;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 52
    .line 53
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 54
    .line 55
    const-wide/16 v4, -0x2

    .line 56
    .line 57
    cmp-long v0, v2, v4

    .line 58
    .line 59
    if-nez v0, :cond_14

    .line 60
    .line 61
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 62
    .line 63
    const-string v2, "EOC"

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    const/4 v4, 0x0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-interface {v0}, LL1/d;->length()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-interface {v0}, LL1/d;->length()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 88
    .line 89
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 90
    .line 91
    if-nez v5, :cond_2

    .line 92
    .line 93
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 94
    .line 95
    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffers;->getHeader()LL1/d;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iput-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 100
    .line 101
    :cond_2
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 102
    .line 103
    if-eqz v5, :cond_4

    .line 104
    .line 105
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 106
    .line 107
    invoke-interface {v5}, LL1/d;->length()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-gtz v5, :cond_3

    .line 112
    .line 113
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 114
    .line 115
    sget-object v5, Lorg/eclipse/jetty/http/n;->a:[B

    .line 116
    .line 117
    invoke-interface {v2, v5}, LL1/d;->r0([B)I

    .line 118
    .line 119
    .line 120
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_4
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 130
    .line 131
    invoke-static {v2, v0}, LL1/g;->e(LL1/d;I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 135
    .line 136
    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    .line 137
    .line 138
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 139
    .line 140
    .line 141
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 146
    .line 147
    if-eqz v0, :cond_c

    .line 148
    .line 149
    invoke-interface {v0}, LL1/d;->length()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-lez v0, :cond_c

    .line 154
    .line 155
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 156
    .line 157
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 158
    .line 159
    invoke-interface {v5}, LL1/d;->getIndex()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    const/16 v6, 0xc

    .line 164
    .line 165
    const/4 v7, 0x2

    .line 166
    if-ne v5, v6, :cond_6

    .line 167
    .line 168
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 169
    .line 170
    invoke-interface {v2}, LL1/d;->getIndex()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    sub-int/2addr v5, v7

    .line 175
    sget-object v6, Lorg/eclipse/jetty/http/n;->a:[B

    .line 176
    .line 177
    invoke-interface {v2, v5, v6, v4, v7}, LL1/d;->g0(I[BII)I

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 181
    .line 182
    invoke-interface {v2}, LL1/d;->getIndex()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    sub-int/2addr v5, v7

    .line 187
    invoke-interface {v2, v5}, LL1/d;->z0(I)V

    .line 188
    .line 189
    .line 190
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 191
    .line 192
    invoke-static {v2, v0}, LL1/g;->b(LL1/d;I)V

    .line 193
    .line 194
    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 196
    .line 197
    if-eqz v0, :cond_a

    .line 198
    .line 199
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 200
    .line 201
    invoke-interface {v0}, LL1/d;->getIndex()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    sub-int/2addr v2, v7

    .line 206
    invoke-interface {v0, v2, v6, v4, v7}, LL1/d;->g0(I[BII)I

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 210
    .line 211
    invoke-interface {v0}, LL1/d;->getIndex()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    sub-int/2addr v2, v7

    .line 216
    invoke-interface {v0, v2}, LL1/d;->z0(I)V

    .line 217
    .line 218
    .line 219
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 223
    .line 224
    if-nez v5, :cond_7

    .line 225
    .line 226
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 227
    .line 228
    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffers;->getHeader()LL1/d;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    iput-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 233
    .line 234
    :cond_7
    iget-boolean v5, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 235
    .line 236
    if-eqz v5, :cond_9

    .line 237
    .line 238
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 239
    .line 240
    invoke-interface {v5}, LL1/d;->length()I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-gtz v5, :cond_8

    .line 245
    .line 246
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 247
    .line 248
    sget-object v5, Lorg/eclipse/jetty/http/n;->a:[B

    .line 249
    .line 250
    invoke-interface {v2, v5}, LL1/d;->r0([B)I

    .line 251
    .line 252
    .line 253
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 257
    .line 258
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :cond_9
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 263
    .line 264
    invoke-static {v2, v0}, LL1/g;->e(LL1/d;I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 268
    .line 269
    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    .line 270
    .line 271
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 272
    .line 273
    .line 274
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 275
    .line 276
    invoke-interface {v0}, LL1/d;->f0()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-lt v0, v7, :cond_b

    .line 281
    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 283
    .line 284
    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    .line 285
    .line 286
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_b
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 291
    .line 292
    :cond_c
    :goto_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 293
    .line 294
    if-eqz v0, :cond_14

    .line 295
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 297
    .line 298
    if-eqz v0, :cond_d

    .line 299
    .line 300
    invoke-interface {v0}, LL1/d;->length()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_14

    .line 305
    .line 306
    :cond_d
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 307
    .line 308
    if-nez v0, :cond_e

    .line 309
    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 311
    .line 312
    if-nez v0, :cond_e

    .line 313
    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 315
    .line 316
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()LL1/d;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 321
    .line 322
    :cond_e
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 323
    .line 324
    if-eqz v0, :cond_10

    .line 325
    .line 326
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 327
    .line 328
    if-nez v0, :cond_f

    .line 329
    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 331
    .line 332
    if-eqz v0, :cond_f

    .line 333
    .line 334
    invoke-interface {v0}, LL1/d;->f0()I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    .line 339
    .line 340
    array-length v5, v2

    .line 341
    if-lt v0, v5, :cond_f

    .line 342
    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 344
    .line 345
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 346
    .line 347
    .line 348
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 349
    .line 350
    goto :goto_4

    .line 351
    :cond_f
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 352
    .line 353
    if-eqz v0, :cond_10

    .line 354
    .line 355
    invoke-interface {v0}, LL1/d;->f0()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    .line 360
    .line 361
    array-length v5, v2

    .line 362
    if-lt v0, v5, :cond_10

    .line 363
    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 365
    .line 366
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 367
    .line 368
    .line 369
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 370
    .line 371
    :cond_10
    :goto_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 372
    .line 373
    if-nez v0, :cond_14

    .line 374
    .line 375
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 376
    .line 377
    if-eqz v0, :cond_14

    .line 378
    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 380
    .line 381
    if-nez v0, :cond_12

    .line 382
    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 384
    .line 385
    if-eqz v0, :cond_12

    .line 386
    .line 387
    invoke-interface {v0}, LL1/d;->f0()I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    sget-object v2, Lorg/eclipse/jetty/http/h;->B:[B

    .line 392
    .line 393
    array-length v5, v2

    .line 394
    if-lt v0, v5, :cond_12

    .line 395
    .line 396
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 397
    .line 398
    if-nez v0, :cond_11

    .line 399
    .line 400
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 401
    .line 402
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 403
    .line 404
    .line 405
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 406
    .line 407
    :cond_11
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 408
    .line 409
    goto :goto_5

    .line 410
    :cond_12
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 411
    .line 412
    if-eqz v0, :cond_14

    .line 413
    .line 414
    invoke-interface {v0}, LL1/d;->f0()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    sget-object v2, Lorg/eclipse/jetty/http/h;->B:[B

    .line 419
    .line 420
    array-length v5, v2

    .line 421
    if-lt v0, v5, :cond_14

    .line 422
    .line 423
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 424
    .line 425
    if-nez v0, :cond_13

    .line 426
    .line 427
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 428
    .line 429
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 430
    .line 431
    .line 432
    iput-boolean v3, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 433
    .line 434
    :cond_13
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 435
    .line 436
    :cond_14
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 437
    .line 438
    if-eqz v0, :cond_15

    .line 439
    .line 440
    invoke-interface {v0}, LL1/d;->length()I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-nez v0, :cond_15

    .line 445
    .line 446
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 447
    .line 448
    :cond_15
    return-void
.end method

.method public E(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/16 v0, 0x64

    .line 7
    .line 8
    if-lt p1, v0, :cond_6

    .line 9
    .line 10
    const/16 v0, 0xc7

    .line 11
    .line 12
    if-gt p1, v0, :cond_6

    .line 13
    .line 14
    sget-object v0, Lorg/eclipse/jetty/http/h;->A:[Lorg/eclipse/jetty/http/h$b;

    .line 15
    .line 16
    aget-object v0, v0, p1

    .line 17
    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 25
    .line 26
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffers;->getHeader()LL1/d;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/eclipse/jetty/http/h$b;->c:LL1/d;

    .line 35
    .line 36
    invoke-interface {p1, v0}, LL1/d;->m0(LL1/d;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 40
    .line 41
    sget-object v0, Lorg/eclipse/jetty/http/n;->a:[B

    .line 42
    .line 43
    invoke-interface {p1, v0}, LL1/d;->r0([B)I

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 47
    .line 48
    invoke-interface {p1}, LL1/d;->length()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-lez p1, :cond_4

    .line 53
    .line 54
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 55
    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 57
    .line 58
    invoke-interface {p1, v0}, LL1/k;->i(LL1/d;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ltz p1, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 65
    .line 66
    invoke-interface {v0}, LL1/k;->isOpen()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    const-wide/16 v0, 0x64

    .line 75
    .line 76
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    .line 83
    .line 84
    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_4
    :goto_1
    return-void

    .line 89
    :goto_2
    sget-object v0, Lorg/eclipse/jetty/http/h;->z:LR1/c;

    .line 90
    .line 91
    invoke-interface {v0, p1}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p1, "?"

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string v0, "!1xx"

    .line 130
    .line 131
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public F(LL1/d;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, LL1/d;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 29
    .line 30
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 31
    .line 32
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 36
    .line 37
    invoke-interface {p1}, LL1/d;->length()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-long v0, p1

    .line 42
    iput-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 43
    .line 44
    iput-wide v0, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public complete()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/a;->complete()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iput v1, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 16
    .line 17
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 18
    .line 19
    const-wide/16 v2, -0x2

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/h;->l()I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public g(LL1/d;Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_c

    .line 8
    .line 9
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    iput-boolean p2, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 17
    .line 18
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, LL1/d;->length()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-gtz p2, :cond_2

    .line 27
    .line 28
    :cond_1
    iget-boolean p2, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 29
    .line 30
    if-eqz p2, :cond_5

    .line 31
    .line 32
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 33
    .line 34
    invoke-interface {p2}, LL1/k;->o()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/h;->l()I

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 44
    .line 45
    if-eqz p2, :cond_5

    .line 46
    .line 47
    invoke-interface {p2}, LL1/d;->length()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-lez p2, :cond_5

    .line 52
    .line 53
    iget-boolean p2, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 58
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 60
    .line 61
    invoke-interface {v0}, LL1/d;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/lit8 v0, v0, 0xc

    .line 66
    .line 67
    invoke-interface {p1}, LL1/d;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr v0, v1

    .line 72
    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffers;->a(I)LL1/d;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 77
    .line 78
    invoke-interface {p2, v0}, LL1/d;->m0(LL1/d;)I

    .line 79
    .line 80
    .line 81
    sget-object v0, Lorg/eclipse/jetty/http/n;->a:[B

    .line 82
    .line 83
    invoke-interface {p2, v0}, LL1/d;->r0([B)I

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, LL1/d;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-static {p2, v1}, LL1/g;->e(LL1/d;I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v0}, LL1/d;->r0([B)I

    .line 94
    .line 95
    .line 96
    invoke-interface {p2, p1}, LL1/d;->m0(LL1/d;)I

    .line 97
    .line 98
    .line 99
    :goto_0
    move-object p1, p2

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 102
    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 104
    .line 105
    invoke-interface {v0}, LL1/d;->length()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-interface {p1}, LL1/d;->length()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/2addr v0, v1

    .line 114
    invoke-interface {p2, v0}, Lorg/eclipse/jetty/io/Buffers;->a(I)LL1/d;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 119
    .line 120
    invoke-interface {p2, v0}, LL1/d;->m0(LL1/d;)I

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p1}, LL1/d;->m0(LL1/d;)I

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    .line 128
    .line 129
    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_5
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 134
    .line 135
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 136
    .line 137
    invoke-interface {p1}, LL1/d;->length()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    int-to-long v2, p2

    .line 142
    add-long/2addr v0, v2

    .line 143
    iput-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 144
    .line 145
    iget-boolean p2, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    if-eqz p2, :cond_6

    .line 149
    .line 150
    invoke-interface {p1}, LL1/d;->clear()V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 157
    .line 158
    if-eqz p1, :cond_9

    .line 159
    .line 160
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 161
    .line 162
    if-eqz p1, :cond_7

    .line 163
    .line 164
    invoke-interface {p1}, LL1/d;->length()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_9

    .line 169
    .line 170
    :cond_7
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 171
    .line 172
    invoke-interface {p1}, LL1/d;->length()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-lez p1, :cond_9

    .line 177
    .line 178
    iget-boolean p1, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 179
    .line 180
    if-nez p1, :cond_8

    .line 181
    .line 182
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->e()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_9

    .line 187
    .line 188
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 189
    .line 190
    invoke-interface {p1}, LL1/d;->length()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    const/16 p2, 0x400

    .line 195
    .line 196
    if-le p1, p2, :cond_9

    .line 197
    .line 198
    :cond_8
    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 200
    .line 201
    return-void

    .line 202
    :cond_9
    iget-boolean p1, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 203
    .line 204
    if-nez p1, :cond_b

    .line 205
    .line 206
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 207
    .line 208
    if-nez p1, :cond_a

    .line 209
    .line 210
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 211
    .line 212
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()LL1/d;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 217
    .line 218
    :cond_a
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 219
    .line 220
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 221
    .line 222
    invoke-interface {p1, p2}, LL1/d;->m0(LL1/d;)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 227
    .line 228
    invoke-interface {p2, p1}, LL1/d;->skip(I)I

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 232
    .line 233
    invoke-interface {p1}, LL1/d;->length()I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_b

    .line 238
    .line 239
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 240
    .line 241
    :cond_b
    return-void

    .line 242
    :cond_c
    :goto_2
    sget-object p2, Lorg/eclipse/jetty/http/h;->z:LR1/c;

    .line 243
    .line 244
    const-string v0, "Ignoring extra content {}"

    .line 245
    .line 246
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-interface {p2, v0, v1}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, LL1/d;->clear()V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 258
    .line 259
    const-string p2, "NO CONTENT"

    .line 260
    .line 261
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1
.end method

.method public l()I
    .locals 10

    .line 1
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/h;->D()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    .line 22
    .line 23
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    sget-object v2, Lorg/eclipse/jetty/http/h;->B:[B

    .line 43
    .line 44
    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 45
    .line 46
    .line 47
    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 50
    .line 51
    return v1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/h;->A()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v2, -0x1

    .line 57
    move v3, v1

    .line 58
    :goto_1
    const/4 v4, 0x0

    .line 59
    packed-switch v0, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :pswitch_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 71
    .line 72
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 73
    .line 74
    iget-object v6, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 75
    .line 76
    invoke-interface {v2, v5, v6, v4}, LL1/k;->g(LL1/d;LL1/d;LL1/d;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :pswitch_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 83
    .line 84
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 85
    .line 86
    iget-object v6, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 87
    .line 88
    invoke-interface {v2, v5, v6, v4}, LL1/k;->g(LL1/d;LL1/d;LL1/d;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :pswitch_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 95
    .line 96
    iget-object v4, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 97
    .line 98
    invoke-interface {v2, v4}, LL1/k;->i(LL1/d;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :pswitch_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 105
    .line 106
    iget-object v5, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 107
    .line 108
    iget-object v6, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 109
    .line 110
    invoke-interface {v2, v5, v6, v4}, LL1/k;->g(LL1/d;LL1/d;LL1/d;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :pswitch_5
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 117
    .line 118
    iget-object v4, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 119
    .line 120
    invoke-interface {v2, v4}, LL1/k;->i(LL1/d;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :pswitch_6
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 127
    .line 128
    iget-object v4, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 129
    .line 130
    invoke-interface {v2, v4}, LL1/k;->i(LL1/d;)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :pswitch_7
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 137
    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    invoke-interface {v2}, LL1/d;->clear()V

    .line 141
    .line 142
    .line 143
    :cond_3
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 144
    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 146
    .line 147
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 148
    .line 149
    const/4 v5, 0x3

    .line 150
    if-eqz v2, :cond_4

    .line 151
    .line 152
    invoke-interface {v2}, LL1/d;->clear()V

    .line 153
    .line 154
    .line 155
    iget-wide v6, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 156
    .line 157
    const-wide/16 v8, -0x2

    .line 158
    .line 159
    cmp-long v2, v6, v8

    .line 160
    .line 161
    if-nez v2, :cond_4

    .line 162
    .line 163
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 164
    .line 165
    const/16 v6, 0xc

    .line 166
    .line 167
    invoke-interface {v2, v6}, LL1/d;->q0(I)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 171
    .line 172
    invoke-interface {v2, v6}, LL1/d;->z0(I)V

    .line 173
    .line 174
    .line 175
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 176
    .line 177
    if-eqz v2, :cond_4

    .line 178
    .line 179
    invoke-interface {v2}, LL1/d;->length()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    iget-object v6, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 184
    .line 185
    invoke-interface {v6}, LL1/d;->f0()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-ge v2, v6, :cond_4

    .line 190
    .line 191
    iget v2, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 192
    .line 193
    if-eq v2, v5, :cond_4

    .line 194
    .line 195
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 196
    .line 197
    iget-object v6, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 198
    .line 199
    invoke-interface {v2, v6}, LL1/d;->m0(LL1/d;)I

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 203
    .line 204
    invoke-interface {v2}, LL1/d;->clear()V

    .line 205
    .line 206
    .line 207
    iput-object v4, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 208
    .line 209
    :cond_4
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 210
    .line 211
    if-nez v2, :cond_7

    .line 212
    .line 213
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 214
    .line 215
    if-nez v2, :cond_7

    .line 216
    .line 217
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 218
    .line 219
    if-eqz v2, :cond_5

    .line 220
    .line 221
    invoke-interface {v2}, LL1/d;->length()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-nez v2, :cond_7

    .line 226
    .line 227
    :cond_5
    iget v2, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 228
    .line 229
    const/4 v4, 0x4

    .line 230
    if-ne v2, v5, :cond_6

    .line 231
    .line 232
    iput v4, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 233
    .line 234
    :cond_6
    iget v2, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 235
    .line 236
    if-ne v2, v4, :cond_8

    .line 237
    .line 238
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 239
    .line 240
    if-eqz v2, :cond_8

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_8

    .line 247
    .line 248
    iget v2, p0, Lorg/eclipse/jetty/http/a;->d:I

    .line 249
    .line 250
    const/16 v4, 0x64

    .line 251
    .line 252
    if-eq v2, v4, :cond_8

    .line 253
    .line 254
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 255
    .line 256
    if-nez v2, :cond_8

    .line 257
    .line 258
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 259
    .line 260
    invoke-interface {v2}, LL1/k;->j()V

    .line 261
    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/h;->D()V

    .line 265
    .line 266
    .line 267
    :cond_8
    :goto_2
    move v2, v1

    .line 268
    :goto_3
    if-lez v2, :cond_9

    .line 269
    .line 270
    add-int/2addr v3, v2

    .line 271
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/h;->A()I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-gtz v2, :cond_b

    .line 276
    .line 277
    if-eqz v4, :cond_a

    .line 278
    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    :cond_a
    return v3

    .line 282
    :cond_b
    move v0, v4

    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    const-string v1, "State==HEADER"

    .line 288
    .line 289
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_4
    sget-object v1, Lorg/eclipse/jetty/http/h;->z:LR1/c;

    .line 294
    .line 295
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 296
    .line 297
    .line 298
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    .line 299
    .line 300
    if-eqz v1, :cond_d

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_d
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    .line 304
    .line 305
    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    move-object v0, v1

    .line 309
    :goto_5
    throw v0

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m(Lorg/eclipse/jetty/http/g;Z)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget v2, v1, Lorg/eclipse/jetty/http/a;->c:I

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lorg/eclipse/jetty/http/a;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 4
    :cond_2
    :goto_0
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/a;->k:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "last?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    or-int v2, v2, p2

    .line 6
    iput-boolean v2, v1, Lorg/eclipse/jetty/http/a;->k:Z

    .line 7
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    if-nez v2, :cond_5

    .line 8
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getHeader()LL1/d;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 9
    :cond_5
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->v()Z

    move-result v2

    const/16 v4, 0xcc

    const/16 v5, 0x9

    const/16 v6, 0xc8

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x20

    const/16 v15, 0xa

    const/16 v16, 0x0

    const/16 p2, 0x30

    const/4 v12, 0x1

    if-eqz v2, :cond_8

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 11
    iget v2, v1, Lorg/eclipse/jetty/http/a;->e:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "UTF-8"

    if-ne v2, v5, :cond_6

    .line 12
    :try_start_1
    iput-wide v7, v1, Lorg/eclipse/jetty/http/a;->j:J

    .line 13
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    invoke-interface {v0, v2}, LL1/d;->m0(LL1/d;)I

    .line 14
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v0, v14}, LL1/d;->put(B)V

    .line 15
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 16
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    const/4 v0, 0x3

    .line 17
    iput v0, v1, Lorg/eclipse/jetty/http/a;->c:I

    .line 18
    iput-boolean v12, v1, Lorg/eclipse/jetty/http/a;->m:Z

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1c

    .line 19
    :cond_6
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    invoke-interface {v2, v5}, LL1/d;->m0(LL1/d;)I

    .line 20
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v2, v14}, LL1/d;->put(B)V

    .line 21
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->h:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, v3}, LL1/d;->r0([B)I

    .line 22
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v2, v14}, LL1/d;->put(B)V

    .line 23
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget v3, v1, Lorg/eclipse/jetty/http/a;->e:I

    if-ne v3, v15, :cond_7

    sget-object v3, Lorg/eclipse/jetty/http/p;->c:LL1/d;

    goto :goto_2

    :cond_7
    sget-object v3, Lorg/eclipse/jetty/http/p;->d:LL1/d;

    :goto_2
    invoke-interface {v2, v3}, LL1/d;->m0(LL1/d;)I

    .line 24
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v3, Lorg/eclipse/jetty/http/n;->a:[B

    invoke-interface {v2, v3}, LL1/d;->r0([B)I

    goto/16 :goto_7

    .line 25
    :cond_8
    iget v2, v1, Lorg/eclipse/jetty/http/a;->e:I

    if-ne v2, v5, :cond_9

    .line 26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 27
    iput-wide v10, v1, Lorg/eclipse/jetty/http/a;->j:J

    .line 28
    iput v9, v1, Lorg/eclipse/jetty/http/a;->c:I

    return-void

    .line 29
    :cond_9
    iget-object v3, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    if-nez v3, :cond_b

    if-le v2, v15, :cond_a

    move v2, v12

    goto :goto_3

    :cond_a
    move/from16 v2, v16

    .line 30
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 31
    :cond_b
    iget v2, v1, Lorg/eclipse/jetty/http/a;->d:I

    sget-object v3, Lorg/eclipse/jetty/http/h;->A:[Lorg/eclipse/jetty/http/h$b;

    array-length v5, v3

    if-ge v2, v5, :cond_c

    aget-object v2, v3, v2

    goto :goto_4

    :cond_c
    move-object v2, v13

    :goto_4
    const/16 v3, 0x64

    if-nez v2, :cond_e

    .line 32
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v5, Lorg/eclipse/jetty/http/p;->d:LL1/d;

    invoke-interface {v2, v5}, LL1/d;->m0(LL1/d;)I

    .line 33
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v2, v14}, LL1/d;->put(B)V

    .line 34
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget v5, v1, Lorg/eclipse/jetty/http/a;->d:I

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    invoke-interface {v2, v5}, LL1/d;->put(B)V

    .line 35
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget v5, v1, Lorg/eclipse/jetty/http/a;->d:I

    rem-int/2addr v5, v3

    div-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    invoke-interface {v2, v5}, LL1/d;->put(B)V

    .line 36
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget v5, v1, Lorg/eclipse/jetty/http/a;->d:I

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    invoke-interface {v2, v5}, LL1/d;->put(B)V

    .line 37
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v2, v14}, LL1/d;->put(B)V

    .line 38
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->f:LL1/d;

    if-nez v2, :cond_d

    .line 39
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget v5, v1, Lorg/eclipse/jetty/http/a;->d:I

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    invoke-interface {v2, v5}, LL1/d;->put(B)V

    .line 40
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget v5, v1, Lorg/eclipse/jetty/http/a;->d:I

    rem-int/2addr v5, v3

    div-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    invoke-interface {v2, v5}, LL1/d;->put(B)V

    .line 41
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget v5, v1, Lorg/eclipse/jetty/http/a;->d:I

    rem-int/2addr v5, v15

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    invoke-interface {v2, v5}, LL1/d;->put(B)V

    goto :goto_5

    .line 42
    :cond_d
    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v5, v2}, LL1/d;->m0(LL1/d;)I

    .line 43
    :goto_5
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v5, Lorg/eclipse/jetty/http/n;->a:[B

    invoke-interface {v2, v5}, LL1/d;->r0([B)I

    goto :goto_6

    .line 44
    :cond_e
    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->f:LL1/d;

    if-nez v5, :cond_f

    .line 45
    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v2, v2, Lorg/eclipse/jetty/http/h$b;->c:LL1/d;

    invoke-interface {v5, v2}, LL1/d;->m0(LL1/d;)I

    goto :goto_6

    .line 46
    :cond_f
    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v2, v2, Lorg/eclipse/jetty/http/h$b;->b:LL1/d;

    invoke-interface {v5, v2}, LL1/d;->m0(LL1/d;)I

    .line 47
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->f:LL1/d;

    invoke-interface {v2, v5}, LL1/d;->m0(LL1/d;)I

    .line 48
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v5, Lorg/eclipse/jetty/http/n;->a:[B

    invoke-interface {v2, v5}, LL1/d;->r0([B)I

    .line 49
    :goto_6
    iget v2, v1, Lorg/eclipse/jetty/http/a;->d:I

    if-ge v2, v6, :cond_11

    if-lt v2, v3, :cond_11

    .line 50
    iput-boolean v12, v1, Lorg/eclipse/jetty/http/a;->m:Z

    .line 51
    iput-object v13, v1, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 52
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    if-eqz v2, :cond_10

    .line 53
    invoke-interface {v2}, LL1/d;->clear()V

    .line 54
    :cond_10
    iget v2, v1, Lorg/eclipse/jetty/http/a;->d:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_13

    .line 55
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 56
    iput v9, v1, Lorg/eclipse/jetty/http/a;->c:I

    return-void

    :cond_11
    if-eq v2, v4, :cond_12

    const/16 v3, 0x130

    if-ne v2, v3, :cond_13

    .line 57
    :cond_12
    iput-boolean v12, v1, Lorg/eclipse/jetty/http/a;->m:Z

    .line 58
    iput-object v13, v1, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 59
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    if-eqz v2, :cond_13

    .line 60
    invoke-interface {v2}, LL1/d;->clear()V

    .line 61
    :cond_13
    :goto_7
    iget v2, v1, Lorg/eclipse/jetty/http/a;->d:I

    const/16 v3, 0x3a

    if-lt v2, v6, :cond_14

    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->r:LL1/d;

    if-eqz v2, :cond_14

    .line 62
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v5, Lorg/eclipse/jetty/http/j;->m:LL1/d;

    invoke-interface {v2, v5}, LL1/d;->m0(LL1/d;)I

    .line 63
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v2, v3}, LL1/d;->put(B)V

    .line 64
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v2, v14}, LL1/d;->put(B)V

    .line 65
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-object v5, v1, Lorg/eclipse/jetty/http/a;->r:LL1/d;

    invoke-interface {v2, v5}, LL1/d;->m0(LL1/d;)I

    .line 66
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v5, Lorg/eclipse/jetty/http/h;->G:[B

    invoke-interface {v2, v5}, LL1/d;->r0([B)I

    :cond_14
    const/4 v2, -0x1

    const/16 v5, 0xb

    if-eqz v0, :cond_36

    .line 67
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/g;->C()I

    move-result v9

    move/from16 v14, v16

    move/from16 v20, v14

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v24, v23

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_8
    if-ge v14, v9, :cond_35

    .line 68
    invoke-virtual {v0, v14}, Lorg/eclipse/jetty/http/g;->o(I)Lorg/eclipse/jetty/http/g$e;

    move-result-object v7

    if-nez v7, :cond_15

    move/from16 v10, p2

    :goto_9
    move/from16 v29, v14

    goto/16 :goto_d

    .line 69
    :cond_15
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/g$e;->g()I

    move-result v8

    const/4 v4, 0x5

    if-eq v8, v12, :cond_20

    if-eq v8, v4, :cond_1e

    const/16 v4, 0xc

    if-eq v8, v4, :cond_1a

    const/16 v4, 0x10

    if-eq v8, v4, :cond_18

    move/from16 v4, p2

    if-eq v8, v4, :cond_17

    .line 70
    iget-object v8, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/http/g$e;->k(LL1/d;)V

    :cond_16
    move v10, v4

    goto :goto_9

    .line 71
    :cond_17
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->s()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 72
    iget-object v8, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/http/g$e;->k(LL1/d;)V

    move/from16 p2, v9

    move/from16 v24, v12

    :goto_a
    move/from16 v29, v14

    goto/16 :goto_14

    :cond_18
    move/from16 v4, p2

    .line 73
    sget-object v8, Lorg/eclipse/jetty/http/q;->f:LL1/e$a;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/g$e;->i()LL1/d;

    move-result-object v4

    invoke-static {v8, v4}, LL1/g;->a(LL1/d;LL1/d;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-wide/16 v10, -0x4

    iput-wide v10, v1, Lorg/eclipse/jetty/http/a;->j:J

    .line 74
    :cond_19
    iget-object v4, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual {v7, v4}, Lorg/eclipse/jetty/http/g$e;->k(LL1/d;)V

    move/from16 p2, v9

    move/from16 v20, v12

    goto :goto_a

    .line 75
    :cond_1a
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/g$e;->e()J

    move-result-wide v10

    iput-wide v10, v1, Lorg/eclipse/jetty/http/a;->j:J

    move/from16 v29, v14

    .line 76
    iget-wide v13, v1, Lorg/eclipse/jetty/http/a;->i:J

    cmp-long v4, v10, v13

    if-ltz v4, :cond_1c

    iget-boolean v4, v1, Lorg/eclipse/jetty/http/a;->k:Z

    if-eqz v4, :cond_1b

    cmp-long v4, v10, v13

    if-eqz v4, :cond_1b

    goto :goto_b

    :cond_1b
    move-object/from16 v19, v7

    goto :goto_c

    :cond_1c
    :goto_b
    const/16 v19, 0x0

    .line 77
    :goto_c
    iget-object v4, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual {v7, v4}, Lorg/eclipse/jetty/http/g$e;->k(LL1/d;)V

    :cond_1d
    :goto_d
    move/from16 p2, v9

    goto/16 :goto_14

    :cond_1e
    move/from16 v29, v14

    .line 78
    iget v4, v1, Lorg/eclipse/jetty/http/a;->e:I

    if-ne v4, v5, :cond_1f

    move-object/from16 v21, v7

    goto :goto_d

    :cond_1f
    const/16 v10, 0x30

    goto :goto_d

    :cond_20
    move/from16 v10, p2

    move/from16 v29, v14

    .line 79
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->v()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 80
    iget-object v11, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual {v7, v11}, Lorg/eclipse/jetty/http/g$e;->k(LL1/d;)V

    .line 81
    :cond_21
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/g$e;->j()I

    move-result v11

    const-wide/16 v13, -0x3

    if-eq v11, v2, :cond_2a

    if-eq v11, v12, :cond_26

    if-eq v11, v4, :cond_24

    if-eq v11, v5, :cond_23

    if-nez v3, :cond_22

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_e

    :cond_22
    const/16 v8, 0x2c

    .line 83
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    :goto_e
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/g$e;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 85
    :cond_23
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 86
    iget-object v4, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual {v7, v4}, Lorg/eclipse/jetty/http/g$e;->k(LL1/d;)V

    goto :goto_d

    .line 87
    :cond_24
    iget v4, v1, Lorg/eclipse/jetty/http/a;->e:I

    if-ne v4, v15, :cond_1d

    .line 88
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 89
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    :cond_25
    move/from16 p2, v9

    move/from16 v22, v12

    goto/16 :goto_14

    .line 90
    :cond_26
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 91
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 92
    :cond_27
    iget-object v4, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v4

    if-eqz v4, :cond_28

    move/from16 p2, v9

    iget-wide v8, v1, Lorg/eclipse/jetty/http/a;->j:J

    cmp-long v4, v8, v13

    if-nez v4, :cond_29

    const-wide/16 v7, -0x1

    .line 93
    iput-wide v7, v1, Lorg/eclipse/jetty/http/a;->j:J

    goto :goto_f

    :cond_28
    move/from16 p2, v9

    :cond_29
    :goto_f
    move/from16 v23, v12

    goto/16 :goto_14

    :cond_2a
    move/from16 p2, v9

    .line 94
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/g$e;->h()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move/from16 v9, v16

    :goto_10
    if-eqz v7, :cond_34

    .line 95
    array-length v8, v7

    if-ge v9, v8, :cond_34

    .line 96
    sget-object v8, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    aget-object v30, v7, v9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, LL1/e;->c(Ljava/lang/String;)LL1/e$a;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 97
    invoke-virtual {v8}, LL1/e$a;->h()I

    move-result v8

    if-eq v8, v12, :cond_2e

    if-eq v8, v4, :cond_2c

    if-nez v3, :cond_2b

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_11

    :cond_2b
    const/16 v8, 0x2c

    .line 99
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :goto_11
    aget-object v10, v7, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 101
    :cond_2c
    iget v10, v1, Lorg/eclipse/jetty/http/a;->e:I

    if-ne v10, v15, :cond_33

    .line 102
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 103
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v10, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    :cond_2d
    move/from16 v22, v12

    goto :goto_13

    .line 104
    :cond_2e
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 105
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v10, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 106
    :cond_2f
    iget-object v10, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_30

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v10

    if-eqz v10, :cond_30

    iget-wide v10, v1, Lorg/eclipse/jetty/http/a;->j:J

    cmp-long v10, v10, v13

    if-nez v10, :cond_30

    const-wide/16 v10, -0x1

    .line 107
    iput-wide v10, v1, Lorg/eclipse/jetty/http/a;->j:J

    :cond_30
    move/from16 v23, v12

    move/from16 v22, v16

    goto :goto_13

    :cond_31
    if-nez v3, :cond_32

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_12

    :cond_32
    const/16 v8, 0x2c

    .line 109
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :goto_12
    aget-object v10, v7, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    :goto_13
    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x30

    goto :goto_10

    :cond_34
    :goto_14
    add-int/lit8 v14, v29, 0x1

    move/from16 v9, p2

    const/16 p2, 0x30

    const/16 v4, 0xcc

    const-wide/16 v7, 0x0

    const-wide/16 v10, -0x1

    goto/16 :goto_8

    :cond_35
    move-object/from16 v17, v3

    move-object/from16 v13, v19

    move-object/from16 v0, v21

    goto :goto_15

    :cond_36
    move/from16 v20, v16

    move/from16 v22, v20

    move/from16 v23, v22

    move/from16 v24, v23

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    .line 111
    :goto_15
    iget-wide v3, v1, Lorg/eclipse/jetty/http/a;->j:J

    long-to-int v3, v3

    const/4 v4, -0x3

    const-wide/16 v9, -0x2

    if-eq v3, v4, :cond_39

    if-eq v3, v2, :cond_38

    if-eqz v3, :cond_37

    goto/16 :goto_18

    :cond_37
    if-nez v13, :cond_3f

    .line 112
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget v2, v1, Lorg/eclipse/jetty/http/a;->d:I

    if-lt v2, v6, :cond_3f

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3f

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3f

    .line 113
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v3, Lorg/eclipse/jetty/http/h;->C:[B

    invoke-interface {v2, v3}, LL1/d;->r0([B)I

    goto/16 :goto_18

    .line 114
    :cond_38
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->v()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    goto/16 :goto_18

    .line 115
    :cond_39
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-boolean v2, v1, Lorg/eclipse/jetty/http/a;->m:Z

    if-eqz v2, :cond_3a

    const-wide/16 v2, 0x0

    .line 116
    iput-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    .line 117
    iput-wide v2, v1, Lorg/eclipse/jetty/http/a;->i:J

    goto :goto_18

    .line 118
    :cond_3a
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/a;->k:Z

    if-eqz v2, :cond_3c

    .line 119
    iget-wide v2, v1, Lorg/eclipse/jetty/http/a;->i:J

    iput-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    if-nez v13, :cond_3f

    .line 120
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    const-wide/16 v25, 0x0

    cmp-long v2, v2, v25

    if-gtz v2, :cond_3b

    if-eqz v20, :cond_3f

    :cond_3b
    iget-boolean v2, v1, Lorg/eclipse/jetty/http/a;->m:Z

    if-nez v2, :cond_3f

    .line 121
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v3, Lorg/eclipse/jetty/http/j;->j:LL1/d;

    invoke-interface {v2, v3}, LL1/d;->m0(LL1/d;)I

    .line 122
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    const/16 v3, 0x3a

    invoke-interface {v2, v3}, LL1/d;->put(B)V

    .line 123
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, LL1/d;->put(B)V

    .line 124
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    iget-wide v3, v1, Lorg/eclipse/jetty/http/a;->j:J

    invoke-static {v2, v3, v4}, LL1/g;->d(LL1/d;J)V

    .line 125
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v3, Lorg/eclipse/jetty/http/n;->a:[B

    invoke-interface {v2, v3}, LL1/d;->r0([B)I

    goto :goto_18

    .line 126
    :cond_3c
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, v1, Lorg/eclipse/jetty/http/a;->e:I

    if-ge v2, v5, :cond_3d

    goto :goto_16

    :cond_3d
    move-wide v2, v9

    goto :goto_17

    :cond_3e
    :goto_16
    const-wide/16 v2, -0x1

    :goto_17
    iput-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    .line 127
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->v()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    const-wide/16 v27, -0x1

    cmp-long v2, v2, v27

    if-nez v2, :cond_3f

    const-wide/16 v2, 0x0

    .line 128
    iput-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    .line 129
    iput-boolean v12, v1, Lorg/eclipse/jetty/http/a;->m:Z

    .line 130
    :cond_3f
    :goto_18
    iget-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_42

    if-eqz v0, :cond_41

    .line 131
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/g$e;->j()I

    move-result v2

    const/4 v3, 0x2

    if-eq v3, v2, :cond_41

    .line 132
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/g$e;->h()Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 134
    iget-object v2, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/http/g$e;->k(LL1/d;)V

    goto :goto_19

    .line 135
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "BAD TE"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_41
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->H:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 137
    :cond_42
    :goto_19
    iget-wide v2, v1, Lorg/eclipse/jetty/http/a;->j:J

    const-wide/16 v27, -0x1

    cmp-long v0, v2, v27

    if-nez v0, :cond_43

    .line 138
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_43
    move/from16 v16, v22

    .line 139
    :goto_1a
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/h;->C()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 140
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_45

    if-nez v23, :cond_44

    iget v0, v1, Lorg/eclipse/jetty/http/a;->e:I

    if-le v0, v15, :cond_45

    .line 141
    :cond_44
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->E:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    if-eqz v17, :cond_47

    .line 142
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v0}, LL1/d;->n0()I

    move-result v2

    const/16 v18, 0x2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, LL1/d;->q0(I)V

    .line 143
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    const/16 v8, 0x2c

    invoke-interface {v0, v8}, LL1/d;->put(B)V

    .line 144
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 145
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->G:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    goto :goto_1b

    :cond_45
    if-eqz v16, :cond_46

    .line 146
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->D:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    if-eqz v17, :cond_47

    .line 147
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v0}, LL1/d;->n0()I

    move-result v2

    const/16 v18, 0x2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, LL1/d;->q0(I)V

    .line 148
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    const/16 v8, 0x2c

    invoke-interface {v0, v8}, LL1/d;->put(B)V

    .line 149
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 150
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->G:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    goto :goto_1b

    :cond_46
    if-eqz v17, :cond_47

    .line 151
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->F:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 152
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 153
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->G:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    :cond_47
    :goto_1b
    if-nez v24, :cond_48

    .line 154
    iget v0, v1, Lorg/eclipse/jetty/http/a;->d:I

    const/16 v2, 0xc7

    if-le v0, v2, :cond_48

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->s()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 155
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/h;->I:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    .line 156
    :cond_48
    iget-object v0, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    sget-object v2, Lorg/eclipse/jetty/http/n;->a:[B

    invoke-interface {v0, v2}, LL1/d;->r0([B)I

    const/4 v3, 0x2

    .line 157
    iput v3, v1, Lorg/eclipse/jetty/http/a;->c:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 158
    :goto_1c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    invoke-interface {v4}, LL1/d;->w0()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, LL1/k;->o()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 22
    .line 23
    invoke-interface {v0}, LL1/k;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lorg/eclipse/jetty/http/h;->z:LR1/c;

    .line 29
    .line 30
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/a;->reset()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, LL1/d;->clear()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, LL1/d;->clear()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 56
    .line 57
    :cond_3
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 59
    .line 60
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/h;->w:Z

    .line 61
    .line 62
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/h;->x:Z

    .line 63
    .line 64
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 65
    .line 66
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 67
    .line 68
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->h:Ljava/lang/String;

    .line 69
    .line 70
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 71
    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget v4, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, -0x1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v0, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v0}, LL1/d;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    move v1, v5

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-interface {v1}, LL1/d;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-interface {v2}, LL1/d;->length()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "%s{s=%d,h=%d,b=%d,c=%d}"

    .line 62
    .line 63
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public u()Z
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/eclipse/jetty/http/a;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->v:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 16
    .line 17
    const-wide/16 v2, -0x2

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, LL1/d;->f0()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    if-ge v0, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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

.method public y()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 8
    .line 9
    if-nez v0, :cond_a

    .line 10
    .line 11
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, LL1/d;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-gtz v1, :cond_3

    .line 26
    .line 27
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 28
    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/h;->l()I

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-interface {v0}, LL1/d;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-gtz v0, :cond_5

    .line 41
    .line 42
    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/h;->y:Z

    .line 43
    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v1, "FULL"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 56
    .line 57
    if-nez v0, :cond_7

    .line 58
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 60
    .line 61
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()LL1/d;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 66
    .line 67
    :cond_7
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 68
    .line 69
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 70
    .line 71
    invoke-interface {v2}, LL1/d;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    int-to-long v2, v2

    .line 76
    sub-long/2addr v0, v2

    .line 77
    iput-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 78
    .line 79
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    const v0, 0x7fffffff

    .line 84
    .line 85
    .line 86
    return v0

    .line 87
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 88
    .line 89
    invoke-interface {v0}, LL1/d;->f0()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-wide v1, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 94
    .line 95
    const-wide/16 v3, -0x2

    .line 96
    .line 97
    cmp-long v1, v1, v3

    .line 98
    .line 99
    if-nez v1, :cond_9

    .line 100
    .line 101
    const/16 v1, 0xc

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_9
    const/4 v1, 0x0

    .line 105
    :goto_1
    sub-int/2addr v0, v1

    .line 106
    return v0

    .line 107
    :cond_a
    :goto_2
    return v1
.end method
