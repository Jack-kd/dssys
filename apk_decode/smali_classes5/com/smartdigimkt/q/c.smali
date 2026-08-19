.class public final Lcom/smartdigimkt/q/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/q/a;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/q/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/q/c;->a:Lcom/smartdigimkt/q/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/smartdigimkt/q/c;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Lcom/smartdigimkt/q/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/smartdigimkt/q/b;-><init>(Lcom/smartdigimkt/q/c;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/smartdigimkt/q/c;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sparse-switch v3, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v3, "HUAWEI"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :sswitch_1
    const-string v3, "FREEME"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const/16 v2, 0x9

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :sswitch_2
    const-string v3, "COOLSEA"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    const/16 v2, 0xb

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_3
    const-string v3, "COOLPAD"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const/16 v2, 0xa

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :sswitch_4
    const-string v3, "MOTOLORA"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    goto :goto_1

    .line 77
    :sswitch_5
    const-string v3, "MEIZU"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :sswitch_6
    const-string v3, "HONOR"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_0

    .line 95
    .line 96
    const/16 v2, 0xc

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :sswitch_7
    const-string v3, "OPPO"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    goto :goto_1

    .line 109
    :sswitch_8
    const-string v3, "ASUS"

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    goto :goto_1

    .line 119
    :sswitch_9
    const-string v3, "ONEPLUS"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_0

    .line 126
    .line 127
    const/4 v2, 0x2

    .line 128
    goto :goto_1

    .line 129
    :sswitch_a
    const-string v3, "SAMSUNG"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_0

    .line 136
    .line 137
    move v2, v1

    .line 138
    goto :goto_1

    .line 139
    :sswitch_b
    const-string v3, "REALME"

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_0

    .line 146
    .line 147
    const/4 v2, 0x3

    .line 148
    goto :goto_1

    .line 149
    :sswitch_c
    const-string v3, "LENOVO"

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_0

    .line 156
    .line 157
    const/4 v2, 0x6

    .line 158
    goto :goto_1

    .line 159
    :cond_0
    :goto_0
    const/4 v2, -0x1

    .line 160
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 164
    .line 165
    iget-object v2, p0, Lcom/smartdigimkt/q/c;->a:Lcom/smartdigimkt/q/a;

    .line 166
    .line 167
    invoke-static {v0, v2}, Lcom/smartdigimkt/odopt/api/ATOaidBindHandler;->handleInitOaidBind(Landroid/content/Context;Lcom/smartdigimkt/q/a;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_0
    new-instance v2, Lcom/smartdigimkt/r/s;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 174
    .line 175
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/s;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/s;->a(Lcom/smartdigimkt/q/b;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_1
    new-instance v2, Lcom/smartdigimkt/r/d;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 185
    .line 186
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/d;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/d;->a(Lcom/smartdigimkt/q/b;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_2
    new-instance v2, Lcom/smartdigimkt/r/c;

    .line 194
    .line 195
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 196
    .line 197
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/c;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/c;->a(Lcom/smartdigimkt/q/b;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_3
    new-instance v2, Lcom/smartdigimkt/r/h;

    .line 205
    .line 206
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 207
    .line 208
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/h;-><init>(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/h;->a(Lcom/smartdigimkt/q/b;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_4
    new-instance v2, Lcom/smartdigimkt/r/w;

    .line 216
    .line 217
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 218
    .line 219
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/w;-><init>(Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/w;->a(Lcom/smartdigimkt/q/b;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_5
    new-instance v2, Lcom/smartdigimkt/r/m0;

    .line 227
    .line 228
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 229
    .line 230
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/m0;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/m0;->a(Lcom/smartdigimkt/q/b;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_6
    new-instance v2, Lcom/smartdigimkt/r/j0;

    .line 238
    .line 239
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 240
    .line 241
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/j0;-><init>(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/j0;->a(Lcom/smartdigimkt/q/b;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_7
    new-instance v2, Lcom/smartdigimkt/r/m;

    .line 249
    .line 250
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 251
    .line 252
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/m;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/m;->a(Lcom/smartdigimkt/q/b;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_8
    new-instance v2, Lcom/smartdigimkt/r/z;

    .line 260
    .line 261
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 262
    .line 263
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/z;-><init>(Landroid/content/Context;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/z;->a(Lcom/smartdigimkt/q/b;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-nez v2, :cond_1

    .line 271
    .line 272
    new-instance v2, Lcom/smartdigimkt/r/e0;

    .line 273
    .line 274
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 275
    .line 276
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/e0;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/e0;->a(Lcom/smartdigimkt/q/b;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :pswitch_9
    new-instance v2, Lcom/smartdigimkt/r/b;

    .line 284
    .line 285
    iget-object v3, p0, Lcom/smartdigimkt/q/c;->b:Landroid/content/Context;

    .line 286
    .line 287
    invoke-direct {v2, v3}, Lcom/smartdigimkt/r/b;-><init>(Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v0}, Lcom/smartdigimkt/r/b;->a(Lcom/smartdigimkt/q/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Lcom/smartdigimkt/t/f;->a(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, p0, Lcom/smartdigimkt/q/c;->a:Lcom/smartdigimkt/q/a;

    .line 302
    .line 303
    if-eqz v1, :cond_1

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-interface {v1, v0}, Lcom/smartdigimkt/q/a;->a(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :cond_1
    return-void

    .line 313
    :sswitch_data_0
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_c
        -0x7027944a -> :sswitch_b
        -0x660bb426 -> :sswitch_a
        -0x23e7db20 -> :sswitch_9
        0x1ece50 -> :sswitch_8
        0x251fa0 -> :sswitch_7
        0x41bb44a -> :sswitch_6
        0x45d8cac -> :sswitch_5
        0x259adc0f -> :sswitch_4
        0x638d5c8a -> :sswitch_3
        0x638d6846 -> :sswitch_2
        0x7c172d04 -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
