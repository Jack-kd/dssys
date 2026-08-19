.class public Lorg/fourthline/cling/support/shared/CoreLogCategories;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/seamless/swing/logging/LogCategory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/seamless/swing/logging/LogCategory;

    .line 9
    .line 10
    new-instance v2, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 11
    .line 12
    new-instance v3, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 13
    .line 14
    const-class v4, Lorg/fourthline/cling/transport/spi/DatagramIO;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 21
    .line 22
    invoke-direct {v3, v4, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 26
    .line 27
    const-class v5, Lorg/fourthline/cling/transport/spi/MulticastReceiver;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-direct {v4, v5, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 34
    .line 35
    .line 36
    filled-new-array {v3, v4}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "UDP communication"

    .line 41
    .line 42
    invoke-direct {v2, v4, v3}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 46
    .line 47
    new-instance v4, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 48
    .line 49
    const-class v5, Lorg/fourthline/cling/transport/spi/DatagramProcessor;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 56
    .line 57
    invoke-direct {v4, v5, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 58
    .line 59
    .line 60
    filled-new-array {v4}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "UDP datagram processing and content"

    .line 65
    .line 66
    invoke-direct {v3, v5, v4}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 70
    .line 71
    new-instance v5, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 72
    .line 73
    const-class v6, Lorg/fourthline/cling/transport/spi/UpnpStream;

    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-direct {v5, v6, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 83
    .line 84
    const-class v7, Lorg/fourthline/cling/transport/spi/StreamServer;

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-direct {v6, v7, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 91
    .line 92
    .line 93
    new-instance v7, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 94
    .line 95
    const-class v10, Lorg/fourthline/cling/transport/spi/StreamClient;

    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-direct {v7, v10, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 102
    .line 103
    .line 104
    filled-new-array {v5, v6, v7}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    const-string v6, "TCP communication"

    .line 109
    .line 110
    invoke-direct {v4, v6, v5}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 111
    .line 112
    .line 113
    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 114
    .line 115
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 116
    .line 117
    const-class v7, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-direct {v6, v7, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 124
    .line 125
    .line 126
    filled-new-array {v6}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    const-string v7, "SOAP action message processing and content"

    .line 131
    .line 132
    invoke-direct {v5, v7, v6}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 133
    .line 134
    .line 135
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 136
    .line 137
    new-instance v7, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 138
    .line 139
    const-class v10, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-direct {v7, v10, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 146
    .line 147
    .line 148
    filled-new-array {v7}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    const-string v10, "GENA event message processing and content"

    .line 153
    .line 154
    invoke-direct {v6, v10, v7}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 158
    .line 159
    new-instance v10, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 160
    .line 161
    const-class v11, Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 162
    .line 163
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    invoke-direct {v10, v11, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 168
    .line 169
    .line 170
    filled-new-array {v10}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    const-string v11, "HTTP header processing"

    .line 175
    .line 176
    invoke-direct {v7, v11, v10}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 177
    .line 178
    .line 179
    filled-new-array/range {v2 .. v7}, [Lorg/seamless/swing/logging/LogCategory$Group;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const-string v3, "Network"

    .line 184
    .line 185
    invoke-direct {v1, v3, v2}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance v1, Lorg/seamless/swing/logging/LogCategory;

    .line 192
    .line 193
    new-instance v2, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 194
    .line 195
    new-instance v3, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 196
    .line 197
    const-class v4, Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-direct {v3, v5, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 204
    .line 205
    .line 206
    new-instance v5, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 207
    .line 208
    const-string v6, "org.fourthline.cling.protocol.async"

    .line 209
    .line 210
    invoke-direct {v5, v6, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 211
    .line 212
    .line 213
    filled-new-array {v3, v5}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    const-string v5, "Discovery (Notification & Search)"

    .line 218
    .line 219
    invoke-direct {v2, v5, v3}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 220
    .line 221
    .line 222
    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 223
    .line 224
    new-instance v5, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-direct {v5, v6, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 231
    .line 232
    .line 233
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 234
    .line 235
    const-class v7, Lorg/fourthline/cling/protocol/RetrieveRemoteDescriptors;

    .line 236
    .line 237
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-direct {v6, v7, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 242
    .line 243
    .line 244
    new-instance v7, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 245
    .line 246
    const-class v10, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    .line 247
    .line 248
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    invoke-direct {v7, v10, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 253
    .line 254
    .line 255
    new-instance v10, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 256
    .line 257
    const-class v11, Lorg/fourthline/cling/binding/xml/DeviceDescriptorBinder;

    .line 258
    .line 259
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    invoke-direct {v10, v11, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 264
    .line 265
    .line 266
    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 267
    .line 268
    const-class v12, Lorg/fourthline/cling/binding/xml/ServiceDescriptorBinder;

    .line 269
    .line 270
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    invoke-direct {v11, v12, v8}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 275
    .line 276
    .line 277
    filled-new-array {v5, v6, v7, v10, v11}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    const-string v6, "Description"

    .line 282
    .line 283
    invoke-direct {v3, v6, v5}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 284
    .line 285
    .line 286
    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 287
    .line 288
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 289
    .line 290
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    invoke-direct {v6, v7, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 295
    .line 296
    .line 297
    new-instance v7, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 298
    .line 299
    const-class v8, Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    .line 300
    .line 301
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-direct {v7, v8, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 306
    .line 307
    .line 308
    new-instance v8, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 309
    .line 310
    const-class v10, Lorg/fourthline/cling/protocol/sync/SendingAction;

    .line 311
    .line 312
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    invoke-direct {v8, v10, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 317
    .line 318
    .line 319
    filled-new-array {v6, v7, v8}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    const-string v7, "Control"

    .line 324
    .line 325
    invoke-direct {v5, v7, v6}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 326
    .line 327
    .line 328
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 329
    .line 330
    new-instance v10, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 331
    .line 332
    const-string v7, "org.fourthline.cling.model.gena"

    .line 333
    .line 334
    invoke-direct {v10, v7, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 335
    .line 336
    .line 337
    new-instance v11, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-direct {v11, v4, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 344
    .line 345
    .line 346
    new-instance v12, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 347
    .line 348
    const-class v4, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-direct {v12, v4, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 355
    .line 356
    .line 357
    new-instance v13, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 358
    .line 359
    const-class v4, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-direct {v13, v4, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 366
    .line 367
    .line 368
    new-instance v14, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 369
    .line 370
    const-class v4, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    .line 371
    .line 372
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-direct {v14, v4, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 377
    .line 378
    .line 379
    new-instance v15, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 380
    .line 381
    const-class v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;

    .line 382
    .line 383
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-direct {v15, v4, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 388
    .line 389
    .line 390
    new-instance v4, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 391
    .line 392
    const-class v7, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    .line 393
    .line 394
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-direct {v4, v7, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 399
    .line 400
    .line 401
    new-instance v7, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 402
    .line 403
    const-class v8, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    .line 404
    .line 405
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    invoke-direct {v7, v8, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 410
    .line 411
    .line 412
    new-instance v8, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 413
    .line 414
    const-class v16, Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    .line 415
    .line 416
    move-object/from16 v17, v4

    .line 417
    .line 418
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-direct {v8, v4, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 423
    .line 424
    .line 425
    move-object/from16 v18, v8

    .line 426
    .line 427
    move-object/from16 v16, v17

    .line 428
    .line 429
    move-object/from16 v17, v7

    .line 430
    .line 431
    filled-new-array/range {v10 .. v18}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    const-string v7, "GENA "

    .line 436
    .line 437
    invoke-direct {v6, v7, v4}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 438
    .line 439
    .line 440
    filled-new-array {v2, v3, v5, v6}, [Lorg/seamless/swing/logging/LogCategory$Group;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    const-string v3, "UPnP Protocol"

    .line 445
    .line 446
    invoke-direct {v1, v3, v2}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    new-instance v1, Lorg/seamless/swing/logging/LogCategory;

    .line 453
    .line 454
    new-instance v2, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 455
    .line 456
    new-instance v3, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 457
    .line 458
    const-class v4, Lorg/fourthline/cling/transport/Router;

    .line 459
    .line 460
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    invoke-direct {v3, v4, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 465
    .line 466
    .line 467
    filled-new-array {v3}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    const-string v4, "Router"

    .line 472
    .line 473
    invoke-direct {v2, v4, v3}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 474
    .line 475
    .line 476
    new-instance v3, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 477
    .line 478
    new-instance v4, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 479
    .line 480
    const-class v5, Lorg/fourthline/cling/registry/Registry;

    .line 481
    .line 482
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    invoke-direct {v4, v5, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 487
    .line 488
    .line 489
    filled-new-array {v4}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    const-string v5, "Registry"

    .line 494
    .line 495
    invoke-direct {v3, v5, v4}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 496
    .line 497
    .line 498
    new-instance v4, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 499
    .line 500
    new-instance v5, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 501
    .line 502
    const-string v6, "org.fourthline.cling.binding.annotations"

    .line 503
    .line 504
    invoke-direct {v5, v6, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 505
    .line 506
    .line 507
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 508
    .line 509
    const-class v7, Lorg/fourthline/cling/model/meta/LocalService;

    .line 510
    .line 511
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v7

    .line 515
    invoke-direct {v6, v7, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 516
    .line 517
    .line 518
    new-instance v7, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 519
    .line 520
    const-string v8, "org.fourthline.cling.model.action"

    .line 521
    .line 522
    invoke-direct {v7, v8, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 523
    .line 524
    .line 525
    new-instance v8, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 526
    .line 527
    const-string v10, "org.fourthline.cling.model.state"

    .line 528
    .line 529
    invoke-direct {v8, v10, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 530
    .line 531
    .line 532
    new-instance v10, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 533
    .line 534
    const-class v11, Lorg/fourthline/cling/model/DefaultServiceManager;

    .line 535
    .line 536
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v11

    .line 540
    invoke-direct {v10, v11, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 541
    .line 542
    .line 543
    filled-new-array {v5, v6, v7, v8, v10}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    const-string v6, "Local service binding & invocation"

    .line 548
    .line 549
    invoke-direct {v4, v6, v5}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 550
    .line 551
    .line 552
    new-instance v5, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 553
    .line 554
    new-instance v6, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 555
    .line 556
    const-string v7, "org.fourthline.cling.controlpoint"

    .line 557
    .line 558
    invoke-direct {v6, v7, v9}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 559
    .line 560
    .line 561
    filled-new-array {v6}, [Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    const-string v7, "Control Point interaction"

    .line 566
    .line 567
    invoke-direct {v5, v7, v6}, Lorg/seamless/swing/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$LoggerLevel;)V

    .line 568
    .line 569
    .line 570
    filled-new-array {v2, v3, v4, v5}, [Lorg/seamless/swing/logging/LogCategory$Group;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    const-string v3, "Core"

    .line 575
    .line 576
    invoke-direct {v1, v3, v2}, Lorg/seamless/swing/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    return-void
.end method
