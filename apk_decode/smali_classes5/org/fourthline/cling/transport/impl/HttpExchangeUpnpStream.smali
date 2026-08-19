.class public abstract Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;
.super Lorg/fourthline/cling/transport/spi/UpnpStream;
.source "SourceFile"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private httpExchange:Lcom/sun/net/httpserver/HttpExchange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/transport/spi/UpnpStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/fourthline/cling/transport/spi/UpnpStream;-><init>(Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract createConnection()Lorg/fourthline/cling/model/message/Connection;
.end method

.method public getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 10

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    :try_start_0
    sget-object v2, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 4
    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v4, "Processing HTTP request: "

    .line 11
    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, " "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 79
    .line 80
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    sget-object v4, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_9

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lorg/fourthline/cling/model/message/UpnpRequest;

    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getProtocol()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const-string v5, "HTTP/1.1"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/message/UpnpOperation;->setHttpMinorVersion(I)V

    .line 119
    .line 120
    .line 121
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 122
    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v5, "Created new request message: "

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->createConnection()Lorg/fourthline/cling/model/message/Connection;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setConnection(Lorg/fourthline/cling/model/message/Connection;)V

    .line 148
    .line 149
    .line 150
    new-instance v3, Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 151
    .line 152
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestHeaders()Lcom/sun/net/httpserver/Headers;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-direct {v3, v4}, Lorg/fourthline/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/message/UpnpMessage;->setHeaders(Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestBody()Ljava/io/InputStream;

    .line 172
    .line 173
    .line 174
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 175
    :try_start_2
    invoke-static {v4}, Lorg/seamless/util/io/IO;->readBytes(Ljava/io/InputStream;)[B

    .line 176
    .line 177
    .line 178
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    if-eqz v4, :cond_0

    .line 180
    .line 181
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v2

    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_0
    :goto_0
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 189
    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v7, "Reading request body bytes: "

    .line 196
    .line 197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    array-length v7, v5

    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    array-length v4, v5

    .line 212
    if-lez v4, :cond_1

    .line 213
    .line 214
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->isContentTypeMissingOrText()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_1

    .line 219
    .line 220
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 221
    .line 222
    const-string v6, "Request contains textual entity body, converting then setting string on message"

    .line 223
    .line 224
    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v5}, Lorg/fourthline/cling/model/message/UpnpMessage;->setBodyCharacters([B)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_1
    array-length v4, v5

    .line 232
    if-lez v4, :cond_2

    .line 233
    .line 234
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 235
    .line 236
    const-string v6, "Request contains binary entity body, setting bytes on message"

    .line 237
    .line 238
    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    sget-object v4, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    .line 242
    .line 243
    invoke-virtual {v2, v4, v5}, Lorg/fourthline/cling/model/message/UpnpMessage;->setBody(Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_2
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 248
    .line 249
    const-string v5, "Request did not contain entity body"

    .line 250
    .line 251
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :goto_1
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/transport/spi/UpnpStream;->process(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    sget-object v4, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 261
    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v6, "Preparing HTTP response message: "

    .line 268
    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getResponseHeaders()Lcom/sun/net/httpserver/Headers;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v4, v5}, Lcom/sun/net/httpserver/Headers;->putAll(Ljava/util/Map;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->hasBody()Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_3

    .line 302
    .line 303
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->getBodyBytes()[B

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    goto :goto_2

    .line 308
    :cond_3
    move-object v4, v3

    .line 309
    :goto_2
    if-eqz v4, :cond_4

    .line 310
    .line 311
    array-length v5, v4

    .line 312
    goto :goto_3

    .line 313
    :cond_4
    const/4 v5, -0x1

    .line 314
    :goto_3
    sget-object v6, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 315
    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v8, "Sending HTTP response message: "

    .line 322
    .line 323
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v8, " with content length: "

    .line 330
    .line 331
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/UpnpMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    check-cast v7, Lorg/fourthline/cling/model/message/UpnpResponse;

    .line 353
    .line 354
    invoke-virtual {v7}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    int-to-long v8, v5

    .line 359
    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V

    .line 360
    .line 361
    .line 362
    if-lez v5, :cond_7

    .line 363
    .line 364
    sget-object v5, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 365
    .line 366
    const-string v6, "Response message has body, writing bytes to stream..."

    .line 367
    .line 368
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    .line 370
    .line 371
    :try_start_4
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v5}, Lcom/sun/net/httpserver/HttpExchange;->getResponseBody()Ljava/io/OutputStream;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    invoke-static {v3, v4}, Lorg/seamless/util/io/IO;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 383
    .line 384
    .line 385
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 386
    .line 387
    .line 388
    goto :goto_4

    .line 389
    :catchall_1
    move-exception v2

    .line 390
    if-eqz v3, :cond_5

    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 393
    .line 394
    .line 395
    :cond_5
    throw v2

    .line 396
    :cond_6
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 397
    .line 398
    const-string v4, "Sending HTTP response status: 404"

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    const/16 v4, 0x194

    .line 408
    .line 409
    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V

    .line 410
    .line 411
    .line 412
    :cond_7
    :goto_4
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/transport/spi/UpnpStream;->responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :catchall_2
    move-exception v2

    .line 417
    move-object v3, v4

    .line 418
    goto :goto_5

    .line 419
    :catchall_3
    move-exception v2

    .line 420
    :goto_5
    if-eqz v3, :cond_8

    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 423
    .line 424
    .line 425
    :cond_8
    throw v2

    .line 426
    :cond_9
    sget-object v2, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 427
    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v4, "Method not supported by UPnP stack: "

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    new-instance v2, Ljava/lang/RuntimeException;

    .line 457
    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    const-string v4, "Method not supported: "

    .line 464
    .line 465
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 487
    :goto_6
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 488
    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    const-string v5, "Exception occured during UPnP stream processing: "

    .line 495
    .line 496
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 510
    .line 511
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 512
    .line 513
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-eqz v3, :cond_a

    .line 518
    .line 519
    sget-object v3, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 520
    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    const-string v6, "Cause: "

    .line 527
    .line 528
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-static {v2}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    invoke-static {v2}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 543
    .line 544
    .line 545
    move-result-object v6

    .line 546
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    .line 548
    .line 549
    :cond_a
    :try_start_6
    iget-object v3, p0, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    .line 550
    .line 551
    const/16 v4, 0x1f4

    .line 552
    .line 553
    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 554
    .line 555
    .line 556
    goto :goto_7

    .line 557
    :catch_0
    move-exception v0

    .line 558
    sget-object v1, Lorg/fourthline/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    .line 559
    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .line 564
    .line 565
    const-string v4, "Couldn\'t send error response: "

    .line 566
    .line 567
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    :goto_7
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/transport/spi/UpnpStream;->responseException(Ljava/lang/Throwable;)V

    .line 581
    .line 582
    .line 583
    return-void
.end method
