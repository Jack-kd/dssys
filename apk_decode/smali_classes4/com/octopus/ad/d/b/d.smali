.class public Lcom/octopus/ad/d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "An Exception Caught"

    .line 2
    .line 3
    const-string v1, "OctopusAd"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/net/URL;

    .line 7
    .line 8
    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 16
    .line 17
    :try_start_1
    const-string v3, "POST"

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v3, p1

    .line 23
    const-string v4, "Content-Length"

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "Content-Type"

    .line 33
    .line 34
    const-string v4, "application/json"

    .line 35
    .line 36
    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x1388

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 55
    .line 56
    .line 57
    array-length v3, p1

    .line 58
    if-lez v3, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    move-object v5, v2

    .line 70
    move-object v6, v5

    .line 71
    move-object v4, v3

    .line 72
    move-object v3, v6

    .line 73
    goto/16 :goto_8

    .line 74
    .line 75
    :catch_0
    move-exception p1

    .line 76
    move-object v5, v2

    .line 77
    move-object v6, v5

    .line 78
    move-object v4, v3

    .line 79
    move-object v3, v6

    .line 80
    goto/16 :goto_d

    .line 81
    .line 82
    :catchall_1
    move-exception p1

    .line 83
    move-object v3, v2

    .line 84
    :goto_0
    move-object v4, v3

    .line 85
    move-object v5, v4

    .line 86
    :goto_1
    move-object v6, v5

    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :catch_1
    move-exception p1

    .line 90
    move-object v3, v2

    .line 91
    :goto_2
    move-object v4, v3

    .line 92
    move-object v5, v4

    .line 93
    :goto_3
    move-object v6, v5

    .line 94
    goto/16 :goto_d

    .line 95
    .line 96
    :cond_0
    move-object v3, v2

    .line 97
    :goto_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const/16 v4, 0xc8

    .line 102
    .line 103
    if-ne p1, v4, :cond_4

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    new-instance v4, Ljava/io/InputStreamReader;

    .line 110
    .line 111
    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 112
    .line 113
    .line 114
    :try_start_4
    new-instance v5, Ljava/io/BufferedReader;

    .line 115
    .line 116
    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 117
    .line 118
    .line 119
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    :goto_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    if-eqz v7, :cond_1

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :catchall_2
    move-exception v6

    .line 135
    move-object v8, v3

    .line 136
    move-object v3, p1

    .line 137
    move-object p1, v6

    .line 138
    move-object v6, v5

    .line 139
    move-object v5, v4

    .line 140
    move-object v4, v8

    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :catch_2
    move-exception v6

    .line 144
    move-object v8, v3

    .line 145
    move-object v3, p1

    .line 146
    move-object p1, v6

    .line 147
    move-object v6, v5

    .line 148
    move-object v5, v4

    .line 149
    move-object v4, v8

    .line 150
    goto/16 :goto_d

    .line 151
    .line 152
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 156
    if-eqz p1, :cond_2

    .line 157
    .line 158
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :catch_3
    move-exception p0

    .line 172
    invoke-static {v1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    .line 176
    .line 177
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :catch_4
    move-exception p0

    .line 182
    invoke-static {v1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    :goto_7
    return-object v2

    .line 186
    :catchall_3
    move-exception v5

    .line 187
    move-object v6, v3

    .line 188
    move-object v3, p1

    .line 189
    move-object p1, v5

    .line 190
    move-object v5, v4

    .line 191
    move-object v4, v6

    .line 192
    move-object v6, v2

    .line 193
    goto :goto_8

    .line 194
    :catch_5
    move-exception v5

    .line 195
    move-object v6, v3

    .line 196
    move-object v3, p1

    .line 197
    move-object p1, v5

    .line 198
    move-object v5, v4

    .line 199
    move-object v4, v6

    .line 200
    move-object v6, v2

    .line 201
    goto/16 :goto_d

    .line 202
    .line 203
    :catchall_4
    move-exception v4

    .line 204
    move-object v5, v3

    .line 205
    move-object v3, p1

    .line 206
    move-object p1, v4

    .line 207
    move-object v4, v5

    .line 208
    move-object v5, v2

    .line 209
    goto :goto_1

    .line 210
    :catch_6
    move-exception v4

    .line 211
    move-object v5, v3

    .line 212
    move-object v3, p1

    .line 213
    move-object p1, v4

    .line 214
    move-object v4, v5

    .line 215
    move-object v5, v2

    .line 216
    goto :goto_3

    .line 217
    :cond_4
    if-eqz v3, :cond_b

    .line 218
    .line 219
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 220
    .line 221
    .line 222
    goto :goto_11

    .line 223
    :catch_7
    move-exception p0

    .line 224
    invoke-static {v1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    goto :goto_11

    .line 228
    :catchall_5
    move-exception p1

    .line 229
    move-object p0, v2

    .line 230
    move-object v3, p0

    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :catch_8
    move-exception p1

    .line 234
    move-object p0, v2

    .line 235
    move-object v3, p0

    .line 236
    goto/16 :goto_2

    .line 237
    .line 238
    :goto_8
    :try_start_9
    const-string v7, "A Throwable Caught"

    .line 239
    .line 240
    invoke-static {v1, v7, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 241
    .line 242
    .line 243
    if-eqz v3, :cond_7

    .line 244
    .line 245
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 246
    .line 247
    .line 248
    if-eqz v5, :cond_5

    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 251
    .line 252
    .line 253
    goto :goto_9

    .line 254
    :catch_9
    move-exception p0

    .line 255
    goto :goto_a

    .line 256
    :cond_5
    :goto_9
    if-eqz v6, :cond_6

    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 259
    .line 260
    .line 261
    :cond_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 262
    .line 263
    .line 264
    goto :goto_b

    .line 265
    :goto_a
    invoke-static {v1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    :cond_7
    :goto_b
    if-eqz v4, :cond_b

    .line 269
    .line 270
    :goto_c
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 271
    .line 272
    .line 273
    goto :goto_11

    .line 274
    :catchall_6
    move-exception p1

    .line 275
    goto :goto_12

    .line 276
    :goto_d
    :try_start_c
    invoke-static {v1, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 277
    .line 278
    .line 279
    if-eqz v3, :cond_a

    .line 280
    .line 281
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 282
    .line 283
    .line 284
    if-eqz v5, :cond_8

    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 287
    .line 288
    .line 289
    goto :goto_e

    .line 290
    :catch_a
    move-exception p0

    .line 291
    goto :goto_f

    .line 292
    :cond_8
    :goto_e
    if-eqz v6, :cond_9

    .line 293
    .line 294
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 295
    .line 296
    .line 297
    :cond_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 298
    .line 299
    .line 300
    goto :goto_10

    .line 301
    :goto_f
    invoke-static {v1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    :cond_a
    :goto_10
    if-eqz v4, :cond_b

    .line 305
    .line 306
    goto :goto_c

    .line 307
    :cond_b
    :goto_11
    return-object v2

    .line 308
    :goto_12
    if-eqz v3, :cond_e

    .line 309
    .line 310
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 311
    .line 312
    .line 313
    if-eqz v5, :cond_c

    .line 314
    .line 315
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 316
    .line 317
    .line 318
    goto :goto_13

    .line 319
    :catch_b
    move-exception p0

    .line 320
    goto :goto_14

    .line 321
    :cond_c
    :goto_13
    if-eqz v6, :cond_d

    .line 322
    .line 323
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 324
    .line 325
    .line 326
    :cond_d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 327
    .line 328
    .line 329
    goto :goto_15

    .line 330
    :goto_14
    invoke-static {v1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    :cond_e
    :goto_15
    if-eqz v4, :cond_f

    .line 334
    .line 335
    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 336
    .line 337
    .line 338
    goto :goto_16

    .line 339
    :catch_c
    move-exception p0

    .line 340
    invoke-static {v1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    :cond_f
    :goto_16
    throw p1
.end method
