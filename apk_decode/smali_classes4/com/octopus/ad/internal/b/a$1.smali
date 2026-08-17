.class Lcom/octopus/ad/internal/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/octopus/ad/internal/b/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/a$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/internal/b/a$1;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v2, 0x138e4

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 21
    .line 22
    const-string v2, "80100 adParams is null"

    .line 23
    .line 24
    invoke-static {v0, v3, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/octopus/ad/internal/c/p;->a(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/a;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->h()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    iget-object v6, v1, Lcom/octopus/ad/internal/b/a$1;->a:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v7, 0x1

    .line 65
    invoke-static/range {v2 .. v7}, Lcom/octopus/ad/a/c$u;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lcom/octopus/ad/a/c$u;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-virtual {v9}, Lcom/octopus/ad/a/c$u;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    new-instance v8, Lcom/octopus/ad/internal/b/f;

    .line 74
    .line 75
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->q()Lcom/octopus/ad/internal/p;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/a;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-direct/range {v8 .. v13}, Lcom/octopus/ad/internal/b/f;-><init>(Lcom/octopus/ad/a/c$u;Lcom/octopus/ad/internal/d;Lcom/octopus/ad/internal/p;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 101
    .line 102
    invoke-virtual {v0, v8}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->b:Landroid/content/Context;

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v5, "isPreload_"

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v5, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 119
    .line 120
    invoke-static {v5}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v0, v4}, Lcom/octopus/ad/internal/c/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    const/4 v4, 0x2

    .line 140
    const/4 v5, 0x1

    .line 141
    const-string v6, "OctopusAd_Time"

    .line 142
    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->b:Landroid/content/Context;

    .line 146
    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v8, "adPreRsp_"

    .line 153
    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v10, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 158
    .line 159
    invoke-static {v10}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v10}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v0, v7}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-nez v7, :cond_2

    .line 183
    .line 184
    :try_start_0
    const-string v7, "@#&!"

    .line 185
    .line 186
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    aget-object v14, v0, v3

    .line 191
    .line 192
    aget-object v11, v0, v5

    .line 193
    .line 194
    aget-object v0, v0, v4

    .line 195
    .line 196
    iget-object v7, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 197
    .line 198
    invoke-static {v7}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-virtual {v7, v11}, Lcom/octopus/ad/internal/d;->e(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v7, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 206
    .line 207
    invoke-static {v7}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v12

    .line 215
    invoke-virtual {v7, v12, v13}, Lcom/octopus/ad/internal/d;->a(J)V

    .line 216
    .line 217
    .line 218
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->h()J

    .line 235
    .line 236
    .line 237
    move-result-wide v12

    .line 238
    const/4 v15, 0x0

    .line 239
    invoke-static/range {v10 .. v15}, Lcom/octopus/ad/a/c$u;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lcom/octopus/ad/a/c$u;

    .line 240
    .line 241
    .line 242
    move-result-object v16

    .line 243
    move-object/from16 v19, v11

    .line 244
    .line 245
    invoke-virtual/range {v16 .. v16}, Lcom/octopus/ad/a/c$u;->c()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v20

    .line 249
    new-instance v15, Lcom/octopus/ad/internal/b/f;

    .line 250
    .line 251
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 252
    .line 253
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 254
    .line 255
    .line 256
    move-result-object v17

    .line 257
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->q()Lcom/octopus/ad/internal/p;

    .line 264
    .line 265
    .line 266
    move-result-object v18

    .line 267
    invoke-direct/range {v15 .. v20}, Lcom/octopus/ad/internal/b/f;-><init>(Lcom/octopus/ad/a/c$u;Lcom/octopus/ad/internal/d;Lcom/octopus/ad/internal/p;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 271
    .line 272
    invoke-virtual {v0, v15}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->b:Landroid/content/Context;

    .line 276
    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v8, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 286
    .line 287
    invoke-static {v8}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    invoke-virtual {v8}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-static {v0, v7}, Lcom/octopus/ad/internal/c/o;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v7, "\u8d70\u7f13\u5b58\u521b\u5efaServerResponse\u8017\u65f6"

    .line 311
    .line 312
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 316
    .line 317
    .line 318
    move-result-wide v7

    .line 319
    iget-object v10, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 320
    .line 321
    invoke-static {v10}, Lcom/octopus/ad/internal/b/a;->c(Lcom/octopus/ad/internal/b/a;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v10

    .line 325
    sub-long/2addr v7, v10

    .line 326
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v6, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .line 335
    .line 336
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v8, "\u8fd4\u56de\u9519\u8bef\u7801:"

    .line 344
    .line 345
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v6, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 363
    .line 364
    invoke-static {v0, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;I)V

    .line 365
    .line 366
    .line 367
    goto :goto_0

    .line 368
    :cond_2
    const-string v0, "\u8fd4\u56de\u9519\u8bef\u7801"

    .line 369
    .line 370
    invoke-static {v6, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 374
    .line 375
    invoke-static {v0, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;I)V

    .line 376
    .line 377
    .line 378
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 379
    .line 380
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v0, v2, v3}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/d;Z)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 389
    .line 390
    .line 391
    move-result-object v8

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v2, "\u8bf7\u6c42\u53c2\u6570\u5c01\u88c5\u5b8c\u6210\uff0c\u8017\u65f6\uff1a"

    .line 398
    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 403
    .line 404
    .line 405
    move-result-wide v10

    .line 406
    iget-object v2, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 407
    .line 408
    invoke-static {v2}, Lcom/octopus/ad/internal/b/a;->c(Lcom/octopus/ad/internal/b/a;)J

    .line 409
    .line 410
    .line 411
    move-result-wide v12

    .line 412
    sub-long/2addr v10, v12

    .line 413
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v6, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    const-string v0, "\u5f00\u59cb\u8fde\u63a5\u670d\u52a1\u5668"

    .line 424
    .line 425
    invoke-static {v6, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 429
    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 431
    .line 432
    .line 433
    move-result-wide v6

    .line 434
    invoke-static {v0, v6, v7}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;J)J

    .line 435
    .line 436
    .line 437
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v0, v0, Lcom/octopus/ad/internal/q;->k:Ljava/util/ArrayList;

    .line 442
    .line 443
    if-nez v9, :cond_6

    .line 444
    .line 445
    if-eqz v0, :cond_6

    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-ge v2, v4, :cond_4

    .line 452
    .line 453
    goto :goto_2

    .line 454
    :cond_4
    iget-object v2, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 455
    .line 456
    invoke-static {v2, v5}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;Z)Z

    .line 457
    .line 458
    .line 459
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    invoke-direct {v10, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 466
    .line 467
    .line 468
    new-instance v11, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    :goto_1
    if-ge v3, v2, :cond_5

    .line 478
    .line 479
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    add-int/lit8 v3, v3, 0x1

    .line 484
    .line 485
    check-cast v4, Ljava/lang/String;

    .line 486
    .line 487
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    iget-object v6, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 492
    .line 493
    invoke-static {v6}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    invoke-virtual {v6}, Lcom/octopus/ad/internal/d;->l()Z

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    iget-object v7, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 502
    .line 503
    invoke-static {v7}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    invoke-virtual {v7}, Lcom/octopus/ad/internal/d;->m()Z

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    invoke-virtual {v5, v4, v6, v7}, Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v7

    .line 515
    iget-object v5, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 516
    .line 517
    iget-object v6, v1, Lcom/octopus/ad/internal/b/a$1;->b:Landroid/content/Context;

    .line 518
    .line 519
    invoke-static/range {v5 .. v11}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;Landroid/content/Context;Ljava/lang/String;[BZLjava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V

    .line 520
    .line 521
    .line 522
    goto :goto_1

    .line 523
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    .line 524
    .line 525
    new-instance v2, Lcom/octopus/ad/internal/b/a$1$1;

    .line 526
    .line 527
    invoke-direct {v2, v1, v10, v11}, Lcom/octopus/ad/internal/b/a$1$1;-><init>(Lcom/octopus/ad/internal/b/a$1;Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V

    .line 528
    .line 529
    .line 530
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 534
    .line 535
    .line 536
    goto :goto_3

    .line 537
    :cond_6
    :goto_2
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    iget-object v2, v2, Lcom/octopus/ad/internal/q;->j:Ljava/lang/String;

    .line 546
    .line 547
    iget-object v3, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 548
    .line 549
    invoke-static {v3}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    invoke-virtual {v3}, Lcom/octopus/ad/internal/d;->l()Z

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    iget-object v4, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 558
    .line 559
    invoke-static {v4}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-virtual {v4}, Lcom/octopus/ad/internal/d;->m()Z

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    invoke-virtual {v0, v2, v3, v4}, Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    iget-object v5, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 572
    .line 573
    iget-object v6, v1, Lcom/octopus/ad/internal/b/a$1;->b:Landroid/content/Context;

    .line 574
    .line 575
    const/4 v10, 0x0

    .line 576
    const/4 v11, 0x0

    .line 577
    invoke-static/range {v5 .. v11}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;Landroid/content/Context;Ljava/lang/String;[BZLjava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V

    .line 578
    .line 579
    .line 580
    :goto_3
    return-void
.end method
