.class public abstract Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;
.super Lorg/seamless/xml/SAXParser$Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/contentdirectory/DIDLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DIDLObjectHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/fourthline/cling/support/model/DIDLObject;",
        ">",
        "Lorg/seamless/xml/SAXParser$Handler<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/contentdirectory/DIDLParser;Lorg/fourthline/cling/support/model/DIDLObject;Lorg/seamless/xml/SAXParser$Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/seamless/xml/SAXParser$Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/contentdirectory/DIDLParser$DIDLObjectHandler;->this$0:Lorg/fourthline/cling/support/contentdirectory/DIDLParser;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;-><init>(Ljava/lang/Object;Lorg/seamless/xml/SAXParser$Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/seamless/xml/SAXParser$Handler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p3, "http://purl.org/dc/elements/1.1/"

    .line 5
    .line 6
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    if-eqz p3, :cond_8

    .line 11
    .line 12
    const-string p1, "title"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-string p1, "creator"

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setCreator(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    const-string p1, "description"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 69
    .line 70
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    const-string p1, "publisher"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 96
    .line 97
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    .line 98
    .line 99
    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    const-string p1, "contributor"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 128
    .line 129
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    .line 130
    .line 131
    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    const-string p1, "date"

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 160
    .line 161
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_5
    const-string p1, "language"

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_6

    .line 181
    .line 182
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 187
    .line 188
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    .line 189
    .line 190
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p3

    .line 194
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_6
    const-string p1, "rights"

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_7

    .line 208
    .line 209
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 214
    .line 215
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    .line 216
    .line 217
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_7
    const-string p1, "relation"

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_2b

    .line 235
    .line 236
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 241
    .line 242
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;

    .line 243
    .line 244
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p3

    .line 248
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 249
    .line 250
    .line 251
    move-result-object p3

    .line 252
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_8
    const-string p3, "urn:schemas-upnp-org:metadata-1-0/upnp/"

    .line 260
    .line 261
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    if-eqz p1, :cond_2b

    .line 266
    .line 267
    const-string p1, "writeStatus"

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_9

    .line 274
    .line 275
    :try_start_0
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 280
    .line 281
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    invoke-static {p2}, Lorg/fourthline/cling/support/model/WriteStatus;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/WriteStatus;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setWriteStatus(Lorg/fourthline/cling/support/model/WriteStatus;)Lorg/fourthline/cling/support/model/DIDLObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :catch_0
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/DIDLParser;->access$000()Ljava/util/logging/Logger;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string p3, "Ignoring invalid writeStatus value: "

    .line 303
    .line 304
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_9
    const-string p1, "class"

    .line 323
    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    if-eqz p1, :cond_a

    .line 329
    .line 330
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 335
    .line 336
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 337
    .line 338
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p3

    .line 342
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getAttributes()Lorg/xml/sax/Attributes;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string v1, "name"

    .line 347
    .line 348
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-direct {p2, p3, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :cond_a
    const-string p1, "artist"

    .line 360
    .line 361
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    const-string p3, "role"

    .line 366
    .line 367
    if-eqz p1, :cond_b

    .line 368
    .line 369
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 374
    .line 375
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    .line 376
    .line 377
    new-instance v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    .line 378
    .line 379
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getAttributes()Lorg/xml/sax/Attributes;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-interface {v2, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p3

    .line 391
    invoke-direct {v0, v1, p3}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-direct {p2, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :cond_b
    const-string p1, "actor"

    .line 402
    .line 403
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-eqz p1, :cond_c

    .line 408
    .line 409
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 414
    .line 415
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    .line 416
    .line 417
    new-instance v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    .line 418
    .line 419
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getAttributes()Lorg/xml/sax/Attributes;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-interface {v2, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p3

    .line 431
    invoke-direct {v0, v1, p3}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-direct {p2, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :cond_c
    const-string p1, "author"

    .line 442
    .line 443
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-eqz p1, :cond_d

    .line 448
    .line 449
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 454
    .line 455
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;

    .line 456
    .line 457
    new-instance v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    .line 458
    .line 459
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getAttributes()Lorg/xml/sax/Attributes;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-interface {v2, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p3

    .line 471
    invoke-direct {v0, v1, p3}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-direct {p2, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$AUTHOR;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 478
    .line 479
    .line 480
    return-void

    .line 481
    :cond_d
    const-string p1, "producer"

    .line 482
    .line 483
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-eqz p1, :cond_e

    .line 488
    .line 489
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 494
    .line 495
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    .line 496
    .line 497
    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    .line 498
    .line 499
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :cond_e
    const-string p1, "director"

    .line 514
    .line 515
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-eqz p1, :cond_f

    .line 520
    .line 521
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 526
    .line 527
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    .line 528
    .line 529
    new-instance p3, Lorg/fourthline/cling/support/model/Person;

    .line 530
    .line 531
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-direct {p3, v0}, Lorg/fourthline/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 542
    .line 543
    .line 544
    return-void

    .line 545
    :cond_f
    const-string p1, "longDescription"

    .line 546
    .line 547
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result p1

    .line 551
    if-eqz p1, :cond_10

    .line 552
    .line 553
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 558
    .line 559
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    .line 560
    .line 561
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object p3

    .line 565
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_10
    const-string p1, "storageUsed"

    .line 573
    .line 574
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    if-eqz p1, :cond_11

    .line 579
    .line 580
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 585
    .line 586
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    .line 587
    .line 588
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object p3

    .line 592
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 593
    .line 594
    .line 595
    move-result-object p3

    .line 596
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 600
    .line 601
    .line 602
    return-void

    .line 603
    :cond_11
    const-string p1, "storageTotal"

    .line 604
    .line 605
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result p1

    .line 609
    if-eqz p1, :cond_12

    .line 610
    .line 611
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 616
    .line 617
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    .line 618
    .line 619
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object p3

    .line 623
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 624
    .line 625
    .line 626
    move-result-object p3

    .line 627
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :cond_12
    const-string p1, "storageFree"

    .line 635
    .line 636
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result p1

    .line 640
    if-eqz p1, :cond_13

    .line 641
    .line 642
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 647
    .line 648
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    .line 649
    .line 650
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p3

    .line 654
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 655
    .line 656
    .line 657
    move-result-object p3

    .line 658
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 662
    .line 663
    .line 664
    return-void

    .line 665
    :cond_13
    const-string p1, "storageMaxPartition"

    .line 666
    .line 667
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    if-eqz p1, :cond_14

    .line 672
    .line 673
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 678
    .line 679
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    .line 680
    .line 681
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object p3

    .line 685
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 686
    .line 687
    .line 688
    move-result-object p3

    .line 689
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;-><init>(Ljava/lang/Long;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 693
    .line 694
    .line 695
    return-void

    .line 696
    :cond_14
    const-string p1, "storageMedium"

    .line 697
    .line 698
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result p1

    .line 702
    if-eqz p1, :cond_15

    .line 703
    .line 704
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object p1

    .line 708
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 709
    .line 710
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    .line 711
    .line 712
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object p3

    .line 716
    invoke-static {p3}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    .line 717
    .line 718
    .line 719
    move-result-object p3

    .line 720
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 724
    .line 725
    .line 726
    return-void

    .line 727
    :cond_15
    const-string p1, "genre"

    .line 728
    .line 729
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result p1

    .line 733
    if-eqz p1, :cond_16

    .line 734
    .line 735
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object p1

    .line 739
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 740
    .line 741
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    .line 742
    .line 743
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object p3

    .line 747
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 751
    .line 752
    .line 753
    return-void

    .line 754
    :cond_16
    const-string p1, "album"

    .line 755
    .line 756
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result p1

    .line 760
    if-eqz p1, :cond_17

    .line 761
    .line 762
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 767
    .line 768
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    .line 769
    .line 770
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object p3

    .line 774
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 778
    .line 779
    .line 780
    return-void

    .line 781
    :cond_17
    const-string p1, "playlist"

    .line 782
    .line 783
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result p1

    .line 787
    if-eqz p1, :cond_18

    .line 788
    .line 789
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object p1

    .line 793
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 794
    .line 795
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    .line 796
    .line 797
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object p3

    .line 801
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;-><init>(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :cond_18
    const-string p1, "region"

    .line 809
    .line 810
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    move-result p1

    .line 814
    if-eqz p1, :cond_19

    .line 815
    .line 816
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object p1

    .line 820
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 821
    .line 822
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;

    .line 823
    .line 824
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object p3

    .line 828
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 832
    .line 833
    .line 834
    return-void

    .line 835
    :cond_19
    const-string p1, "rating"

    .line 836
    .line 837
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result p1

    .line 841
    if-eqz p1, :cond_1a

    .line 842
    .line 843
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object p1

    .line 847
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 848
    .line 849
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;

    .line 850
    .line 851
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object p3

    .line 855
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 859
    .line 860
    .line 861
    return-void

    .line 862
    :cond_1a
    const-string p1, "toc"

    .line 863
    .line 864
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result p1

    .line 868
    if-eqz p1, :cond_1b

    .line 869
    .line 870
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object p1

    .line 874
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 875
    .line 876
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;

    .line 877
    .line 878
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object p3

    .line 882
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;-><init>(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 886
    .line 887
    .line 888
    return-void

    .line 889
    :cond_1b
    const-string p1, "albumArtURI"

    .line 890
    .line 891
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 892
    .line 893
    .line 894
    move-result p1

    .line 895
    if-eqz p1, :cond_1e

    .line 896
    .line 897
    new-instance p1, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    .line 898
    .line 899
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object p2

    .line 903
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 904
    .line 905
    .line 906
    move-result-object p2

    .line 907
    invoke-direct {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getAttributes()Lorg/xml/sax/Attributes;

    .line 911
    .line 912
    .line 913
    move-result-object p2

    .line 914
    const/4 p3, 0x0

    .line 915
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    .line 916
    .line 917
    .line 918
    move-result v0

    .line 919
    if-ge p3, v0, :cond_1d

    .line 920
    .line 921
    const-string v0, "profileID"

    .line 922
    .line 923
    invoke-interface {p2, p3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-eqz v0, :cond_1c

    .line 932
    .line 933
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;

    .line 934
    .line 935
    new-instance v1, Lorg/fourthline/cling/support/model/DIDLAttribute;

    .line 936
    .line 937
    const-string v2, "dlna"

    .line 938
    .line 939
    invoke-interface {p2, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v3

    .line 943
    const-string v4, "urn:schemas-dlna-org:metadata-1-0/"

    .line 944
    .line 945
    invoke-direct {v1, v4, v2, v3}, Lorg/fourthline/cling/support/model/DIDLAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->addAttribute(Lorg/fourthline/cling/support/model/DIDLObject$Property;)V

    .line 952
    .line 953
    .line 954
    :cond_1c
    add-int/lit8 p3, p3, 0x1

    .line 955
    .line 956
    goto :goto_0

    .line 957
    :cond_1d
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object p2

    .line 961
    check-cast p2, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 962
    .line 963
    invoke-virtual {p2, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 964
    .line 965
    .line 966
    return-void

    .line 967
    :cond_1e
    const-string p1, "artistDiscographyURI"

    .line 968
    .line 969
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    move-result p1

    .line 973
    if-eqz p1, :cond_1f

    .line 974
    .line 975
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object p1

    .line 979
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 980
    .line 981
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;

    .line 982
    .line 983
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object p3

    .line 987
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 988
    .line 989
    .line 990
    move-result-object p3

    .line 991
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;-><init>(Ljava/net/URI;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 995
    .line 996
    .line 997
    return-void

    .line 998
    :cond_1f
    const-string p1, "lyricsURI"

    .line 999
    .line 1000
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result p1

    .line 1004
    if-eqz p1, :cond_20

    .line 1005
    .line 1006
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object p1

    .line 1010
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1011
    .line 1012
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;

    .line 1013
    .line 1014
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object p3

    .line 1018
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p3

    .line 1022
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$LYRICS_URI;-><init>(Ljava/net/URI;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1026
    .line 1027
    .line 1028
    return-void

    .line 1029
    :cond_20
    const-string p1, "icon"

    .line 1030
    .line 1031
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result p1

    .line 1035
    if-eqz p1, :cond_21

    .line 1036
    .line 1037
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p1

    .line 1041
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1042
    .line 1043
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;

    .line 1044
    .line 1045
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p3

    .line 1049
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 1050
    .line 1051
    .line 1052
    move-result-object p3

    .line 1053
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;-><init>(Ljava/net/URI;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1057
    .line 1058
    .line 1059
    return-void

    .line 1060
    :cond_21
    const-string p1, "radioCallSign"

    .line 1061
    .line 1062
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1063
    .line 1064
    .line 1065
    move-result p1

    .line 1066
    if-eqz p1, :cond_22

    .line 1067
    .line 1068
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object p1

    .line 1072
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1073
    .line 1074
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    .line 1075
    .line 1076
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object p3

    .line 1080
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;-><init>(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1084
    .line 1085
    .line 1086
    return-void

    .line 1087
    :cond_22
    const-string p1, "radioStationID"

    .line 1088
    .line 1089
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result p1

    .line 1093
    if-eqz p1, :cond_23

    .line 1094
    .line 1095
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object p1

    .line 1099
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1100
    .line 1101
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    .line 1102
    .line 1103
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object p3

    .line 1107
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1111
    .line 1112
    .line 1113
    return-void

    .line 1114
    :cond_23
    const-string p1, "radioBand"

    .line 1115
    .line 1116
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    move-result p1

    .line 1120
    if-eqz p1, :cond_24

    .line 1121
    .line 1122
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object p1

    .line 1126
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1127
    .line 1128
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    .line 1129
    .line 1130
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object p3

    .line 1134
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1138
    .line 1139
    .line 1140
    return-void

    .line 1141
    :cond_24
    const-string p1, "channelNr"

    .line 1142
    .line 1143
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result p1

    .line 1147
    if-eqz p1, :cond_25

    .line 1148
    .line 1149
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object p1

    .line 1153
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1154
    .line 1155
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    .line 1156
    .line 1157
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object p3

    .line 1161
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1162
    .line 1163
    .line 1164
    move-result-object p3

    .line 1165
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1169
    .line 1170
    .line 1171
    return-void

    .line 1172
    :cond_25
    const-string p1, "channelName"

    .line 1173
    .line 1174
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result p1

    .line 1178
    if-eqz p1, :cond_26

    .line 1179
    .line 1180
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1181
    .line 1182
    .line 1183
    move-result-object p1

    .line 1184
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1185
    .line 1186
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    .line 1187
    .line 1188
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object p3

    .line 1192
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;-><init>(Ljava/lang/String;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1196
    .line 1197
    .line 1198
    return-void

    .line 1199
    :cond_26
    const-string p1, "scheduledStartTime"

    .line 1200
    .line 1201
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1202
    .line 1203
    .line 1204
    move-result p1

    .line 1205
    if-eqz p1, :cond_27

    .line 1206
    .line 1207
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1208
    .line 1209
    .line 1210
    move-result-object p1

    .line 1211
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1212
    .line 1213
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    .line 1214
    .line 1215
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object p3

    .line 1219
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1223
    .line 1224
    .line 1225
    return-void

    .line 1226
    :cond_27
    const-string p1, "scheduledEndTime"

    .line 1227
    .line 1228
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result p1

    .line 1232
    if-eqz p1, :cond_28

    .line 1233
    .line 1234
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object p1

    .line 1238
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1239
    .line 1240
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    .line 1241
    .line 1242
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object p3

    .line 1246
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1250
    .line 1251
    .line 1252
    return-void

    .line 1253
    :cond_28
    const-string p1, "DVDRegionCode"

    .line 1254
    .line 1255
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result p1

    .line 1259
    if-eqz p1, :cond_29

    .line 1260
    .line 1261
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object p1

    .line 1265
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1266
    .line 1267
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    .line 1268
    .line 1269
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object p3

    .line 1273
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1274
    .line 1275
    .line 1276
    move-result-object p3

    .line 1277
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;-><init>(Ljava/lang/Integer;)V

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1281
    .line 1282
    .line 1283
    return-void

    .line 1284
    :cond_29
    const-string p1, "originalTrackNumber"

    .line 1285
    .line 1286
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result p1

    .line 1290
    if-eqz p1, :cond_2a

    .line 1291
    .line 1292
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object p1

    .line 1296
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1297
    .line 1298
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    .line 1299
    .line 1300
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object p3

    .line 1304
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1305
    .line 1306
    .line 1307
    move-result-object p3

    .line 1308
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;-><init>(Ljava/lang/Integer;)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1312
    .line 1313
    .line 1314
    return-void

    .line 1315
    :cond_2a
    const-string p1, "userAnnotation"

    .line 1316
    .line 1317
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result p1

    .line 1321
    if-eqz p1, :cond_2b

    .line 1322
    .line 1323
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getInstance()Ljava/lang/Object;

    .line 1324
    .line 1325
    .line 1326
    move-result-object p1

    .line 1327
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1328
    .line 1329
    new-instance p2, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;

    .line 1330
    .line 1331
    invoke-virtual {p0}, Lorg/seamless/xml/SAXParser$Handler;->getCharacters()Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object p3

    .line 1335
    invoke-direct {p2, p3}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$USER_ANNOTATION;-><init>(Ljava/lang/String;)V

    .line 1336
    .line 1337
    .line 1338
    invoke-virtual {p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 1339
    .line 1340
    .line 1341
    :cond_2b
    return-void
.end method
