.class Lcom/meishu/sdk/core/view/gif/GifDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field public static final LOOP_FOREVER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GifDecoder"

.field private static final WORK_BUFFER_SIZE:I = 0x4000


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/meishu/sdk/core/view/gif/GifHeader;

.field private isFirstFrameTransparent:Z

.field private loopIndex:I

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/meishu/sdk/core/view/gif/GifHeaderParser;

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B

.field private workBuffer:[B

.field private workBufferPosition:I

.field private workBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/meishu/sdk/core/view/gif/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;-><init>(Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 5
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pct:[I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferSize:I

    .line 7
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 8
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 9
    new-instance p1, Lcom/meishu/sdk/core/view/gif/GifHeader;

    invoke-direct {p1}, Lcom/meishu/sdk/core/view/gif/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;-><init>(Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/gif/GifDecoder;-><init>(Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;)V

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->setData(Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private averageColorsNear(III)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    move v2, v0

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    move v5, v4

    .line 7
    move v6, v5

    .line 8
    :goto_0
    iget v7, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 9
    .line 10
    add-int/2addr v7, p1

    .line 11
    if-ge v1, v7, :cond_1

    .line 12
    .line 13
    iget-object v7, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 14
    .line 15
    array-length v8, v7

    .line 16
    if-ge v1, v8, :cond_1

    .line 17
    .line 18
    if-ge v1, p2, :cond_1

    .line 19
    .line 20
    aget-byte v7, v7, v1

    .line 21
    .line 22
    and-int/lit16 v7, v7, 0xff

    .line 23
    .line 24
    iget-object v8, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->act:[I

    .line 25
    .line 26
    aget v7, v8, v7

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    shr-int/lit8 v8, v7, 0x18

    .line 31
    .line 32
    and-int/lit16 v8, v8, 0xff

    .line 33
    .line 34
    add-int/2addr v5, v8

    .line 35
    shr-int/lit8 v8, v7, 0x10

    .line 36
    .line 37
    and-int/lit16 v8, v8, 0xff

    .line 38
    .line 39
    add-int/2addr v4, v8

    .line 40
    shr-int/lit8 v8, v7, 0x8

    .line 41
    .line 42
    and-int/lit16 v8, v8, 0xff

    .line 43
    .line 44
    add-int/2addr v3, v8

    .line 45
    and-int/lit16 v7, v7, 0xff

    .line 46
    .line 47
    add-int/2addr v2, v7

    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    add-int/2addr p1, p3

    .line 54
    move p3, p1

    .line 55
    :goto_1
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 56
    .line 57
    add-int/2addr v1, p1

    .line 58
    if-ge p3, v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 61
    .line 62
    array-length v7, v1

    .line 63
    if-ge p3, v7, :cond_3

    .line 64
    .line 65
    if-ge p3, p2, :cond_3

    .line 66
    .line 67
    aget-byte v1, v1, p3

    .line 68
    .line 69
    and-int/lit16 v1, v1, 0xff

    .line 70
    .line 71
    iget-object v7, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->act:[I

    .line 72
    .line 73
    aget v1, v7, v1

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    shr-int/lit8 v7, v1, 0x18

    .line 78
    .line 79
    and-int/lit16 v7, v7, 0xff

    .line 80
    .line 81
    add-int/2addr v5, v7

    .line 82
    shr-int/lit8 v7, v1, 0x10

    .line 83
    .line 84
    and-int/lit16 v7, v7, 0xff

    .line 85
    .line 86
    add-int/2addr v4, v7

    .line 87
    shr-int/lit8 v7, v1, 0x8

    .line 88
    .line 89
    and-int/lit16 v7, v7, 0xff

    .line 90
    .line 91
    add-int/2addr v3, v7

    .line 92
    and-int/lit16 v1, v1, 0xff

    .line 93
    .line 94
    add-int/2addr v2, v1

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    if-nez v6, :cond_4

    .line 101
    .line 102
    return v0

    .line 103
    :cond_4
    div-int/2addr v5, v6

    .line 104
    shl-int/lit8 p1, v5, 0x18

    .line 105
    .line 106
    div-int/2addr v4, v6

    .line 107
    shl-int/lit8 p2, v4, 0x10

    .line 108
    .line 109
    or-int/2addr p1, p2

    .line 110
    div-int/2addr v3, v6

    .line 111
    shl-int/lit8 p2, v3, 0x8

    .line 112
    .line 113
    or-int/2addr p1, p2

    .line 114
    div-int/2addr v2, v6

    .line 115
    or-int/2addr p1, v2

    .line 116
    return p1
.end method

.method private decodeBitmapData(Lcom/meishu/sdk/core/view/gif/GifFrame;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferSize:I

    .line 7
    .line 8
    iput v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v3, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    iget v4, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->bufferFrameStart:I

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 22
    .line 23
    iget v3, v1, Lcom/meishu/sdk/core/view/gif/GifHeader;->width:I

    .line 24
    .line 25
    iget v1, v1, Lcom/meishu/sdk/core/view/gif/GifHeader;->height:I

    .line 26
    .line 27
    :goto_0
    mul-int/2addr v3, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget v3, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->iw:I

    .line 30
    .line 31
    iget v1, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->ih:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    array-length v1, v1

    .line 39
    if-ge v1, v3, :cond_3

    .line 40
    .line 41
    :cond_2
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 42
    .line 43
    invoke-interface {v1, v3}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 48
    .line 49
    :cond_3
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->prefix:[S

    .line 50
    .line 51
    const/16 v4, 0x1000

    .line 52
    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    new-array v1, v4, [S

    .line 56
    .line 57
    iput-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->prefix:[S

    .line 58
    .line 59
    :cond_4
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->suffix:[B

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    new-array v1, v4, [B

    .line 64
    .line 65
    iput-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->suffix:[B

    .line 66
    .line 67
    :cond_5
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pixelStack:[B

    .line 68
    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    const/16 v1, 0x1001

    .line 72
    .line 73
    new-array v1, v1, [B

    .line 74
    .line 75
    iput-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pixelStack:[B

    .line 76
    .line 77
    :cond_6
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->readByte()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v5, 0x1

    .line 82
    shl-int v6, v5, v1

    .line 83
    .line 84
    add-int/lit8 v7, v6, 0x1

    .line 85
    .line 86
    add-int/lit8 v8, v6, 0x2

    .line 87
    .line 88
    add-int/2addr v1, v5

    .line 89
    shl-int v9, v5, v1

    .line 90
    .line 91
    sub-int/2addr v9, v5

    .line 92
    move v10, v2

    .line 93
    :goto_2
    if-ge v10, v6, :cond_7

    .line 94
    .line 95
    iget-object v11, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->prefix:[S

    .line 96
    .line 97
    aput-short v2, v11, v10

    .line 98
    .line 99
    iget-object v11, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->suffix:[B

    .line 100
    .line 101
    int-to-byte v12, v10

    .line 102
    aput-byte v12, v11, v10

    .line 103
    .line 104
    add-int/lit8 v10, v10, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    const/4 v10, -0x1

    .line 108
    move/from16 v22, v1

    .line 109
    .line 110
    move v11, v2

    .line 111
    move v12, v11

    .line 112
    move v13, v12

    .line 113
    move v14, v13

    .line 114
    move v15, v14

    .line 115
    move/from16 v16, v15

    .line 116
    .line 117
    move/from16 v17, v16

    .line 118
    .line 119
    move/from16 v18, v17

    .line 120
    .line 121
    move/from16 v20, v8

    .line 122
    .line 123
    move/from16 v21, v9

    .line 124
    .line 125
    move/from16 v19, v10

    .line 126
    .line 127
    :goto_3
    move/from16 v23, v2

    .line 128
    .line 129
    if-ge v11, v3, :cond_13

    .line 130
    .line 131
    const/4 v2, 0x3

    .line 132
    if-nez v12, :cond_9

    .line 133
    .line 134
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->readBlock()I

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-gtz v12, :cond_8

    .line 139
    .line 140
    iput v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 141
    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :cond_8
    move/from16 v13, v23

    .line 145
    .line 146
    :cond_9
    move/from16 p1, v5

    .line 147
    .line 148
    iget-object v5, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->block:[B

    .line 149
    .line 150
    aget-byte v5, v5, v13

    .line 151
    .line 152
    and-int/lit16 v5, v5, 0xff

    .line 153
    .line 154
    shl-int/2addr v5, v14

    .line 155
    add-int/2addr v15, v5

    .line 156
    add-int/lit8 v14, v14, 0x8

    .line 157
    .line 158
    add-int/lit8 v13, v13, 0x1

    .line 159
    .line 160
    add-int/2addr v12, v10

    .line 161
    move/from16 v5, v16

    .line 162
    .line 163
    move/from16 v4, v19

    .line 164
    .line 165
    move/from16 v10, v20

    .line 166
    .line 167
    move/from16 v2, v22

    .line 168
    .line 169
    :goto_4
    if-lt v14, v2, :cond_12

    .line 170
    .line 171
    move/from16 v22, v1

    .line 172
    .line 173
    and-int v1, v15, v21

    .line 174
    .line 175
    shr-int/2addr v15, v2

    .line 176
    sub-int/2addr v14, v2

    .line 177
    if-ne v1, v6, :cond_a

    .line 178
    .line 179
    move v10, v8

    .line 180
    move/from16 v21, v9

    .line 181
    .line 182
    move/from16 v1, v22

    .line 183
    .line 184
    move v2, v1

    .line 185
    const/4 v4, -0x1

    .line 186
    goto :goto_4

    .line 187
    :cond_a
    if-le v1, v10, :cond_b

    .line 188
    .line 189
    move/from16 v24, v2

    .line 190
    .line 191
    const/4 v2, 0x3

    .line 192
    iput v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_b
    move/from16 v24, v2

    .line 196
    .line 197
    const/4 v2, 0x3

    .line 198
    if-ne v1, v7, :cond_c

    .line 199
    .line 200
    :goto_5
    move/from16 v19, v4

    .line 201
    .line 202
    move/from16 v16, v5

    .line 203
    .line 204
    move/from16 v20, v10

    .line 205
    .line 206
    move/from16 v1, v22

    .line 207
    .line 208
    :goto_6
    move/from16 v2, v23

    .line 209
    .line 210
    move/from16 v22, v24

    .line 211
    .line 212
    const/16 v4, 0x1000

    .line 213
    .line 214
    const/4 v10, -0x1

    .line 215
    move/from16 v5, p1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_c
    const/4 v2, -0x1

    .line 219
    if-ne v4, v2, :cond_d

    .line 220
    .line 221
    iget-object v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pixelStack:[B

    .line 222
    .line 223
    add-int/lit8 v5, v17, 0x1

    .line 224
    .line 225
    iget-object v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->suffix:[B

    .line 226
    .line 227
    aget-byte v2, v2, v1

    .line 228
    .line 229
    aput-byte v2, v4, v17

    .line 230
    .line 231
    move v4, v1

    .line 232
    move/from16 v17, v5

    .line 233
    .line 234
    move/from16 v2, v24

    .line 235
    .line 236
    move v5, v4

    .line 237
    move/from16 v1, v22

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_d
    if-lt v1, v10, :cond_e

    .line 241
    .line 242
    iget-object v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pixelStack:[B

    .line 243
    .line 244
    add-int/lit8 v25, v17, 0x1

    .line 245
    .line 246
    int-to-byte v5, v5

    .line 247
    aput-byte v5, v2, v17

    .line 248
    .line 249
    move v2, v4

    .line 250
    move/from16 v17, v25

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_e
    move v2, v1

    .line 254
    :goto_7
    if-lt v2, v6, :cond_f

    .line 255
    .line 256
    iget-object v5, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pixelStack:[B

    .line 257
    .line 258
    add-int/lit8 v25, v17, 0x1

    .line 259
    .line 260
    move/from16 v26, v1

    .line 261
    .line 262
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->suffix:[B

    .line 263
    .line 264
    aget-byte v1, v1, v2

    .line 265
    .line 266
    aput-byte v1, v5, v17

    .line 267
    .line 268
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->prefix:[S

    .line 269
    .line 270
    aget-short v2, v1, v2

    .line 271
    .line 272
    move/from16 v17, v25

    .line 273
    .line 274
    move/from16 v1, v26

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_f
    move/from16 v26, v1

    .line 278
    .line 279
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->suffix:[B

    .line 280
    .line 281
    aget-byte v2, v1, v2

    .line 282
    .line 283
    and-int/lit16 v5, v2, 0xff

    .line 284
    .line 285
    iget-object v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pixelStack:[B

    .line 286
    .line 287
    add-int/lit8 v25, v17, 0x1

    .line 288
    .line 289
    move-object/from16 v27, v1

    .line 290
    .line 291
    int-to-byte v1, v5

    .line 292
    aput-byte v1, v2, v17

    .line 293
    .line 294
    const/16 v2, 0x1000

    .line 295
    .line 296
    if-ge v10, v2, :cond_10

    .line 297
    .line 298
    iget-object v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->prefix:[S

    .line 299
    .line 300
    int-to-short v4, v4

    .line 301
    aput-short v4, v2, v10

    .line 302
    .line 303
    aput-byte v1, v27, v10

    .line 304
    .line 305
    add-int/lit8 v10, v10, 0x1

    .line 306
    .line 307
    and-int v1, v10, v21

    .line 308
    .line 309
    const/16 v2, 0x1000

    .line 310
    .line 311
    if-nez v1, :cond_10

    .line 312
    .line 313
    if-ge v10, v2, :cond_10

    .line 314
    .line 315
    add-int/lit8 v1, v24, 0x1

    .line 316
    .line 317
    add-int v21, v21, v10

    .line 318
    .line 319
    move/from16 v24, v1

    .line 320
    .line 321
    :cond_10
    move/from16 v17, v25

    .line 322
    .line 323
    :goto_8
    if-lez v17, :cond_11

    .line 324
    .line 325
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 326
    .line 327
    add-int/lit8 v4, v18, 0x1

    .line 328
    .line 329
    iget-object v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pixelStack:[B

    .line 330
    .line 331
    add-int/lit8 v17, v17, -0x1

    .line 332
    .line 333
    aget-byte v2, v2, v17

    .line 334
    .line 335
    aput-byte v2, v1, v18

    .line 336
    .line 337
    add-int/lit8 v11, v11, 0x1

    .line 338
    .line 339
    move/from16 v18, v4

    .line 340
    .line 341
    const/16 v2, 0x1000

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_11
    move/from16 v1, v22

    .line 345
    .line 346
    move/from16 v2, v24

    .line 347
    .line 348
    move/from16 v4, v26

    .line 349
    .line 350
    goto/16 :goto_4

    .line 351
    .line 352
    :cond_12
    move/from16 v24, v2

    .line 353
    .line 354
    move/from16 v19, v4

    .line 355
    .line 356
    move/from16 v16, v5

    .line 357
    .line 358
    move/from16 v20, v10

    .line 359
    .line 360
    goto/16 :goto_6

    .line 361
    .line 362
    :cond_13
    :goto_9
    move/from16 v1, v18

    .line 363
    .line 364
    :goto_a
    if-ge v1, v3, :cond_14

    .line 365
    .line 366
    iget-object v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 367
    .line 368
    aput-byte v23, v2, v1

    .line 369
    .line 370
    add-int/lit8 v1, v1, 0x1

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_14
    return-void
.end method

.method private fillRect([ILcom/meishu/sdk/core/view/gif/GifFrame;I)V
    .locals 4

    .line 1
    iget v0, p2, Lcom/meishu/sdk/core/view/gif/GifFrame;->ih:I

    .line 2
    .line 3
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 4
    .line 5
    div-int/2addr v0, v1

    .line 6
    iget v2, p2, Lcom/meishu/sdk/core/view/gif/GifFrame;->iy:I

    .line 7
    .line 8
    div-int/2addr v2, v1

    .line 9
    iget v3, p2, Lcom/meishu/sdk/core/view/gif/GifFrame;->iw:I

    .line 10
    .line 11
    div-int/2addr v3, v1

    .line 12
    iget p2, p2, Lcom/meishu/sdk/core/view/gif/GifFrame;->ix:I

    .line 13
    .line 14
    div-int/2addr p2, v1

    .line 15
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 16
    .line 17
    mul-int/2addr v2, v1

    .line 18
    add-int/2addr v2, p2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    add-int/2addr v0, v2

    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    add-int p2, v2, v3

    .line 24
    .line 25
    move v1, v2

    .line 26
    :goto_1
    if-ge v1, p2, :cond_0

    .line 27
    .line 28
    aput p3, p1, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget p2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 34
    .line 35
    add-int/2addr v2, p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method private getHeaderParser()Lcom/meishu/sdk/core/view/gif/GifHeaderParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->parser:Lcom/meishu/sdk/core/view/gif/GifHeaderParser;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/meishu/sdk/core/view/gif/GifHeaderParser;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/GifHeaderParser;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->parser:Lcom/meishu/sdk/core/view/gif/GifHeaderParser;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->parser:Lcom/meishu/sdk/core/view/gif/GifHeaderParser;

    .line 13
    .line 14
    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 5
    .line 6
    iget v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 7
    .line 8
    iget v4, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledHeight:I

    .line 9
    .line 10
    invoke-interface {v2, v3, v4, v1}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0

    .line 23
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private readBlock()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->readByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->block:[B

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 13
    .line 14
    const/16 v3, 0xff

    .line 15
    .line 16
    invoke-interface {v2, v3}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->block:[B

    .line 21
    .line 22
    :cond_0
    iget v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferSize:I

    .line 23
    .line 24
    iget v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 25
    .line 26
    sub-int/2addr v2, v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-lt v2, v0, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 31
    .line 32
    iget-object v5, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->block:[B

    .line 33
    .line 34
    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 38
    .line 39
    add-int/2addr v2, v0

    .line 40
    iput v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 41
    .line 42
    return v0

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    add-int/2addr v3, v2

    .line 50
    if-lt v3, v0, :cond_2

    .line 51
    .line 52
    iget-object v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 53
    .line 54
    iget v5, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 55
    .line 56
    iget-object v6, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->block:[B

    .line 57
    .line 58
    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferSize:I

    .line 62
    .line 63
    iput v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->readChunkIfNeeded()V

    .line 66
    .line 67
    .line 68
    sub-int v3, v0, v2

    .line 69
    .line 70
    iget-object v5, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 71
    .line 72
    iget-object v6, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->block:[B

    .line 73
    .line 74
    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    iget v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 78
    .line 79
    add-int/2addr v2, v3

    .line 80
    iput v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 81
    .line 82
    return v0

    .line 83
    :cond_2
    iput v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    return v0

    .line 86
    :catch_0
    iput v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 87
    .line 88
    :cond_3
    return v0
.end method

.method private readByte()I
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->readChunkIfNeeded()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 5
    .line 6
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 11
    .line 12
    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    return v0

    .line 17
    :catch_0
    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private readChunkIfNeeded()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferSize:I

    .line 2
    .line 3
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 9
    .line 10
    const/16 v1, 0x4000

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferPosition:I

    .line 24
    .line 25
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBufferSize:I

    .line 36
    .line 37
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 40
    .line 41
    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private setPixels(Lcom/meishu/sdk/core/view/gif/GifFrame;Lcom/meishu/sdk/core/view/gif/GifFrame;)Landroid/graphics/Bitmap;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainScratch:[I

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-static {v3, v10}, Ljava/util/Arrays;->fill([II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v11, 0x3

    .line 16
    const/4 v12, 0x2

    .line 17
    const/4 v13, 0x1

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    iget v4, v2, Lcom/meishu/sdk/core/view/gif/GifFrame;->dispose:I

    .line 21
    .line 22
    if-lez v4, :cond_4

    .line 23
    .line 24
    if-ne v4, v12, :cond_5

    .line 25
    .line 26
    iget-boolean v4, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->transparency:Z

    .line 27
    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    iget-object v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 31
    .line 32
    iget v5, v4, Lcom/meishu/sdk/core/view/gif/GifHeader;->bgColor:I

    .line 33
    .line 34
    iget-object v6, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->lct:[I

    .line 35
    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    iget v4, v4, Lcom/meishu/sdk/core/view/gif/GifHeader;->bgIndex:I

    .line 39
    .line 40
    iget v6, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->transIndex:I

    .line 41
    .line 42
    if-ne v4, v6, :cond_3

    .line 43
    .line 44
    :cond_1
    :goto_0
    move v5, v10

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    iput-boolean v13, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    invoke-direct {v0, v3, v2, v5}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->fillRect([ILcom/meishu/sdk/core/view/gif/GifFrame;I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_2
    move-object v2, v3

    .line 57
    goto :goto_3

    .line 58
    :cond_5
    if-ne v4, v11, :cond_4

    .line 59
    .line 60
    iget-object v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 61
    .line 62
    if-nez v4, :cond_6

    .line 63
    .line 64
    invoke-direct {v0, v3, v2, v10}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->fillRect([ILcom/meishu/sdk/core/view/gif/GifFrame;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    iget v5, v2, Lcom/meishu/sdk/core/view/gif/GifFrame;->ih:I

    .line 69
    .line 70
    iget v6, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 71
    .line 72
    div-int v9, v5, v6

    .line 73
    .line 74
    iget v5, v2, Lcom/meishu/sdk/core/view/gif/GifFrame;->iy:I

    .line 75
    .line 76
    div-int v7, v5, v6

    .line 77
    .line 78
    iget v5, v2, Lcom/meishu/sdk/core/view/gif/GifFrame;->iw:I

    .line 79
    .line 80
    div-int v8, v5, v6

    .line 81
    .line 82
    iget v2, v2, Lcom/meishu/sdk/core/view/gif/GifFrame;->ix:I

    .line 83
    .line 84
    div-int v6, v2, v6

    .line 85
    .line 86
    iget v5, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 87
    .line 88
    mul-int v2, v7, v5

    .line 89
    .line 90
    add-int/2addr v2, v6

    .line 91
    move-object/from16 v17, v4

    .line 92
    .line 93
    move v4, v2

    .line 94
    move-object/from16 v2, v17

    .line 95
    .line 96
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->decodeBitmapData(Lcom/meishu/sdk/core/view/gif/GifFrame;)V

    .line 101
    .line 102
    .line 103
    iget v3, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->ih:I

    .line 104
    .line 105
    iget v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 106
    .line 107
    div-int/2addr v3, v4

    .line 108
    iget v5, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->iy:I

    .line 109
    .line 110
    div-int/2addr v5, v4

    .line 111
    iget v6, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->iw:I

    .line 112
    .line 113
    div-int/2addr v6, v4

    .line 114
    iget v7, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->ix:I

    .line 115
    .line 116
    div-int/2addr v7, v4

    .line 117
    iget v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 118
    .line 119
    if-nez v4, :cond_7

    .line 120
    .line 121
    move v4, v13

    .line 122
    goto :goto_4

    .line 123
    :cond_7
    move v4, v10

    .line 124
    :goto_4
    const/16 v8, 0x8

    .line 125
    .line 126
    move v9, v10

    .line 127
    move v14, v13

    .line 128
    :goto_5
    if-ge v10, v3, :cond_12

    .line 129
    .line 130
    iget-boolean v15, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->interlace:Z

    .line 131
    .line 132
    if-eqz v15, :cond_c

    .line 133
    .line 134
    if-lt v9, v3, :cond_b

    .line 135
    .line 136
    add-int/lit8 v14, v14, 0x1

    .line 137
    .line 138
    const/4 v15, 0x4

    .line 139
    if-eq v14, v12, :cond_a

    .line 140
    .line 141
    if-eq v14, v11, :cond_9

    .line 142
    .line 143
    if-eq v14, v15, :cond_8

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_8
    move v8, v12

    .line 147
    move v9, v13

    .line 148
    goto :goto_6

    .line 149
    :cond_9
    move v9, v12

    .line 150
    move v8, v15

    .line 151
    goto :goto_6

    .line 152
    :cond_a
    move v9, v15

    .line 153
    :cond_b
    :goto_6
    add-int v15, v9, v8

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_c
    move v15, v9

    .line 157
    move v9, v10

    .line 158
    :goto_7
    add-int/2addr v9, v5

    .line 159
    iget v11, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledHeight:I

    .line 160
    .line 161
    if-ge v9, v11, :cond_11

    .line 162
    .line 163
    iget v11, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 164
    .line 165
    mul-int/2addr v9, v11

    .line 166
    add-int v16, v9, v7

    .line 167
    .line 168
    add-int v12, v16, v6

    .line 169
    .line 170
    add-int/2addr v9, v11

    .line 171
    if-ge v9, v12, :cond_d

    .line 172
    .line 173
    move v12, v9

    .line 174
    :cond_d
    iget v9, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 175
    .line 176
    mul-int v11, v10, v9

    .line 177
    .line 178
    iget v13, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->iw:I

    .line 179
    .line 180
    mul-int/2addr v11, v13

    .line 181
    sub-int v13, v12, v16

    .line 182
    .line 183
    mul-int/2addr v13, v9

    .line 184
    add-int/2addr v13, v11

    .line 185
    move/from16 v9, v16

    .line 186
    .line 187
    :goto_8
    if-ge v9, v12, :cond_11

    .line 188
    .line 189
    move-object/from16 p2, v2

    .line 190
    .line 191
    iget v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 192
    .line 193
    move/from16 v16, v3

    .line 194
    .line 195
    const/4 v3, 0x1

    .line 196
    if-ne v2, v3, :cond_e

    .line 197
    .line 198
    iget-object v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 199
    .line 200
    aget-byte v2, v2, v11

    .line 201
    .line 202
    and-int/lit16 v2, v2, 0xff

    .line 203
    .line 204
    iget-object v3, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->act:[I

    .line 205
    .line 206
    aget v2, v3, v2

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_e
    iget v2, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->iw:I

    .line 210
    .line 211
    invoke-direct {v0, v11, v13, v2}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->averageColorsNear(III)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    :goto_9
    if-eqz v2, :cond_f

    .line 216
    .line 217
    aput v2, p2, v9

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_f
    iget-boolean v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 221
    .line 222
    if-nez v2, :cond_10

    .line 223
    .line 224
    if-eqz v4, :cond_10

    .line 225
    .line 226
    const/4 v3, 0x1

    .line 227
    iput-boolean v3, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 228
    .line 229
    :cond_10
    :goto_a
    iget v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 230
    .line 231
    add-int/2addr v11, v2

    .line 232
    add-int/lit8 v9, v9, 0x1

    .line 233
    .line 234
    move-object/from16 v2, p2

    .line 235
    .line 236
    move/from16 v3, v16

    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_11
    move-object/from16 p2, v2

    .line 240
    .line 241
    move/from16 v16, v3

    .line 242
    .line 243
    add-int/lit8 v10, v10, 0x1

    .line 244
    .line 245
    move-object/from16 v2, p2

    .line 246
    .line 247
    move v9, v15

    .line 248
    move/from16 v3, v16

    .line 249
    .line 250
    const/4 v11, 0x3

    .line 251
    const/4 v12, 0x2

    .line 252
    const/4 v13, 0x1

    .line 253
    goto :goto_5

    .line 254
    :cond_12
    move-object/from16 p2, v2

    .line 255
    .line 256
    iget-boolean v2, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->savePrevious:Z

    .line 257
    .line 258
    if-eqz v2, :cond_13

    .line 259
    .line 260
    iget v1, v1, Lcom/meishu/sdk/core/view/gif/GifFrame;->dispose:I

    .line 261
    .line 262
    if-eqz v1, :cond_14

    .line 263
    .line 264
    const/4 v3, 0x1

    .line 265
    if-ne v1, v3, :cond_13

    .line 266
    .line 267
    goto :goto_b

    .line 268
    :cond_13
    move-object/from16 v2, p2

    .line 269
    .line 270
    goto :goto_c

    .line 271
    :cond_14
    :goto_b
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 272
    .line 273
    if-nez v1, :cond_15

    .line 274
    .line 275
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iput-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 280
    .line 281
    :cond_15
    iget-object v1, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 282
    .line 283
    if-eqz v1, :cond_13

    .line 284
    .line 285
    iget v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 286
    .line 287
    iget v8, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledHeight:I

    .line 288
    .line 289
    const/4 v5, 0x0

    .line 290
    const/4 v6, 0x0

    .line 291
    const/4 v3, 0x0

    .line 292
    move v7, v4

    .line 293
    move-object/from16 v2, p2

    .line 294
    .line 295
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 296
    .line 297
    .line 298
    :goto_c
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-eqz v1, :cond_16

    .line 303
    .line 304
    iget v4, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 305
    .line 306
    iget v8, v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledHeight:I

    .line 307
    .line 308
    const/4 v5, 0x0

    .line 309
    const/4 v6, 0x0

    .line 310
    const/4 v3, 0x0

    .line 311
    move v7, v4

    .line 312
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 313
    .line 314
    .line 315
    :cond_16
    return-object v1
.end method


# virtual methods
.method public advance()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 2
    .line 3
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getFrameCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    sub-int/2addr v2, v3

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->loopIndex:I

    .line 20
    .line 21
    add-int/2addr v0, v3

    .line 22
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->loopIndex:I

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 25
    .line 26
    iget v2, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->loopCount:I

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    if-eq v2, v4, :cond_2

    .line 30
    .line 31
    iget v4, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->loopIndex:I

    .line 32
    .line 33
    if-le v4, v2, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 37
    .line 38
    add-int/2addr v1, v3

    .line 39
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 40
    .line 41
    rem-int/2addr v1, v0

    .line 42
    iput v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 43
    .line 44
    return v3
.end method

.method public clear()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 9
    .line 10
    invoke-interface {v2, v1}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainScratch:[I

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 18
    .line 19
    invoke-interface {v2, v1}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->release([I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 27
    .line 28
    invoke-interface {v2, v1}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->block:[B

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 43
    .line 44
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->workBuffer:[B

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method

.method public getByteSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainScratch:[I

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    mul-int/lit8 v1, v1, 0x4

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 2
    .line 3
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDelay(I)I
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 4
    .line 5
    iget v1, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 6
    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/view/gif/GifFrame;

    .line 16
    .line 17
    iget p1, p1, Lcom/meishu/sdk/core/view/gif/GifFrame;->delay:I

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 2
    .line 3
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 4
    .line 5
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 2
    .line 3
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->height:I

    .line 4
    .line 5
    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 2
    .line 3
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->loopCount:I

    .line 4
    .line 5
    return v0
.end method

.method public getLoopIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->loopIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 2
    .line 3
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getDelay(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 3
    .line 4
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 11
    .line 12
    if-gez v0, :cond_2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    :goto_0
    sget-object v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, "unable to decode frame, frameCount="

    .line 27
    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 33
    .line 34
    iget v3, v3, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, " framePointer="

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    iput v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 50
    .line 51
    :cond_2
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-eq v0, v2, :cond_9

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    if-ne v0, v4, :cond_3

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 62
    .line 63
    iget-object v4, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 64
    .line 65
    iget-object v4, v4, Lcom/meishu/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 66
    .line 67
    iget v5, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 68
    .line 69
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/meishu/sdk/core/view/gif/GifFrame;

    .line 74
    .line 75
    iget v5, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 76
    .line 77
    sub-int/2addr v5, v2

    .line 78
    if-ltz v5, :cond_4

    .line 79
    .line 80
    iget-object v6, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 81
    .line 82
    iget-object v6, v6, Lcom/meishu/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/meishu/sdk/core/view/gif/GifFrame;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move-object v5, v3

    .line 92
    :goto_1
    iget-object v6, v4, Lcom/meishu/sdk/core/view/gif/GifFrame;->lct:[I

    .line 93
    .line 94
    if-eqz v6, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    iget-object v6, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 98
    .line 99
    iget-object v6, v6, Lcom/meishu/sdk/core/view/gif/GifHeader;->gct:[I

    .line 100
    .line 101
    :goto_2
    iput-object v6, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->act:[I

    .line 102
    .line 103
    if-nez v6, :cond_7

    .line 104
    .line 105
    sget-object v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    const-string v0, "No Valid Color Table for frame #"

    .line 114
    .line 115
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :cond_6
    iput v2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    monitor-exit p0

    .line 127
    return-object v3

    .line 128
    :cond_7
    :try_start_1
    iget-boolean v1, v4, Lcom/meishu/sdk/core/view/gif/GifFrame;->transparency:Z

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pct:[I

    .line 133
    .line 134
    array-length v2, v6

    .line 135
    invoke-static {v6, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->pct:[I

    .line 139
    .line 140
    iput-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->act:[I

    .line 141
    .line 142
    iget v2, v4, Lcom/meishu/sdk/core/view/gif/GifFrame;->transIndex:I

    .line 143
    .line 144
    aput v0, v1, v2

    .line 145
    .line 146
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->setPixels(Lcom/meishu/sdk/core/view/gif/GifFrame;Lcom/meishu/sdk/core/view/gif/GifFrame;)Landroid/graphics/Bitmap;

    .line 147
    .line 148
    .line 149
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    monitor-exit p0

    .line 151
    return-object v0

    .line 152
    :cond_9
    :goto_3
    :try_start_2
    sget-object v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    const-string v0, "Unable to decode frame, status="

    .line 161
    .line 162
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    .line 171
    :cond_a
    monitor-exit p0

    .line 172
    return-object v3

    .line 173
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    throw v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 2
    .line 3
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifHeader;->width:I

    .line 4
    .line 5
    return v0
.end method

.method public declared-synchronized read(I[B)I
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getHeaderParser()Lcom/meishu/sdk/core/view/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meishu/sdk/core/view/gif/GifHeaderParser;->setData([B)Lcom/meishu/sdk/core/view/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifHeaderParser;->parseHeader()Lcom/meishu/sdk/core/view/gif/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->setData(Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    iget p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 6

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/16 v1, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 p2, p2, 0x1000

    goto :goto_0

    :cond_0
    move p2, v1

    .line 1
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    new-array p2, v1, [B

    :goto_1
    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, p2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->read(I[B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :cond_2
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    :catch_0
    :goto_2
    if-eqz p1, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    :catch_1
    :cond_3
    iget p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    return p1
.end method

.method public resetFrameIndex()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 3
    .line 4
    return-void
.end method

.method public resetLoopIndex()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->loopIndex:I

    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized setData(Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->setData(Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setData(Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 2

    monitor-enter p0

    if-lez p3, :cond_2

    .line 3
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->status:I

    .line 5
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->header:Lcom/meishu/sdk/core/view/gif/GifHeader;

    .line 6
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 8
    invoke-virtual {p0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->resetLoopIndex()V

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object p2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->savePrevious:Z

    .line 13
    iget-object p2, p1, Lcom/meishu/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/view/gif/GifFrame;

    .line 14
    iget v0, v0, Lcom/meishu/sdk/core/view/gif/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->savePrevious:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    iput p3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->sampleSize:I

    .line 17
    iget p2, p1, Lcom/meishu/sdk/core/view/gif/GifHeader;->width:I

    div-int v0, p2, p3

    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    .line 18
    iget p1, p1, Lcom/meishu/sdk/core/view/gif/GifHeader;->height:I

    div-int p3, p1, p3

    iput p3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledHeight:I

    .line 19
    iget-object p3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    mul-int/2addr p2, p1

    invoke-interface {p3, p2}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainPixels:[B

    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->bitmapProvider:Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;

    iget p2, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledWidth:I

    iget p3, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->downsampledHeight:I

    mul-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/view/gif/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->mainScratch:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 21
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setData(Lcom/meishu/sdk/core/view/gif/GifHeader;[B)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->setData(Lcom/meishu/sdk/core/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFrameIndex(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getFrameCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput p1, p0, Lcom/meishu/sdk/core/view/gif/GifDecoder;->framePointer:I

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method
