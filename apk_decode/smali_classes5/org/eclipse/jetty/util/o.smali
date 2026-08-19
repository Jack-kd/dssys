.class public abstract Lorg/eclipse/jetty/util/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "org.eclipse.jetty.util.URI.charset"

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_8

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/16 v0, 0x3b

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-gez v0, :cond_2

    .line 27
    .line 28
    const/16 v0, 0x3f

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_2
    if-nez v0, :cond_3

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    if-gez v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    add-int/2addr v2, v3

    .line 69
    add-int/lit8 v2, v2, 0x2

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    add-int/lit8 p0, v0, -0x1

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const-string v3, "/"

    .line 84
    .line 85
    const/16 v4, 0x2f

    .line 86
    .line 87
    if-ne v2, v4, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    :cond_8
    :goto_1
    return-object p0

    .line 129
    :cond_9
    :goto_2
    if-eqz p0, :cond_a

    .line 130
    .line 131
    if-nez p1, :cond_a

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_a
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1
    if-eqz p0, :cond_1d

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_f

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x2f

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :goto_0
    const/4 v3, 0x3

    .line 22
    const/4 v4, 0x2

    .line 23
    const/16 v5, 0x2e

    .line 24
    .line 25
    if-lez v0, :cond_4

    .line 26
    .line 27
    sub-int v6, v0, v2

    .line 28
    .line 29
    if-eq v6, v4, :cond_2

    .line 30
    .line 31
    if-eq v6, v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v6, v2, 0x1

    .line 35
    .line 36
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ne v6, v5, :cond_3

    .line 41
    .line 42
    add-int/lit8 v6, v2, 0x2

    .line 43
    .line 44
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eq v6, v5, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v6, v2, 0x1

    .line 52
    .line 53
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eq v6, v5, :cond_4

    .line 58
    .line 59
    :cond_3
    :goto_1
    add-int/lit8 v0, v2, -0x1

    .line 60
    .line 61
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v13, v2

    .line 66
    move v2, v0

    .line 67
    move v0, v13

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    if-lt v2, v0, :cond_5

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    const/4 v7, -0x1

    .line 79
    move v8, p0

    .line 80
    move v9, v7

    .line 81
    move v10, v9

    .line 82
    :goto_2
    if-lez v0, :cond_1a

    .line 83
    .line 84
    sub-int v11, v0, v2

    .line 85
    .line 86
    if-eq v11, v4, :cond_d

    .line 87
    .line 88
    if-eq v11, v3, :cond_7

    .line 89
    .line 90
    if-lez v8, :cond_17

    .line 91
    .line 92
    add-int/lit8 v8, v8, -0x1

    .line 93
    .line 94
    if-nez v8, :cond_17

    .line 95
    .line 96
    if-ltz v2, :cond_6

    .line 97
    .line 98
    move v10, v2

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    move v10, p0

    .line 101
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-ne v9, v11, :cond_17

    .line 106
    .line 107
    add-int/lit8 v11, v9, -0x1

    .line 108
    .line 109
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-ne v11, v5, :cond_17

    .line 114
    .line 115
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 116
    .line 117
    goto/16 :goto_c

    .line 118
    .line 119
    :cond_7
    add-int/lit8 v11, v2, 0x1

    .line 120
    .line 121
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-ne v11, v5, :cond_b

    .line 126
    .line 127
    add-int/lit8 v11, v2, 0x2

    .line 128
    .line 129
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    if-eq v11, v5, :cond_8

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_8
    if-gez v9, :cond_9

    .line 137
    .line 138
    move v9, v0

    .line 139
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    add-int/lit8 v0, v2, -0x1

    .line 142
    .line 143
    :goto_5
    if-ltz v0, :cond_a

    .line 144
    .line 145
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eq v10, v1, :cond_a

    .line 150
    .line 151
    add-int/lit8 v0, v0, -0x1

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_a
    move v10, v2

    .line 155
    move v2, v0

    .line 156
    move v0, v10

    .line 157
    goto :goto_2

    .line 158
    :cond_b
    :goto_6
    if-lez v8, :cond_17

    .line 159
    .line 160
    add-int/lit8 v8, v8, -0x1

    .line 161
    .line 162
    if-nez v8, :cond_17

    .line 163
    .line 164
    if-ltz v2, :cond_c

    .line 165
    .line 166
    move v10, v2

    .line 167
    goto :goto_7

    .line 168
    :cond_c
    move v10, p0

    .line 169
    :goto_7
    if-lez v10, :cond_17

    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    if-ne v9, v11, :cond_17

    .line 176
    .line 177
    add-int/lit8 v11, v9, -0x1

    .line 178
    .line 179
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-ne v11, v5, :cond_17

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_d
    add-int/lit8 v11, v2, 0x1

    .line 187
    .line 188
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v12

    .line 192
    if-eq v12, v5, :cond_f

    .line 193
    .line 194
    if-lez v8, :cond_17

    .line 195
    .line 196
    add-int/lit8 v8, v8, -0x1

    .line 197
    .line 198
    if-nez v8, :cond_17

    .line 199
    .line 200
    if-ltz v2, :cond_e

    .line 201
    .line 202
    move v10, v2

    .line 203
    goto :goto_8

    .line 204
    :cond_e
    move v10, p0

    .line 205
    :goto_8
    if-lez v10, :cond_17

    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    if-ne v9, v11, :cond_17

    .line 212
    .line 213
    add-int/lit8 v11, v9, -0x1

    .line 214
    .line 215
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-ne v11, v5, :cond_17

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_f
    if-gez v2, :cond_10

    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    if-le v12, v4, :cond_10

    .line 229
    .line 230
    const/4 v12, 0x1

    .line 231
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    if-ne v12, v1, :cond_10

    .line 236
    .line 237
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v12

    .line 241
    if-ne v12, v1, :cond_10

    .line 242
    .line 243
    goto :goto_c

    .line 244
    :cond_10
    if-gez v9, :cond_11

    .line 245
    .line 246
    move v9, v0

    .line 247
    :cond_11
    if-ltz v2, :cond_15

    .line 248
    .line 249
    if-nez v2, :cond_12

    .line 250
    .line 251
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    if-ne v10, v1, :cond_12

    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    if-ne v0, v10, :cond_13

    .line 263
    .line 264
    move v10, v11

    .line 265
    goto :goto_9

    .line 266
    :cond_13
    move v10, v2

    .line 267
    :goto_9
    add-int/lit8 v0, v2, -0x1

    .line 268
    .line 269
    :goto_a
    if-ltz v0, :cond_14

    .line 270
    .line 271
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    if-eq v11, v1, :cond_14

    .line 276
    .line 277
    add-int/lit8 v0, v0, -0x1

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_14
    move v13, v2

    .line 281
    move v2, v0

    .line 282
    move v0, v13

    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :cond_15
    :goto_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    if-ge v9, v10, :cond_16

    .line 290
    .line 291
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-ne v10, v1, :cond_16

    .line 296
    .line 297
    add-int/lit8 v9, v9, 0x1

    .line 298
    .line 299
    :cond_16
    move v10, v11

    .line 300
    :cond_17
    :goto_c
    if-gtz v8, :cond_19

    .line 301
    .line 302
    if-ltz v10, :cond_19

    .line 303
    .line 304
    if-lt v9, v10, :cond_19

    .line 305
    .line 306
    invoke-virtual {v6, v10, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    if-lez v8, :cond_18

    .line 310
    .line 311
    move v9, v0

    .line 312
    move v10, v7

    .line 313
    goto :goto_d

    .line 314
    :cond_18
    move v9, v7

    .line 315
    move v10, v9

    .line 316
    :cond_19
    :goto_d
    add-int/lit8 v0, v2, -0x1

    .line 317
    .line 318
    :goto_e
    if-ltz v0, :cond_14

    .line 319
    .line 320
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    if-eq v11, v1, :cond_14

    .line 325
    .line 326
    add-int/lit8 v0, v0, -0x1

    .line 327
    .line 328
    goto :goto_e

    .line 329
    :cond_1a
    if-lez v8, :cond_1b

    .line 330
    .line 331
    const/4 p0, 0x0

    .line 332
    return-object p0

    .line 333
    :cond_1b
    if-ltz v9, :cond_1c

    .line 334
    .line 335
    invoke-virtual {v6, v10, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    :cond_1c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    :cond_1d
    :goto_f
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_6

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    move v3, v2

    .line 17
    :goto_0
    const/4 v4, 0x2

    .line 18
    const/16 v5, 0x3f

    .line 19
    .line 20
    const/16 v6, 0x2f

    .line 21
    .line 22
    if-ge v2, v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eq v7, v6, :cond_1

    .line 29
    .line 30
    if-eq v7, v5, :cond_4

    .line 31
    .line 32
    move v3, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    if-ne v3, v4, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    :goto_2
    if-ge v3, v4, :cond_5

    .line 43
    .line 44
    :cond_4
    return-object p0

    .line 45
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p0, v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    :goto_3
    if-ge v2, v0, :cond_9

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eq v7, v6, :cond_7

    .line 64
    .line 65
    if-eq v7, v5, :cond_6

    .line 66
    .line 67
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    move v3, v1

    .line 71
    goto :goto_4

    .line 72
    :cond_6
    invoke-virtual {v4, p0, v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_7
    add-int/lit8 v8, v3, 0x1

    .line 77
    .line 78
    if-nez v3, :cond_8

    .line 79
    .line 80
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    :cond_8
    move v3, v8

    .line 84
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_9
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :cond_a
    :goto_6
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move-object v3, v0

    .line 11
    move v4, v2

    .line 12
    move v5, v4

    .line 13
    move v6, v5

    .line 14
    :goto_0
    if-ge v4, v1, :cond_6

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const/16 v8, 0x25

    .line 21
    .line 22
    if-ne v7, v8, :cond_2

    .line 23
    .line 24
    add-int/lit8 v8, v4, 0x2

    .line 25
    .line 26
    if-ge v8, v1, :cond_2

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-array v0, v1, [C

    .line 31
    .line 32
    new-array v3, v1, [B

    .line 33
    .line 34
    invoke-virtual {p0, v2, v4, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 35
    .line 36
    .line 37
    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    const/16 v9, 0x10

    .line 42
    .line 43
    const/4 v10, 0x2

    .line 44
    invoke-static {p0, v4, v10, v9}, Lorg/eclipse/jetty/util/n;->e(Ljava/lang/String;III)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    and-int/lit16 v4, v4, 0xff

    .line 49
    .line 50
    int-to-byte v4, v4

    .line 51
    aput-byte v4, v3, v5

    .line 52
    .line 53
    move v5, v7

    .line 54
    move v4, v8

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v8, 0x3b

    .line 57
    .line 58
    if-ne v7, v8, :cond_3

    .line 59
    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    new-array v0, v1, [C

    .line 63
    .line 64
    invoke-virtual {p0, v2, v4, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    if-nez v3, :cond_4

    .line 69
    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    if-lez v5, :cond_5

    .line 74
    .line 75
    :try_start_0
    new-instance v8, Ljava/lang/String;

    .line 76
    .line 77
    sget-object v9, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {v8, v3, v2, v5, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    new-instance v8, Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v8, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v8, v2, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    add-int/2addr v6, v5

    .line 100
    move v5, v2

    .line 101
    :cond_5
    add-int/lit8 v8, v6, 0x1

    .line 102
    .line 103
    aput-char v7, v0, v6

    .line 104
    .line 105
    move v6, v8

    .line 106
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    move v4, v6

    .line 110
    :goto_3
    if-nez v0, :cond_7

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_7
    if-lez v5, :cond_8

    .line 114
    .line 115
    :try_start_1
    new-instance p0, Ljava/lang/String;

    .line 116
    .line 117
    sget-object v1, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-direct {p0, v3, v2, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :catch_1
    new-instance p0, Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {p0, v3, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 126
    .line 127
    .line 128
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {p0, v2, v1, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    add-int/2addr v4, p0

    .line 140
    :cond_8
    new-instance p0, Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {p0, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 143
    .line 144
    .line 145
    return-object p0
.end method

.method public static e([BII)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    if-ge v2, p2, :cond_4

    .line 6
    .line 7
    add-int v4, v2, p1

    .line 8
    .line 9
    aget-byte v5, p0, v4

    .line 10
    .line 11
    const/16 v6, 0x25

    .line 12
    .line 13
    if-ne v5, v6, :cond_0

    .line 14
    .line 15
    add-int/lit8 v6, v2, 0x2

    .line 16
    .line 17
    if-ge v6, p2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-static {p0, v4, v5, v2}, Lorg/eclipse/jetty/util/n;->f([BIII)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    and-int/lit16 v2, v2, 0xff

    .line 29
    .line 30
    int-to-byte v5, v2

    .line 31
    move v2, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/16 v4, 0x3b

    .line 34
    .line 35
    if-ne v5, v4, :cond_1

    .line 36
    .line 37
    move p2, v2

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    if-nez v0, :cond_2

    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 45
    .line 46
    new-array v0, p2, [B

    .line 47
    .line 48
    move v4, v1

    .line 49
    :goto_2
    if-ge v4, v3, :cond_3

    .line 50
    .line 51
    add-int v6, v4, p1

    .line 52
    .line 53
    aget-byte v6, p0, v6

    .line 54
    .line 55
    aput-byte v6, v0, v4

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .line 61
    .line 62
    aput-byte v5, v0, v3

    .line 63
    .line 64
    move v3, v4

    .line 65
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    :goto_4
    if-nez v0, :cond_5

    .line 69
    .line 70
    sget-object v0, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_5
    sget-object p0, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, v1, v3, p0}, Lorg/eclipse/jetty/util/m;->g([BIILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p0}, Lorg/eclipse/jetty/util/o;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/16 v1, 0x3f

    .line 4
    .line 5
    const/16 v2, 0x3e

    .line 6
    .line 7
    const/16 v3, 0x3c

    .line 8
    .line 9
    const/16 v4, 0x3b

    .line 10
    .line 11
    const/16 v5, 0x23

    .line 12
    .line 13
    const/16 v6, 0x22

    .line 14
    .line 15
    const/16 v7, 0x27

    .line 16
    .line 17
    const/16 v8, 0x20

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/16 v10, 0x25

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    .line 25
    move v12, v9

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    if-ge v12, v13, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v13

    .line 36
    if-eq v13, v8, :cond_1

    .line 37
    .line 38
    if-eq v13, v10, :cond_1

    .line 39
    .line 40
    if-eq v13, v7, :cond_1

    .line 41
    .line 42
    if-eq v13, v6, :cond_1

    .line 43
    .line 44
    if-eq v13, v5, :cond_1

    .line 45
    .line 46
    if-eq v13, v4, :cond_1

    .line 47
    .line 48
    if-eq v13, v3, :cond_1

    .line 49
    .line 50
    if-eq v13, v2, :cond_1

    .line 51
    .line 52
    if-eq v13, v1, :cond_1

    .line 53
    .line 54
    const/16 v14, 0x7f

    .line 55
    .line 56
    if-le v13, v14, :cond_0

    .line 57
    .line 58
    :try_start_0
    sget-object v12, Lorg/eclipse/jetty/util/o;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v12
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    new-instance v13, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    mul-int/lit8 v14, v14, 0x2

    .line 71
    .line 72
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .line 74
    .line 75
    move-object v15, v13

    .line 76
    move-object v13, v12

    .line 77
    move-object v12, v15

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v1

    .line 86
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    mul-int/lit8 v13, v13, 0x2

    .line 96
    .line 97
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .line 99
    .line 100
    :goto_1
    move-object v13, v11

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move-object/from16 v12, p0

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :goto_2
    if-nez v12, :cond_3

    .line 106
    .line 107
    return-object v11

    .line 108
    :cond_3
    move-object v11, v13

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move-object/from16 v12, p0

    .line 111
    .line 112
    :goto_3
    monitor-enter v12

    .line 113
    if-eqz v11, :cond_f

    .line 114
    .line 115
    :goto_4
    :try_start_1
    array-length v0, v11

    .line 116
    if-ge v9, v0, :cond_19

    .line 117
    .line 118
    aget-byte v0, v11, v9

    .line 119
    .line 120
    if-eq v0, v8, :cond_e

    .line 121
    .line 122
    if-eq v0, v10, :cond_d

    .line 123
    .line 124
    if-eq v0, v7, :cond_c

    .line 125
    .line 126
    if-eq v0, v6, :cond_b

    .line 127
    .line 128
    if-eq v0, v5, :cond_a

    .line 129
    .line 130
    if-eq v0, v4, :cond_9

    .line 131
    .line 132
    if-eq v0, v3, :cond_8

    .line 133
    .line 134
    if-eq v0, v2, :cond_7

    .line 135
    .line 136
    if-eq v0, v1, :cond_6

    .line 137
    .line 138
    if-gez v0, :cond_5

    .line 139
    .line 140
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v12}, Lorg/eclipse/jetty/util/n;->g(BLjava/lang/Appendable;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto/16 :goto_8

    .line 149
    .line 150
    :cond_5
    int-to-char v0, v0

    .line 151
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_6
    const-string v0, "%3F"

    .line 156
    .line 157
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    const-string v0, "%3E"

    .line 162
    .line 163
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_8
    const-string v0, "%3C"

    .line 168
    .line 169
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_9
    const-string v0, "%3B"

    .line 174
    .line 175
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_a
    const-string v0, "%23"

    .line 180
    .line 181
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_b
    const-string v0, "%22"

    .line 186
    .line 187
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_c
    const-string v0, "%27"

    .line 192
    .line 193
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_d
    const-string v0, "%25"

    .line 198
    .line 199
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_e
    const-string v0, "%20"

    .line 204
    .line 205
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_f
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-ge v9, v11, :cond_19

    .line 216
    .line 217
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eq v11, v8, :cond_18

    .line 222
    .line 223
    if-eq v11, v10, :cond_17

    .line 224
    .line 225
    if-eq v11, v7, :cond_16

    .line 226
    .line 227
    if-eq v11, v6, :cond_15

    .line 228
    .line 229
    if-eq v11, v5, :cond_14

    .line 230
    .line 231
    if-eq v11, v4, :cond_13

    .line 232
    .line 233
    if-eq v11, v3, :cond_12

    .line 234
    .line 235
    if-eq v11, v2, :cond_11

    .line 236
    .line 237
    if-eq v11, v1, :cond_10

    .line 238
    .line 239
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_10
    const-string v11, "%3F"

    .line 244
    .line 245
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_11
    const-string v11, "%3E"

    .line 250
    .line 251
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_12
    const-string v11, "%3C"

    .line 256
    .line 257
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_13
    const-string v11, "%3B"

    .line 262
    .line 263
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_14
    const-string v11, "%23"

    .line 268
    .line 269
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_15
    const-string v11, "%22"

    .line 274
    .line 275
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_16
    const-string v11, "%27"

    .line 280
    .line 281
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_17
    const-string v11, "%25"

    .line 286
    .line 287
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_18
    const-string v11, "%20"

    .line 292
    .line 293
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_19
    monitor-exit v12

    .line 300
    return-object v12

    .line 301
    :goto_8
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    throw v0
.end method
