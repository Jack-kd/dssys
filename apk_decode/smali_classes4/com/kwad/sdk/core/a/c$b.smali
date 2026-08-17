.class public final Lcom/kwad/sdk/core/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static final aSD:Lcom/kwad/sdk/core/a/c$b;

.field static final aSE:Lcom/kwad/sdk/core/a/c$b;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/a/c$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/core/a/c$b;-><init>(Z[BIZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/sdk/core/a/c$b;->aSD:Lcom/kwad/sdk/core/a/c$b;

    .line 11
    .line 12
    new-instance v0, Lcom/kwad/sdk/core/a/c$b;

    .line 13
    .line 14
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/kwad/sdk/core/a/c$b;-><init>(Z[BIZ)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/kwad/sdk/core/a/c$b;->aSE:Lcom/kwad/sdk/core/a/c$b;

    .line 18
    .line 19
    const/16 v0, 0x40

    .line 20
    .line 21
    new-array v0, v0, [C

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/kwad/sdk/core/a/c$b;->toBase64:[C

    .line 27
    .line 28
    const/16 v0, 0x40

    .line 29
    .line 30
    new-array v0, v0, [C

    .line 31
    .line 32
    fill-array-data v0, :array_1

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/kwad/sdk/core/a/c$b;->toBase64URL:[C

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/kwad/sdk/core/a/c$b;->isURL:Z

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/kwad/sdk/core/a/c$b;->newline:[B

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/kwad/sdk/core/a/c$b;->linemax:I

    .line 11
    .line 12
    iput-boolean p4, p0, Lcom/kwad/sdk/core/a/c$b;->doPadding:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000()[C
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/a/c$b;->toBase64:[C

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100()[C
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/a/c$b;->toBase64URL:[C

    .line 2
    .line 3
    return-object v0
.end method

.method private encode0([BII[B)I
    .locals 14

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/kwad/sdk/core/a/c$b;->isURL:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/kwad/sdk/core/a/c$b;->toBase64URL:[C

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v1, Lcom/kwad/sdk/core/a/c$b;->toBase64:[C

    .line 11
    .line 12
    :goto_0
    div-int/lit8 v2, v0, 0x3

    .line 13
    .line 14
    mul-int/lit8 v2, v2, 0x3

    .line 15
    .line 16
    iget v3, p0, Lcom/kwad/sdk/core/a/c$b;->linemax:I

    .line 17
    .line 18
    if-lez v3, :cond_1

    .line 19
    .line 20
    div-int/lit8 v4, v3, 0x4

    .line 21
    .line 22
    mul-int/lit8 v4, v4, 0x3

    .line 23
    .line 24
    if-le v2, v4, :cond_1

    .line 25
    .line 26
    div-int/lit8 v3, v3, 0x4

    .line 27
    .line 28
    mul-int/lit8 v3, v3, 0x3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v2

    .line 32
    :goto_1
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    move v6, v5

    .line 35
    :goto_2
    if-ge v5, v2, :cond_4

    .line 36
    .line 37
    add-int v7, v5, v3

    .line 38
    .line 39
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    move v8, v5

    .line 44
    move v9, v6

    .line 45
    :goto_3
    if-ge v8, v7, :cond_2

    .line 46
    .line 47
    add-int/lit8 v10, v8, 0x1

    .line 48
    .line 49
    aget-byte v11, p1, v8

    .line 50
    .line 51
    and-int/lit16 v11, v11, 0xff

    .line 52
    .line 53
    shl-int/lit8 v11, v11, 0x10

    .line 54
    .line 55
    add-int/lit8 v12, v8, 0x2

    .line 56
    .line 57
    aget-byte v10, p1, v10

    .line 58
    .line 59
    and-int/lit16 v10, v10, 0xff

    .line 60
    .line 61
    shl-int/lit8 v10, v10, 0x8

    .line 62
    .line 63
    or-int/2addr v10, v11

    .line 64
    add-int/lit8 v8, v8, 0x3

    .line 65
    .line 66
    aget-byte v11, p1, v12

    .line 67
    .line 68
    and-int/lit16 v11, v11, 0xff

    .line 69
    .line 70
    or-int/2addr v10, v11

    .line 71
    add-int/lit8 v11, v9, 0x1

    .line 72
    .line 73
    ushr-int/lit8 v12, v10, 0x12

    .line 74
    .line 75
    and-int/lit8 v12, v12, 0x3f

    .line 76
    .line 77
    aget-char v12, v1, v12

    .line 78
    .line 79
    int-to-byte v12, v12

    .line 80
    aput-byte v12, p4, v9

    .line 81
    .line 82
    add-int/lit8 v12, v9, 0x2

    .line 83
    .line 84
    ushr-int/lit8 v13, v10, 0xc

    .line 85
    .line 86
    and-int/lit8 v13, v13, 0x3f

    .line 87
    .line 88
    aget-char v13, v1, v13

    .line 89
    .line 90
    int-to-byte v13, v13

    .line 91
    aput-byte v13, p4, v11

    .line 92
    .line 93
    add-int/lit8 v11, v9, 0x3

    .line 94
    .line 95
    ushr-int/lit8 v13, v10, 0x6

    .line 96
    .line 97
    and-int/lit8 v13, v13, 0x3f

    .line 98
    .line 99
    aget-char v13, v1, v13

    .line 100
    .line 101
    int-to-byte v13, v13

    .line 102
    aput-byte v13, p4, v12

    .line 103
    .line 104
    add-int/lit8 v9, v9, 0x4

    .line 105
    .line 106
    and-int/lit8 v10, v10, 0x3f

    .line 107
    .line 108
    aget-char v10, v1, v10

    .line 109
    .line 110
    int-to-byte v10, v10

    .line 111
    aput-byte v10, p4, v11

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    sub-int v5, v7, v5

    .line 115
    .line 116
    div-int/lit8 v5, v5, 0x3

    .line 117
    .line 118
    mul-int/lit8 v5, v5, 0x4

    .line 119
    .line 120
    add-int/2addr v6, v5

    .line 121
    iget v8, p0, Lcom/kwad/sdk/core/a/c$b;->linemax:I

    .line 122
    .line 123
    if-ne v5, v8, :cond_3

    .line 124
    .line 125
    if-ge v7, v0, :cond_3

    .line 126
    .line 127
    iget-object v5, p0, Lcom/kwad/sdk/core/a/c$b;->newline:[B

    .line 128
    .line 129
    array-length v8, v5

    .line 130
    move v9, v4

    .line 131
    :goto_4
    if-ge v9, v8, :cond_3

    .line 132
    .line 133
    aget-byte v10, v5, v9

    .line 134
    .line 135
    add-int/lit8 v11, v6, 0x1

    .line 136
    .line 137
    aput-byte v10, p4, v6

    .line 138
    .line 139
    add-int/lit8 v9, v9, 0x1

    .line 140
    .line 141
    move v6, v11

    .line 142
    goto :goto_4

    .line 143
    :cond_3
    move v5, v7

    .line 144
    goto :goto_2

    .line 145
    :cond_4
    if-ge v5, v0, :cond_8

    .line 146
    .line 147
    add-int/lit8 v2, v5, 0x1

    .line 148
    .line 149
    aget-byte v3, p1, v5

    .line 150
    .line 151
    and-int/lit16 v3, v3, 0xff

    .line 152
    .line 153
    add-int/lit8 v4, v6, 0x1

    .line 154
    .line 155
    shr-int/lit8 v5, v3, 0x2

    .line 156
    .line 157
    aget-char v5, v1, v5

    .line 158
    .line 159
    int-to-byte v5, v5

    .line 160
    aput-byte v5, p4, v6

    .line 161
    .line 162
    const/16 v5, 0x3d

    .line 163
    .line 164
    if-ne v2, v0, :cond_6

    .line 165
    .line 166
    add-int/lit8 p1, v6, 0x2

    .line 167
    .line 168
    shl-int/lit8 v0, v3, 0x4

    .line 169
    .line 170
    and-int/lit8 v0, v0, 0x3f

    .line 171
    .line 172
    aget-char v0, v1, v0

    .line 173
    .line 174
    int-to-byte v0, v0

    .line 175
    aput-byte v0, p4, v4

    .line 176
    .line 177
    iget-boolean v0, p0, Lcom/kwad/sdk/core/a/c$b;->doPadding:Z

    .line 178
    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    add-int/lit8 v0, v6, 0x3

    .line 182
    .line 183
    aput-byte v5, p4, p1

    .line 184
    .line 185
    add-int/lit8 v6, v6, 0x4

    .line 186
    .line 187
    aput-byte v5, p4, v0

    .line 188
    .line 189
    return v6

    .line 190
    :cond_5
    return p1

    .line 191
    :cond_6
    aget-byte p1, p1, v2

    .line 192
    .line 193
    and-int/lit16 p1, p1, 0xff

    .line 194
    .line 195
    add-int/lit8 v0, v6, 0x2

    .line 196
    .line 197
    shl-int/lit8 v2, v3, 0x4

    .line 198
    .line 199
    and-int/lit8 v2, v2, 0x3f

    .line 200
    .line 201
    shr-int/lit8 v3, p1, 0x4

    .line 202
    .line 203
    or-int/2addr v2, v3

    .line 204
    aget-char v2, v1, v2

    .line 205
    .line 206
    int-to-byte v2, v2

    .line 207
    aput-byte v2, p4, v4

    .line 208
    .line 209
    add-int/lit8 v2, v6, 0x3

    .line 210
    .line 211
    shl-int/lit8 p1, p1, 0x2

    .line 212
    .line 213
    and-int/lit8 p1, p1, 0x3f

    .line 214
    .line 215
    aget-char p1, v1, p1

    .line 216
    .line 217
    int-to-byte p1, p1

    .line 218
    aput-byte p1, p4, v0

    .line 219
    .line 220
    iget-boolean p1, p0, Lcom/kwad/sdk/core/a/c$b;->doPadding:Z

    .line 221
    .line 222
    if-eqz p1, :cond_7

    .line 223
    .line 224
    add-int/lit8 v6, v6, 0x4

    .line 225
    .line 226
    aput-byte v5, p4, v2

    .line 227
    .line 228
    return v6

    .line 229
    :cond_7
    return v2

    .line 230
    :cond_8
    return v6
.end method

.method private final outLength(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/a/c$b;->doPadding:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    div-int/lit8 p1, p1, 0x3

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    rem-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    div-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    mul-int/lit8 p1, p1, 0x4

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    :goto_0
    add-int/2addr p1, v0

    .line 25
    :goto_1
    iget v0, p0, Lcom/kwad/sdk/core/a/c$b;->linemax:I

    .line 26
    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    add-int/lit8 v1, p1, -0x1

    .line 30
    .line 31
    div-int/2addr v1, v0

    .line 32
    iget-object v0, p0, Lcom/kwad/sdk/core/a/c$b;->newline:[B

    .line 33
    .line 34
    array-length v0, v0

    .line 35
    mul-int/2addr v1, v0

    .line 36
    add-int/2addr p1, v1

    .line 37
    :cond_2
    return p1
.end method


# virtual methods
.method public final encode([B)[B
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/a/c$b;->outLength(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    array-length v3, p1

    .line 10
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/kwad/sdk/core/a/c$b;->encode0([BII[B)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    return-object v1
.end method

.method public final encodeToString([B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/a/c$b;->encode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    array-length v2, p1

    .line 9
    invoke-direct {v0, p1, v1, v1, v2}, Ljava/lang/String;-><init>([BIII)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
