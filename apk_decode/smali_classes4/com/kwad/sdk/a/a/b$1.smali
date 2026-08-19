.class final Lcom/kwad/sdk/a/a/b$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/a/a/b;->a(Lcom/kwad/sdk/a/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aGY:Lcom/kwad/sdk/a/a/b$a;

.field final synthetic aGZ:Lcom/kwad/sdk/a/a/b;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/a/a/b;Lcom/kwad/sdk/a/a/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 12

    .line 1
    const-string v0, "InstallTipsDataManager"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kwad/sdk/a/a/b;->a(Lcom/kwad/sdk/a/a/b;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/a/a/a/b;->dV()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/kwad/sdk/a/a/b;->b(Lcom/kwad/sdk/a/a/b;)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    const/4 v3, 0x0

    .line 33
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    const-string v4, "getCanShowDownloadData mDownloadFile is not exists"

    .line 40
    .line 41
    invoke-static {v0, v4}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_9

    .line 47
    .line 48
    :catch_0
    move-exception v1

    .line 49
    move-object v4, v3

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 53
    .line 54
    invoke-static {v4}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->clear()V

    .line 59
    .line 60
    .line 61
    new-instance v4, Ljava/io/ObjectInputStream;

    .line 62
    .line 63
    new-instance v5, Ljava/io/FileInputStream;

    .line 64
    .line 65
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_2
    iget-object v5, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Ljava/util/Stack;

    .line 78
    .line 79
    invoke-static {v5, v6}, Lcom/kwad/sdk/a/a/b;->a(Lcom/kwad/sdk/a/a/b;Ljava/util/Stack;)Ljava/util/Stack;

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 83
    .line 84
    invoke-static {v5}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_6

    .line 93
    .line 94
    new-instance v5, Ljava/util/Stack;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 100
    .line 101
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_5

    .line 110
    .line 111
    iget-object v6, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 112
    .line 113
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 122
    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/e;->eY(Lcom/kwad/sdk/core/response/model/AdTemplate;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->bt(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-eqz v8, :cond_4

    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_4

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 146
    .line 147
    .line 148
    move-result-wide v8

    .line 149
    const-wide/32 v10, 0x240c8400

    .line 150
    .line 151
    .line 152
    add-long/2addr v8, v10

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 154
    .line 155
    .line 156
    move-result-wide v10

    .line 157
    cmp-long v8, v8, v10

    .line 158
    .line 159
    if-lez v8, :cond_4

    .line 160
    .line 161
    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catchall_1
    move-exception v0

    .line 166
    move-object v3, v4

    .line 167
    goto/16 :goto_9

    .line 168
    .line 169
    :catch_1
    move-exception v1

    .line 170
    goto :goto_3

    .line 171
    :cond_4
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_6

    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 188
    .line 189
    iget-object v6, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 190
    .line 191
    invoke-static {v6}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    :try_start_3
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :catchall_2
    move-exception v0

    .line 204
    goto :goto_a

    .line 205
    :goto_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v6, " getCanShowDownloadBannerData e"

    .line 208
    .line 209
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 223
    .line 224
    if-eqz v0, :cond_6

    .line 225
    .line 226
    invoke-interface {v0}, Lcom/kwad/sdk/a/a/b$a;->Hk()V

    .line 227
    .line 228
    .line 229
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 230
    .line 231
    .line 232
    :try_start_5
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 233
    .line 234
    .line 235
    goto :goto_7

    .line 236
    :goto_4
    :try_start_6
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 237
    .line 238
    new-instance v1, Ljava/io/FileOutputStream;

    .line 239
    .line 240
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 244
    .line 245
    .line 246
    :try_start_7
    iget-object v1, p0, Lcom/kwad/sdk/a/a/b$1;->aGZ:Lcom/kwad/sdk/a/a/b;

    .line 247
    .line 248
    invoke-static {v1}, Lcom/kwad/sdk/a/a/b;->c(Lcom/kwad/sdk/a/a/b;)Ljava/util/Stack;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 253
    .line 254
    .line 255
    :try_start_8
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :catchall_3
    move-exception v1

    .line 260
    move-object v3, v0

    .line 261
    goto :goto_8

    .line 262
    :catch_2
    move-exception v1

    .line 263
    move-object v3, v0

    .line 264
    goto :goto_5

    .line 265
    :catchall_4
    move-exception v1

    .line 266
    goto :goto_8

    .line 267
    :catch_3
    move-exception v1

    .line 268
    :goto_5
    :try_start_9
    invoke-static {v1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v1}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 275
    .line 276
    if-eqz v0, :cond_7

    .line 277
    .line 278
    invoke-interface {v0}, Lcom/kwad/sdk/a/a/b$a;->Hk()V

    .line 279
    .line 280
    .line 281
    invoke-static {v4}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 282
    .line 283
    .line 284
    :try_start_a
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_7
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    .line 290
    .line 291
    :goto_6
    iget-object v0, p0, Lcom/kwad/sdk/a/a/b$1;->aGY:Lcom/kwad/sdk/a/a/b$a;

    .line 292
    .line 293
    if-eqz v0, :cond_8

    .line 294
    .line 295
    invoke-interface {v0}, Lcom/kwad/sdk/a/a/b$a;->hK()V

    .line 296
    .line 297
    .line 298
    :cond_8
    :goto_7
    return-void

    .line 299
    :goto_8
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 300
    .line 301
    .line 302
    throw v1

    .line 303
    :goto_9
    invoke-static {v3}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 304
    .line 305
    .line 306
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 307
    :goto_a
    invoke-static {v0}, Lcom/kwad/components/core/d/a;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 308
    .line 309
    .line 310
    return-void
.end method
