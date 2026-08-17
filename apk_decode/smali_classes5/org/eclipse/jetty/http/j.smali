.class public Lorg/eclipse/jetty/http/j;
.super LL1/e;
.source "SourceFile"


# static fields
.field public static final A:LL1/d;

.field public static final B:LL1/d;

.field public static final C:LL1/d;

.field public static final D:LL1/d;

.field public static final E:LL1/d;

.field public static final F:LL1/d;

.field public static final G:LL1/d;

.field public static final H:LL1/d;

.field public static final I:LL1/d;

.field public static final J:LL1/d;

.field public static final K:LL1/d;

.field public static final L:LL1/d;

.field public static final M:LL1/d;

.field public static final N:LL1/d;

.field public static final O:LL1/d;

.field public static final P:LL1/d;

.field public static final Q:LL1/d;

.field public static final R:LL1/d;

.field public static final S:LL1/d;

.field public static final T:LL1/d;

.field public static final U:LL1/d;

.field public static final V:LL1/d;

.field public static final W:LL1/d;

.field public static final X:LL1/d;

.field public static final Y:LL1/d;

.field public static final Z:LL1/d;

.field public static final a0:LL1/d;

.field public static final b0:LL1/d;

.field public static final c0:LL1/d;

.field public static final d:Lorg/eclipse/jetty/http/j;

.field public static final d0:LL1/d;

.field public static final e:LL1/d;

.field public static final e0:LL1/d;

.field public static final f:LL1/d;

.field public static final f0:LL1/d;

.field public static final g:LL1/d;

.field public static final g0:LL1/d;

.field public static final h:LL1/d;

.field public static final h0:LL1/d;

.field public static final i:LL1/d;

.field public static final i0:LL1/d;

.field public static final j:LL1/d;

.field public static final j0:LL1/d;

.field public static final k:LL1/d;

.field public static final k0:LL1/d;

.field public static final l:LL1/d;

.field public static final l0:LL1/d;

.field public static final m:LL1/d;

.field public static final m0:LL1/d;

.field public static final n:LL1/d;

.field public static final o:LL1/d;

.field public static final p:LL1/d;

.field public static final q:LL1/d;

.field public static final r:LL1/d;

.field public static final s:LL1/d;

.field public static final t:LL1/d;

.field public static final u:LL1/d;

.field public static final v:LL1/d;

.field public static final w:LL1/d;

.field public static final x:LL1/d;

.field public static final y:LL1/d;

