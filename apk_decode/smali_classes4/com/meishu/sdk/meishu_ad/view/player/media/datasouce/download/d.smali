.class public Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/RandomAccessFile;

.field public final synthetic f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;JLjava/lang/String;Ljava/lang/Object;Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->b:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->e:Ljava/io/RandomAccessFile;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-string p1, "c"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onResponse code:"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0x194

    .line 32
    .line 33
    if-eq p1, v0, :cond_9

    .line 34
    .line 35
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/16 v0, 0x1f4

    .line 40
    .line 41
    if-lt p1, v0, :cond_0

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 46
    .line 47
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a:Ljava/io/InputStream;

    .line 56
    .line 57
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v0, 0x0

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string v1, "Accept-Ranges"

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "Content-Range"

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v2, "bytes"

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    :goto_1
    move p1, v0

    .line 104
    :goto_2
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    .line 109
    .line 110
    .line 111
    move-result-wide v1

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    iget-wide v3, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->b:J

    .line 115
    .line 116
    add-long/2addr v1, v3

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    const-string p2, "c"

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v4, "service don`t support range. "

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->c:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {p2, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v3, 0x0

    .line 143
    .line 144
    :goto_3
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 145
    .line 146
    if-eqz p2, :cond_5

    .line 147
    .line 148
    check-cast p2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 149
    .line 150
    iget-object v5, p2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 151
    .line 152
    invoke-static {v5, p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->a(Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;Z)Z

    .line 153
    .line 154
    .line 155
    iget-object v5, p2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 156
    .line 157
    iput-wide v1, v5, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->g:J

    .line 158
    .line 159
    iget-object p2, p2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 160
    .line 161
    iget-object p2, p2, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 162
    .line 163
    if-eqz p2, :cond_5

    .line 164
    .line 165
    invoke-interface {p2, v1, v2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a(J)V

    .line 166
    .line 167
    .line 168
    :cond_5
    const/16 p2, 0x2000

    .line 169
    .line 170
    new-array v5, p2, [B

    .line 171
    .line 172
    move v6, v0

    .line 173
    :cond_6
    :goto_4
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 174
    .line 175
    iget-object v7, v7, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a:Ljava/io/InputStream;

    .line 176
    .line 177
    invoke-virtual {v7, v5, v0, p2}, Ljava/io/InputStream;->read([BII)I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    const/4 v8, -0x1

    .line 182
    if-eq v7, v8, :cond_7

    .line 183
    .line 184
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->d:Ljava/lang/Object;

    .line 185
    .line 186
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->e:Ljava/io/RandomAccessFile;

    .line 188
    .line 189
    invoke-virtual {v9, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    .line 191
    .line 192
    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->e:Ljava/io/RandomAccessFile;

    .line 193
    .line 194
    invoke-virtual {v9, v5, v0, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 195
    .line 196
    .line 197
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    int-to-long v7, v7

    .line 199
    add-long/2addr v3, v7

    .line 200
    :try_start_2
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 201
    .line 202
    if-eqz v7, :cond_6

    .line 203
    .line 204
    int-to-long v8, v6

    .line 205
    const-wide/16 v10, 0x4000

    .line 206
    .line 207
    mul-long/2addr v8, v10

    .line 208
    cmp-long v8, v3, v8

    .line 209
    .line 210
    if-ltz v8, :cond_6

    .line 211
    .line 212
    add-int/lit8 v6, v6, 0x1

    .line 213
    .line 214
    long-to-double v8, v3

    .line 215
    long-to-double v10, v1

    .line 216
    div-double/2addr v8, v10

    .line 217
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 218
    .line 219
    mul-double/2addr v8, v10

    .line 220
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 221
    .line 222
    .line 223
    move-result-wide v8

    .line 224
    double-to-int v8, v8

    .line 225
    check-cast v7, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 226
    .line 227
    iget-object v7, v7, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 228
    .line 229
    iget-object v7, v7, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 230
    .line 231
    if-eqz v7, :cond_6

    .line 232
    .line 233
    invoke-interface {v7, v3, v4, v8}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :catchall_1
    move-exception p1

    .line 238
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    :try_start_4
    throw p1

    .line 240
    :cond_7
    const-string p2, "c"

    .line 241
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v1, "download finish. isSupportRange:"

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string p1, "  rangeStart:"

    .line 256
    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-wide v1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->b:J

    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p1, " location:"

    .line 266
    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 281
    .line 282
    if-eqz p1, :cond_b

    .line 283
    .line 284
    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 285
    .line 286
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 287
    .line 288
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 289
    .line 290
    if-eqz p1, :cond_8

    .line 291
    .line 292
    const/16 p2, 0x64

    .line 293
    .line 294
    invoke-interface {p1, v3, v4, p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->a(JI)V

    .line 295
    .line 296
    .line 297
    :cond_8
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 298
    .line 299
    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 300
    .line 301
    iget-object p2, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 302
    .line 303
    invoke-virtual {p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->close()V

    .line 304
    .line 305
    .line 306
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;

    .line 307
    .line 308
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c;->j:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;

    .line 309
    .line 310
    if-eqz p1, :cond_b

    .line 311
    .line 312
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/f;->b()V

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_9
    :goto_5
    const-string p1, "c"

    .line 317
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v1, "onResponse error code:"

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 343
    .line 344
    if-eqz p1, :cond_a

    .line 345
    .line 346
    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    .line 350
    .line 351
    :cond_a
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 352
    .line 353
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a()V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :goto_6
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    .line 359
    .line 360
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->a:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b$a;

    .line 361
    .line 362
    if-eqz p1, :cond_b

    .line 363
    .line 364
    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;

    .line 365
    .line 366
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$a;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 367
    .line 368
    .line 369
    goto :goto_7

    .line 370
    :catchall_2
    move-exception p1

    .line 371
    goto :goto_8

    .line 372
    :cond_b
    :goto_7
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a()V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :goto_8
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/d;->f:Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;

    .line 379
    .line 380
    invoke-virtual {p2}, Lcom/meishu/sdk/meishu_ad/view/player/media/datasouce/download/c$b;->a()V

    .line 381
    .line 382
    .line 383
    throw p1
.end method
