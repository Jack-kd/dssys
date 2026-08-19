.class public final Lcom/kwad/framework/filedownloader/download/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/c$a;
    }
.end annotation


# instance fields
.field private final aAO:I

.field private final aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

.field private final aBL:Lcom/kwad/framework/filedownloader/download/f;

.field private aBM:Lcom/kwad/framework/filedownloader/download/e;

.field final aBN:I

.field private final aBl:Z

.field private final apn:Ljava/lang/String;

.field private volatile nJ:Z


# direct methods
.method private constructor <init>(IILcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/download/f;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 4
    iput p2, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z

    .line 6
    iput-object p4, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 7
    iput-object p6, p0, Lcom/kwad/framework/filedownloader/download/c;->apn:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 9
    iput-boolean p5, p0, Lcom/kwad/framework/filedownloader/download/c;->aBl:Z

    return-void
.end method

.method public synthetic constructor <init>(IILcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/download/f;ZLjava/lang/String;B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/kwad/framework/filedownloader/download/c;-><init>(IILcom/kwad/framework/filedownloader/download/ConnectTask;Lcom/kwad/framework/filedownloader/download/f;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Bw()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/download/c;->pause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/e;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 12

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BY()Lcom/kwad/framework/filedownloader/download/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-wide v0, v0, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    if-eqz v2, :cond_a

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BV()Lcom/kwad/framework/filedownloader/a/b;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->getResponseCode()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sget-boolean v5, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    const-string v5, "the connection[%d] for %d, is connected %s with requestHttpCode[%d]"

    .line 43
    .line 44
    iget v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget v7, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 51
    .line 52
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    iget-object v8, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 57
    .line 58
    invoke-virtual {v8}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BY()Lcom/kwad/framework/filedownloader/download/a;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {p0, v5, v6}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto/16 :goto_9

    .line 76
    .line 77
    :catch_0
    move-exception v4

    .line 78
    :goto_1
    move v5, v3

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :catch_1
    move-exception v4

    .line 82
    goto :goto_1

    .line 83
    :catch_2
    move-exception v4

    .line 84
    goto :goto_1

    .line 85
    :catch_3
    move-exception v4

    .line 86
    goto :goto_1

    .line 87
    :catch_4
    move-exception v4

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    :goto_2
    const/16 v5, 0xce

    .line 90
    .line 91
    if-eq v4, v5, :cond_3

    .line 92
    .line 93
    const/16 v5, 0xc8

    .line 94
    .line 95
    if-ne v4, v5, :cond_2

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_2
    new-instance v5, Ljava/net/SocketException;

    .line 99
    .line 100
    const-string v6, "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."

    .line 101
    .line 102
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 103
    .line 104
    invoke-virtual {v7}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->getRequestHeader()Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BP()Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget v9, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 117
    .line 118
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    iget v10, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    .line 123
    .line 124
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    filled-new-array {v7, v8, v4, v9, v10}, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v6, v4}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-direct {v5, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v5
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_3
    :goto_3
    const/4 v4, 0x1

    .line 141
    :try_start_2
    new-instance v5, Lcom/kwad/framework/filedownloader/download/e$a;

    .line 142
    .line 143
    invoke-direct {v5}, Lcom/kwad/framework/filedownloader/download/e$a;-><init>()V

    .line 144
    .line 145
    .line 146
    iget-boolean v6, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    if-eqz v6, :cond_4

    .line 149
    .line 150
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    :try_start_3
    iget v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aAO:I

    .line 155
    .line 156
    invoke-virtual {v5, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->cO(I)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    iget v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBN:I

    .line 161
    .line 162
    invoke-virtual {v5, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->cN(I)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->b(Lcom/kwad/framework/filedownloader/download/f;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5, p0}, Lcom/kwad/framework/filedownloader/download/e$a;->a(Lcom/kwad/framework/filedownloader/download/c;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    iget-boolean v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBl:Z

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->bx(Z)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5, v2}, Lcom/kwad/framework/filedownloader/download/e$a;->d(Lcom/kwad/framework/filedownloader/a/b;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBK:Lcom/kwad/framework/filedownloader/download/ConnectTask;

    .line 187
    .line 188
    invoke-virtual {v6}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->BY()Lcom/kwad/framework/filedownloader/download/a;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v5, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->c(Lcom/kwad/framework/filedownloader/download/a;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->apn:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Lcom/kwad/framework/filedownloader/download/e$a;->ce(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/download/e$a;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/download/e$a;->CE()Lcom/kwad/framework/filedownloader/download/e;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    iput-object v5, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 207
    .line 208
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/download/e;->run()V

    .line 209
    .line 210
    .line 211
    iget-boolean v5, p0, Lcom/kwad/framework/filedownloader/download/c;->nJ:Z

    .line 212
    .line 213
    if-eqz v5, :cond_5

    .line 214
    .line 215
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 216
    .line 217
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/download/e;->pause()V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/kwad/framework/filedownloader/exception/FileDownloadGiveUpRetryException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :catch_5
    move-exception v5

    .line 222
    :goto_4
    move-object v11, v5

    .line 223
    move v5, v4

    .line 224
    move-object v4, v11

    .line 225
    goto :goto_6

    .line 226
    :catch_6
    move-exception v5

    .line 227
    goto :goto_4

    .line 228
    :catch_7
    move-exception v5

    .line 229
    goto :goto_4

    .line 230
    :catch_8
    move-exception v5

    .line 231
    goto :goto_4

    .line 232
    :catch_9
    move-exception v5

    .line 233
    goto :goto_4

    .line 234
    :cond_5
    :goto_5
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :goto_6
    :try_start_4
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 239
    .line 240
    invoke-interface {v6, v4}, Lcom/kwad/framework/filedownloader/download/f;->a(Ljava/lang/Exception;)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_9

    .line 245
    .line 246
    if-nez v5, :cond_6

    .line 247
    .line 248
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 249
    .line 250
    const-wide/16 v7, 0x0

    .line 251
    .line 252
    invoke-interface {v6, v4, v7, v8}, Lcom/kwad/framework/filedownloader/download/f;->a(Ljava/lang/Exception;J)V

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_6
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/download/c;->aBM:Lcom/kwad/framework/filedownloader/download/e;

    .line 257
    .line 258
    if-eqz v6, :cond_8

    .line 259
    .line 260
    iget-wide v6, v6, Lcom/kwad/framework/filedownloader/download/e;->aAX:J

    .line 261
    .line 262
    sub-long/2addr v6, v0

    .line 263
    iget-object v8, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 264
    .line 265
    invoke-interface {v8, v4, v6, v7}, Lcom/kwad/framework/filedownloader/download/f;->a(Ljava/lang/Exception;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    .line 267
    .line 268
    :goto_7
    if-eqz v2, :cond_7

    .line 269
    .line 270
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 271
    .line 272
    .line 273
    :cond_7
    move v4, v5

    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_8
    :try_start_5
    const-string v0, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"

    .line 277
    .line 278
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 286
    .line 287
    invoke-interface {v0, v4}, Lcom/kwad/framework/filedownloader/download/f;->b(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    .line 289
    .line 290
    if-eqz v2, :cond_a

    .line 291
    .line 292
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_9
    :try_start_6
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/c;->aBL:Lcom/kwad/framework/filedownloader/download/f;

    .line 297
    .line 298
    invoke-interface {v0, v4}, Lcom/kwad/framework/filedownloader/download/f;->b(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 299
    .line 300
    .line 301
    if-eqz v2, :cond_a

    .line 302
    .line 303
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 304
    .line 305
    .line 306
    :cond_a
    :goto_8
    return-void

    .line 307
    :goto_9
    if-eqz v2, :cond_b

    .line 308
    .line 309
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 310
    .line 311
    .line 312
    :cond_b
    throw v0
.end method