.field public static final z:LL1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/eclipse/jetty/http/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/eclipse/jetty/http/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 7
    .line 8
    const-string v1, "Host"

    .line 9
    .line 10
    const/16 v2, 0x1b

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lorg/eclipse/jetty/http/j;->e:LL1/d;

    .line 17
    .line 18
    const-string v1, "Accept"

    .line 19
    .line 20
    const/16 v2, 0x13

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sput-object v1, Lorg/eclipse/jetty/http/j;->f:LL1/d;

    .line 27
    .line 28
    const-string v1, "Accept-Charset"

    .line 29
    .line 30
    const/16 v2, 0x14

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sput-object v1, Lorg/eclipse/jetty/http/j;->g:LL1/d;

    .line 37
    .line 38
    const-string v1, "Accept-Encoding"

    .line 39
    .line 40
    const/16 v2, 0x15

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lorg/eclipse/jetty/http/j;->h:LL1/d;

    .line 47
    .line 48
    const-string v1, "Accept-Language"

    .line 49
    .line 50
    const/16 v2, 0x16

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sput-object v1, Lorg/eclipse/jetty/http/j;->i:LL1/d;

    .line 57
    .line 58
    const-string v1, "Content-Length"

    .line 59
    .line 60
    const/16 v2, 0xc

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sput-object v1, Lorg/eclipse/jetty/http/j;->j:LL1/d;

    .line 67
    .line 68
    const-string v1, "Connection"

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sput-object v1, Lorg/eclipse/jetty/http/j;->k:LL1/d;

    .line 76
    .line 77
    const-string v1, "Cache-Control"

    .line 78
    .line 79
    const/16 v2, 0x39

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    sput-object v1, Lorg/eclipse/jetty/http/j;->l:LL1/d;

    .line 86
    .line 87
    const-string v1, "Date"

    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sput-object v1, Lorg/eclipse/jetty/http/j;->m:LL1/d;

    .line 95
    .line 96
    const-string v1, "Pragma"

    .line 97
    .line 98
    const/4 v2, 0x3

    .line 99
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    sput-object v1, Lorg/eclipse/jetty/http/j;->n:LL1/d;

    .line 104
    .line 105
    const-string v1, "Trailer"

    .line 106
    .line 107
    const/4 v2, 0x4

    .line 108
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sput-object v1, Lorg/eclipse/jetty/http/j;->o:LL1/d;

    .line 113
    .line 114
    const-string v1, "Transfer-Encoding"

    .line 115
    .line 116
    const/4 v2, 0x5

    .line 117
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    sput-object v1, Lorg/eclipse/jetty/http/j;->p:LL1/d;

    .line 122
    .line 123
    const-string v1, "Upgrade"

    .line 124
    .line 125
    const/4 v2, 0x6

    .line 126
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    sput-object v1, Lorg/eclipse/jetty/http/j;->q:LL1/d;

    .line 131
    .line 132
    const-string v1, "Via"

    .line 133
    .line 134
    const/4 v2, 0x7

    .line 135
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sput-object v1, Lorg/eclipse/jetty/http/j;->r:LL1/d;

    .line 140
    .line 141
    const-string v1, "Warning"

    .line 142
    .line 143
    const/16 v2, 0x8

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    sput-object v1, Lorg/eclipse/jetty/http/j;->s:LL1/d;

    .line 150
    .line 151
    const-string v1, "Allow"

    .line 152
    .line 153
    const/16 v2, 0x9

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sput-object v1, Lorg/eclipse/jetty/http/j;->t:LL1/d;

    .line 160
    .line 161
    const-string v1, "Content-Encoding"

    .line 162
    .line 163
    const/16 v2, 0xa

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    sput-object v1, Lorg/eclipse/jetty/http/j;->u:LL1/d;

    .line 170
    .line 171
    const-string v1, "Content-Language"

    .line 172
    .line 173
    const/16 v2, 0xb

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    sput-object v1, Lorg/eclipse/jetty/http/j;->v:LL1/d;

    .line 180
    .line 181
    const-string v1, "Content-Location"

    .line 182
    .line 183
    const/16 v2, 0xd

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    sput-object v1, Lorg/eclipse/jetty/http/j;->w:LL1/d;

    .line 190
    .line 191
    const-string v1, "Content-MD5"

    .line 192
    .line 193
    const/16 v2, 0xe

    .line 194
    .line 195
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    sput-object v1, Lorg/eclipse/jetty/http/j;->x:LL1/d;

    .line 200
    .line 201
    const-string v1, "Content-Range"

    .line 202
    .line 203
    const/16 v2, 0xf

    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    sput-object v1, Lorg/eclipse/jetty/http/j;->y:LL1/d;

    .line 210
    .line 211
    const-string v1, "Content-Type"

    .line 212
    .line 213
    const/16 v2, 0x10

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    sput-object v1, Lorg/eclipse/jetty/http/j;->z:LL1/d;

    .line 220
    .line 221
    const-string v1, "Expires"

    .line 222
    .line 223
    const/16 v2, 0x11

    .line 224
    .line 225
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    sput-object v1, Lorg/eclipse/jetty/http/j;->A:LL1/d;

    .line 230
    .line 231
    const-string v1, "Last-Modified"

    .line 232
    .line 233
    const/16 v2, 0x12

    .line 234
    .line 235
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    sput-object v1, Lorg/eclipse/jetty/http/j;->B:LL1/d;

    .line 240
    .line 241
    const-string v1, "Authorization"

    .line 242
    .line 243
    const/16 v2, 0x17

    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    sput-object v1, Lorg/eclipse/jetty/http/j;->C:LL1/d;

    .line 250
    .line 251
    const-string v1, "Expect"

    .line 252
    .line 253
    const/16 v2, 0x18

    .line 254
    .line 255
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    sput-object v1, Lorg/eclipse/jetty/http/j;->D:LL1/d;

    .line 260
    .line 261
    const-string v1, "Forwarded"

    .line 262
    .line 263
    const/16 v2, 0x19

    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    sput-object v1, Lorg/eclipse/jetty/http/j;->E:LL1/d;

    .line 270
    .line 271
    const-string v1, "From"

    .line 272
    .line 273
    const/16 v2, 0x1a

    .line 274
    .line 275
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    sput-object v1, Lorg/eclipse/jetty/http/j;->F:LL1/d;

    .line 280
    .line 281
    const-string v1, "If-Match"

    .line 282
    .line 283
    const/16 v2, 0x1c

    .line 284
    .line 285
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    sput-object v1, Lorg/eclipse/jetty/http/j;->G:LL1/d;

    .line 290
    .line 291
    const-string v1, "If-Modified-Since"

    .line 292
    .line 293
    const/16 v2, 0x1d

    .line 294
    .line 295
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    sput-object v1, Lorg/eclipse/jetty/http/j;->H:LL1/d;

    .line 300
    .line 301
    const-string v1, "If-None-Match"

    .line 302
    .line 303
    const/16 v2, 0x1e

    .line 304
    .line 305
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    sput-object v1, Lorg/eclipse/jetty/http/j;->I:LL1/d;

    .line 310
    .line 311
    const-string v1, "If-Range"

    .line 312
    .line 313
    const/16 v2, 0x1f

    .line 314
    .line 315
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    sput-object v1, Lorg/eclipse/jetty/http/j;->J:LL1/d;

    .line 320
    .line 321
    const-string v1, "If-Unmodified-Since"

    .line 322
    .line 323
    const/16 v2, 0x20

    .line 324
    .line 325
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    sput-object v1, Lorg/eclipse/jetty/http/j;->K:LL1/d;

    .line 330
    .line 331
    const-string v1, "Keep-Alive"

    .line 332
    .line 333
    const/16 v2, 0x21

    .line 334
    .line 335
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    sput-object v1, Lorg/eclipse/jetty/http/j;->L:LL1/d;

    .line 340
    .line 341
    const-string v1, "Max-Forwards"

    .line 342
    .line 343
    const/16 v2, 0x22

    .line 344
    .line 345
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    sput-object v1, Lorg/eclipse/jetty/http/j;->M:LL1/d;

    .line 350
    .line 351
    const-string v1, "Proxy-Authorization"

    .line 352
    .line 353
    const/16 v2, 0x23

    .line 354
    .line 355
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    sput-object v1, Lorg/eclipse/jetty/http/j;->N:LL1/d;

    .line 360
    .line 361
    const-string v1, "Range"

    .line 362
    .line 363
    const/16 v2, 0x24

    .line 364
    .line 365
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    sput-object v1, Lorg/eclipse/jetty/http/j;->O:LL1/d;

    .line 370
    .line 371
    const-string v1, "Request-Range"

    .line 372
    .line 373
    const/16 v2, 0x25

    .line 374
    .line 375
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    sput-object v1, Lorg/eclipse/jetty/http/j;->P:LL1/d;

    .line 380
    .line 381
    const-string v1, "Referer"

    .line 382
    .line 383
    const/16 v2, 0x26

    .line 384
    .line 385
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    sput-object v1, Lorg/eclipse/jetty/http/j;->Q:LL1/d;

    .line 390
    .line 391
    const-string v1, "TE"

    .line 392
    .line 393
    const/16 v2, 0x27

    .line 394
    .line 395
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    sput-object v1, Lorg/eclipse/jetty/http/j;->R:LL1/d;

    .line 400
    .line 401
    const-string v1, "User-Agent"

    .line 402
    .line 403
    const/16 v2, 0x28

    .line 404
    .line 405
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    sput-object v1, Lorg/eclipse/jetty/http/j;->S:LL1/d;

    .line 410
    .line 411
    const-string v1, "X-Forwarded-For"

    .line 412
    .line 413
    const/16 v2, 0x29

    .line 414
    .line 415
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    sput-object v1, Lorg/eclipse/jetty/http/j;->T:LL1/d;

    .line 420
    .line 421
    const-string v1, "X-Forwarded-Proto"

    .line 422
    .line 423
    const/16 v2, 0x3b

    .line 424
    .line 425
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    sput-object v1, Lorg/eclipse/jetty/http/j;->U:LL1/d;

    .line 430
    .line 431
    const-string v1, "X-Forwarded-Server"

    .line 432
    .line 433
    const/16 v2, 0x3c

    .line 434
    .line 435
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    sput-object v1, Lorg/eclipse/jetty/http/j;->V:LL1/d;

    .line 440
    .line 441
    const-string v1, "X-Forwarded-Host"

    .line 442
    .line 443
    const/16 v2, 0x3d

    .line 444
    .line 445
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    sput-object v1, Lorg/eclipse/jetty/http/j;->W:LL1/d;

    .line 450
    .line 451
    const-string v1, "Accept-Ranges"

    .line 452
    .line 453
    const/16 v2, 0x2a

    .line 454
    .line 455
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    sput-object v1, Lorg/eclipse/jetty/http/j;->X:LL1/d;

    .line 460
    .line 461
    const-string v1, "Age"

    .line 462
    .line 463
    const/16 v2, 0x2b

    .line 464
    .line 465
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    sput-object v1, Lorg/eclipse/jetty/http/j;->Y:LL1/d;

    .line 470
    .line 471
    const-string v1, "ETag"

    .line 472
    .line 473
    const/16 v2, 0x2c

    .line 474
    .line 475
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    sput-object v1, Lorg/eclipse/jetty/http/j;->Z:LL1/d;

    .line 480
    .line 481
    const-string v1, "Location"

    .line 482
    .line 483
    const/16 v2, 0x2d

    .line 484
    .line 485
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    sput-object v1, Lorg/eclipse/jetty/http/j;->a0:LL1/d;

    .line 490
    .line 491
    const-string v1, "Proxy-Authenticate"

    .line 492
    .line 493
    const/16 v2, 0x2e

    .line 494
    .line 495
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    sput-object v1, Lorg/eclipse/jetty/http/j;->b0:LL1/d;

    .line 500
    .line 501
    const-string v1, "Retry-After"

    .line 502
    .line 503
    const/16 v2, 0x2f

    .line 504
    .line 505
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    sput-object v1, Lorg/eclipse/jetty/http/j;->c0:LL1/d;

    .line 510
    .line 511
    const-string v1, "Server"

    .line 512
    .line 513
    const/16 v2, 0x30

    .line 514
    .line 515
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    sput-object v1, Lorg/eclipse/jetty/http/j;->d0:LL1/d;

    .line 520
    .line 521
    const-string v1, "Servlet-Engine"

    .line 522
    .line 523
    const/16 v2, 0x31

    .line 524
    .line 525
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    sput-object v1, Lorg/eclipse/jetty/http/j;->e0:LL1/d;

    .line 530
    .line 531
    const-string v1, "Vary"

    .line 532
    .line 533
    const/16 v2, 0x32

    .line 534
    .line 535
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    sput-object v1, Lorg/eclipse/jetty/http/j;->f0:LL1/d;

    .line 540
    .line 541
    const-string v1, "WWW-Authenticate"

    .line 542
    .line 543
    const/16 v2, 0x33

    .line 544
    .line 545
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    sput-object v1, Lorg/eclipse/jetty/http/j;->g0:LL1/d;

    .line 550
    .line 551
    const-string v1, "Cookie"

    .line 552
    .line 553
    const/16 v2, 0x34

    .line 554
    .line 555
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    sput-object v1, Lorg/eclipse/jetty/http/j;->h0:LL1/d;

    .line 560
    .line 561
    const-string v1, "Set-Cookie"

    .line 562
    .line 563
    const/16 v2, 0x35

    .line 564
    .line 565
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    sput-object v1, Lorg/eclipse/jetty/http/j;->i0:LL1/d;

    .line 570
    .line 571
    const-string v1, "Set-Cookie2"

    .line 572
    .line 573
    const/16 v2, 0x36

    .line 574
    .line 575
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    sput-object v1, Lorg/eclipse/jetty/http/j;->j0:LL1/d;

    .line 580
    .line 581
    const-string v1, "MIME-Version"

    .line 582
    .line 583
    const/16 v2, 0x37

    .line 584
    .line 585
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    sput-object v1, Lorg/eclipse/jetty/http/j;->k0:LL1/d;

    .line 590
    .line 591
    const-string v1, "identity"

    .line 592
    .line 593
    const/16 v2, 0x38

    .line 594
    .line 595
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    sput-object v1, Lorg/eclipse/jetty/http/j;->l0:LL1/d;

    .line 600
    .line 601
    const-string v1, "Proxy-Connection"

    .line 602
    .line 603
    const/16 v2, 0x3a

    .line 604
    .line 605
    invoke-virtual {v0, v1, v2}, LL1/e;->a(Ljava/lang/String;I)LL1/e$a;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    sput-object v0, Lorg/eclipse/jetty/http/j;->m0:LL1/d;

    .line 610
    .line 611
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LL1/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
