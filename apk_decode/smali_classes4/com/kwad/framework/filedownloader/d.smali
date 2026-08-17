.class public final Lcom/kwad/framework/filedownloader/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/a$c;
.implements Lcom/kwad/framework/filedownloader/x;
.implements Lcom/kwad/framework/filedownloader/x$a;
.implements Lcom/kwad/framework/filedownloader/x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/d$a;
    }
.end annotation


# instance fields
.field private azA:J

.field private azB:I

.field private azC:Z

.field private azD:Z

.field private azE:Ljava/lang/String;

.field private azF:Z

.field private final azo:Ljava/lang/Object;

.field private azs:Lcom/kwad/framework/filedownloader/t;

.field private final azt:Lcom/kwad/framework/filedownloader/d$a;

.field private volatile azu:B

.field private volatile azv:J

.field private azw:Ljava/lang/Throwable;

.field private final azx:Lcom/kwad/framework/filedownloader/s$b;

.field private final azy:Lcom/kwad/framework/filedownloader/s$a;

.field private azz:J


# direct methods
.method public constructor <init>(Lcom/kwad/framework/filedownloader/d$a;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-byte v0, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azw:Ljava/lang/Throwable;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/d;->azF:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/d;->azo:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 15
    .line 16
    new-instance p2, Lcom/kwad/framework/filedownloader/b;

    .line 17
    .line 18
    invoke-direct {p2}, Lcom/kwad/framework/filedownloader/b;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/d;->azy:Lcom/kwad/framework/filedownloader/s$a;

    .line 24
    .line 25
    new-instance p2, Lcom/kwad/framework/filedownloader/k;

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1, p0}, Lcom/kwad/framework/filedownloader/k;-><init>(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 35
    .line 36
    return-void
.end method

.method private b(B)V
    .locals 2

    .line 13
    iput-byte p1, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azv:J

    return-void
.end method

.method private e(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->AN()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput-boolean v2, p0, Lcom/kwad/framework/filedownloader/d;->azC:Z

    .line 23
    .line 24
    const/4 v2, -0x4

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v1, v2, :cond_9

    .line 27
    .line 28
    const/4 v2, -0x3

    .line 29
    if-eq v1, v2, :cond_8

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    if-eq v1, v2, :cond_7

    .line 33
    .line 34
    if-eq v1, v3, :cond_6

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    if-eq v1, v2, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x3

    .line 40
    if-eq v1, v0, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x5

    .line 43
    if-eq v1, v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x6

    .line 46
    if-eq v1, v0, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/t;->g(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CP()Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azw:Ljava/lang/Throwable;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->AL()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/kwad/framework/filedownloader/d;->azB:I

    .line 72
    .line 73
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 74
    .line 75
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/s$b;->reset()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/t;->k(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 89
    .line 90
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-interface {v0, v1, v2}, Lcom/kwad/framework/filedownloader/s$b;->aa(J)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 100
    .line 101
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/t;->i(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    iput-wide v1, p0, Lcom/kwad/framework/filedownloader/d;->azA:J

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CC()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iput-boolean v1, p0, Lcom/kwad/framework/filedownloader/d;->azD:Z

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getEtag()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azE:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->getFileName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getFilename()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getFilename()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v2, "already has mFilename[%s], but assign mFilename[%s] again"

    .line 144
    .line 145
    invoke-static {p0, v2, v0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 149
    .line 150
    invoke-interface {v0, v1}, Lcom/kwad/framework/filedownloader/d$a;->setFileName(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 154
    .line 155
    iget-wide v1, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 156
    .line 157
    invoke-interface {v0, v1, v2}, Lcom/kwad/framework/filedownloader/s$b;->start(J)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 161
    .line 162
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/t;->h(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_6
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azA:J

    .line 177
    .line 178
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 179
    .line 180
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/t;->f(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CP()Ljava/lang/Throwable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azw:Ljava/lang/Throwable;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 191
    .line 192
    .line 193
    move-result-wide v0

    .line 194
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 195
    .line 196
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 201
    .line 202
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1, p1}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_8
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CN()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/d;->azF:Z

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 217
    .line 218
    .line 219
    move-result-wide v0

    .line 220
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azA:J

    .line 227
    .line 228
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 233
    .line 234
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1, p1}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_9
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 243
    .line 244
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/s$b;->reset()V

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/h;->cr(I)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-gt v1, v3, :cond_a

    .line 260
    .line 261
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AB()Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_a

    .line 266
    .line 267
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getUrl()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getTargetFilePath()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-static {v4, v5}, Lcom/kwad/framework/filedownloader/f/f;->D(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    invoke-virtual {v2, v4}, Lcom/kwad/framework/filedownloader/h;->cr(I)I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    goto :goto_0

    .line 288
    :cond_a
    const/4 v2, 0x0

    .line 289
    :goto_0
    add-int/2addr v1, v2

    .line 290
    if-gt v1, v3, :cond_b

    .line 291
    .line 292
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/n;->cw(I)B

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const-string v2, "warn, but no mListener to receive, switch to pending %d %d"

    .line 321
    .line 322
    invoke-static {p0, v2, v0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/d/d;->cY(I)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_b

    .line 330
    .line 331
    invoke-direct {p0, v3}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CM()J

    .line 335
    .line 336
    .line 337
    move-result-wide v0

    .line 338
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azA:J

    .line 339
    .line 340
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot;->CO()J

    .line 341
    .line 342
    .line 343
    move-result-wide v0

    .line 344
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 345
    .line 346
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 347
    .line 348
    invoke-interface {v2, v0, v1}, Lcom/kwad/framework/filedownloader/s$b;->start(J)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 352
    .line 353
    check-cast p1, Lcom/kwad/framework/filedownloader/message/MessageSnapshot$a;

    .line 354
    .line 355
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/MessageSnapshot$a;->CQ()Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/t;->f(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_b
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 368
    .line 369
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v0, v1, p1}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z

    .line 374
    .line 375
    .line 376
    return-void
.end method

.method private getId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/f/f;->ck(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lcom/kwad/framework/filedownloader/a;->bT(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a;

    .line 26
    .line 27
    .line 28
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "save Path is null to %s"

    .line 41
    .line 42
    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AB()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Ljava/io/File;

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/f/f;->co(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    new-instance v0, Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v1, v0

    .line 77
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    .line 107
    .line 108
    invoke-static {v2, v1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_3
    :goto_1
    return-void

    .line 117
    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    .line 118
    .line 119
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v2, "the provided mPath[%s] is invalid, can\'t find its directory"

    .line 128
    .line 129
    invoke-static {v2, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {v1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1
.end method


# virtual methods
.method public final AH()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 2
    .line 3
    return v0
.end method

.method public final AJ()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azw:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final AL()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/d;->azB:I

    .line 2
    .line 3
    return v0
.end method

.method public final AN()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/framework/filedownloader/d;->azC:Z

    .line 2
    .line 3
    return v0
.end method

.method public final AY()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "filedownloader:lifecycle:over %s by %d "

    .line 22
    .line 23
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Lcom/kwad/framework/filedownloader/s$b;->end(J)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Be()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Be()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_0
    if-ge v2, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {}, Lcom/kwad/framework/filedownloader/r;->BG()Lcom/kwad/framework/filedownloader/r;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/r;->BK()Lcom/kwad/framework/filedownloader/v;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 75
    .line 76
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Lcom/kwad/framework/filedownloader/v;->e(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final Bf()Lcom/kwad/framework/filedownloader/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Bg()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azo:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-byte v1, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-byte v3, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p0, v1, v2}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/16 v1, 0xa

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 38
    .line 39
    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-boolean v2, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    const-string v2, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->getUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->AC()Lcom/kwad/framework/filedownloader/i;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    filled-new-array {v3, v4, v5, v1}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/kwad/framework/filedownloader/q;->BE()Lcom/kwad/framework/filedownloader/q;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0}, Lcom/kwad/framework/filedownloader/q;->a(Lcom/kwad/framework/filedownloader/x$b;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_1
    move-exception v1

    .line 92
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Lcom/kwad/framework/filedownloader/h;->b(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p0, v1}, Lcom/kwad/framework/filedownloader/d;->n(Ljava/lang/Throwable;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v2, v0, v1}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z

    .line 108
    .line 109
    .line 110
    :goto_0
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    const-string v0, "the task[%d] has been into the launch pool."

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    return-void

    .line 132
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    throw v1
.end method

.method public final Bh()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final a(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lcom/kwad/framework/filedownloader/d/d;->x(II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-byte p1, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "can\'t update mStatus change by keep ahead, %d, but the current mStatus is %d, %d"

    .line 46
    .line 47
    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 p1, 0x0

    .line 51
    return p1

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/d;->e(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    return p1
.end method

.method public final b(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne v2, v0, :cond_1

    .line 3
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/d/d;->cY(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string v0, "High concurrent cause, callback pending, but has already be paused %d"

    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v3

    .line 7
    :cond_1
    invoke-static {v0, v1}, Lcom/kwad/framework/filedownloader/d/d;->y(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-boolean p1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz p1, :cond_2

    .line 9
    iget-byte p1, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 10
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 11
    const-string v0, "can\'t update mStatus change by keep flow, %d, but the current mStatus is %d, %d"

    invoke-static {p0, v0, p1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 12
    :cond_3
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/d;->e(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    return v3
.end method

.method public final c(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/d/d;->f(Lcom/kwad/framework/filedownloader/a;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/d;->e(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final d(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AB()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/message/c;->AH()B

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, -0x4

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x2

    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/d;->e(Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_2
    :goto_0
    return v1
.end method

.method public final free()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-byte v1, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "free the task %d, when the status is %d"

    .line 24
    .line 25
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final getSpeed()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azy:Lcom/kwad/framework/filedownloader/s$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/s$a;->getSpeed()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getStatusUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azv:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTotalBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/d;->azA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final n(Ljava/lang/Throwable;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/d;->azw:Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->Bh()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v0, v1, v2, p1}, Lcom/kwad/framework/filedownloader/message/f;->a(IJLjava/lang/Throwable;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final onBegin()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "filedownloader:lifecycle:start %s by %d "

    .line 22
    .line 23
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final pause()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/d/d;->cX(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/kwad/framework/filedownloader/d;->AH()B

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "High concurrent cause, Already is over, can\'t pause again, %d %d"

    .line 46
    .line 47
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    return v0

    .line 52
    :cond_1
    const/4 v0, -0x2

    .line 53
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {}, Lcom/kwad/framework/filedownloader/q;->BE()Lcom/kwad/framework/filedownloader/q;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, p0}, Lcom/kwad/framework/filedownloader/q;->b(Lcom/kwad/framework/filedownloader/x$b;)V

    .line 71
    .line 72
    .line 73
    sget-boolean v2, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "the task[%d] has been expired from the launch pool."

    .line 90
    .line 91
    invoke-static {p0, v3, v2}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-static {}, Lcom/kwad/framework/filedownloader/r;->BG()Lcom/kwad/framework/filedownloader/r;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/kwad/framework/filedownloader/r;->BI()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    sget-boolean v2, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 104
    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "request pause the task[%d] to the download service, but the download service isn\'t connected yet."

    .line 120
    .line 121
    invoke-static {p0, v3, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v2, v3}, Lcom/kwad/framework/filedownloader/n;->cv(I)Z

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, v0}, Lcom/kwad/framework/filedownloader/h;->b(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/message/f;->e(Lcom/kwad/framework/filedownloader/a;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v2, v0, v1}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lcom/kwad/framework/filedownloader/r;->BG()Lcom/kwad/framework/filedownloader/r;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/r;->BK()Lcom/kwad/framework/filedownloader/v;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v1, v0}, Lcom/kwad/framework/filedownloader/v;->e(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 163
    .line 164
    .line 165
    const/4 v0, 0x1

    .line 166
    return v0
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azw:Ljava/lang/Throwable;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azE:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/d;->azD:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/kwad/framework/filedownloader/d;->azB:I

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/d;->azF:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/kwad/framework/filedownloader/d;->azC:Z

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/kwad/framework/filedownloader/d;->azz:J

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/kwad/framework/filedownloader/d;->azA:J

    .line 20
    .line 21
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azx:Lcom/kwad/framework/filedownloader/s$b;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/s$b;->reset()V

    .line 24
    .line 25
    .line 26
    iget-byte v1, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 27
    .line 28
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/d/d;->cX(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 35
    .line 36
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/t;->Bw()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/kwad/framework/filedownloader/k;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 42
    .line 43
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2, p0}, Lcom/kwad/framework/filedownloader/k;-><init>(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azs:Lcom/kwad/framework/filedownloader/t;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 56
    .line 57
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2, p0}, Lcom/kwad/framework/filedownloader/t;->b(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/a$c;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final start()V
    .locals 14

    .line 1
    iget-byte v0, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-byte v2, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/d$a;->Bd()Lcom/kwad/framework/filedownloader/a$a;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Lcom/kwad/framework/filedownloader/a$a;->AP()Lcom/kwad/framework/filedownloader/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lcom/kwad/framework/filedownloader/r;->BG()Lcom/kwad/framework/filedownloader/r;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/r;->BK()Lcom/kwad/framework/filedownloader/v;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :try_start_0
    invoke-interface {v3, v2}, Lcom/kwad/framework/filedownloader/v;->f(Lcom/kwad/framework/filedownloader/a$a;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_1
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/d;->azo:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    iget-byte v5, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 61
    .line 62
    if-eq v5, v1, :cond_2

    .line 63
    .line 64
    const-string v0, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-byte v3, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {p0, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    monitor-exit v4

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_2
    const/16 v1, 0xb

    .line 93
    .line 94
    invoke-direct {p0, v1}, Lcom/kwad/framework/filedownloader/d;->b(B)V

    .line 95
    .line 96
    .line 97
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/h;->b(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getId()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getTargetFilePath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AI()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    const/4 v6, 0x1

    .line 118
    invoke-static {v1, v4, v5, v6}, Lcom/kwad/framework/filedownloader/f/c;->a(ILjava/lang/String;ZZ)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_3
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->getPath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AB()Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->Az()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AA()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AK()I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AI()Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/d;->azt:Lcom/kwad/framework/filedownloader/d$a;

    .line 159
    .line 160
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/d$a;->Bc()Lcom/kwad/framework/filedownloader/d/b;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a;->AO()Z

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    invoke-virtual/range {v4 .. v13}, Lcom/kwad/framework/filedownloader/n;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwad/framework/filedownloader/d/b;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iget-byte v1, p0, Lcom/kwad/framework/filedownloader/d;->azu:B

    .line 173
    .line 174
    const/4 v4, -0x2

    .line 175
    if-ne v1, v4, :cond_4

    .line 176
    .line 177
    const-string v1, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    .line 178
    .line 179
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-static {p0, v1, v3}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    if-eqz v0, :cond_6

    .line 195
    .line 196
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/d;->getId()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/n;->cv(I)Z

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :catchall_1
    move-exception v0

    .line 209
    goto :goto_2

    .line 210
    :cond_4
    if-nez v0, :cond_7

    .line 211
    .line 212
    invoke-interface {v3, v2}, Lcom/kwad/framework/filedownloader/v;->f(Lcom/kwad/framework/filedownloader/a$a;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_6

    .line 217
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    .line 219
    .line 220
    const-string v1, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    .line 221
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v0}, Lcom/kwad/framework/filedownloader/d;->n(Ljava/lang/Throwable;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_5

    .line 238
    .line 239
    invoke-interface {v3, v2}, Lcom/kwad/framework/filedownloader/v;->e(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 240
    .line 241
    .line 242
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/h;->b(Lcom/kwad/framework/filedownloader/a$a;)V

    .line 247
    .line 248
    .line 249
    :cond_5
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1, v2, v0}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z

    .line 254
    .line 255
    .line 256
    :cond_6
    :goto_0
    return-void

    .line 257
    :cond_7
    invoke-interface {v3, v2}, Lcom/kwad/framework/filedownloader/v;->e(Lcom/kwad/framework/filedownloader/a$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 263
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    .line 265
    .line 266
    invoke-static {}, Lcom/kwad/framework/filedownloader/h;->Bn()Lcom/kwad/framework/filedownloader/h;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {p0, v0}, Lcom/kwad/framework/filedownloader/d;->n(Ljava/lang/Throwable;)Lcom/kwad/framework/filedownloader/message/MessageSnapshot;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v1, v2, v0}, Lcom/kwad/framework/filedownloader/h;->a(Lcom/kwad/framework/filedownloader/a$a;Lcom/kwad/framework/filedownloader/message/MessageSnapshot;)Z

    .line 275
    .line 276
    .line 277
    return-void
.end method
