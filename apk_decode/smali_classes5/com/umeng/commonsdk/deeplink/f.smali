.class final Lcom/umeng/commonsdk/deeplink/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/deeplink/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DeepLinkRequest"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/umeng/commonsdk/deeplink/f$a;)V
    .locals 10

    .line 1
    const-string v0, "\u7f51\u7edc\u9519\u8bef\u3002"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "UTF-8"

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    const-string v3, "--->>> [deeplink] DDL request start: url=https://one.umops.com/api/deferredLink"

    .line 12
    .line 13
    const-string v4, "MobclickRT"

    .line 14
    .line 15
    invoke-static {v4, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v3, -0x4

    .line 19
    const/4 v5, 0x0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v6}, Lcom/umeng/analytics/pro/ay;->a([BLjava/io/OutputStream;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {p0, v6}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance v7, Ljava/net/URL;

    .line 51
    .line 52
    const-string v8, "https://one.umops.com/api/deferredLink"

    .line 53
    .line 54
    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 62
    .line 63
    :try_start_1
    const-string v8, "TLS"

    .line 64
    .line 65
    invoke-static {v8}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    new-instance v9, Ljava/security/SecureRandom;

    .line 70
    .line 71
    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v5, v5, v9}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v7, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 82
    .line 83
    .line 84
    const-string v5, "POST"

    .line 85
    .line 86
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/16 v5, 0x3a98

    .line 90
    .line 91
    invoke-virtual {v7, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 95
    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    invoke-virtual {v7, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v5}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 102
    .line 103
    .line 104
    const-string v8, "Content-Type"

    .line 105
    .line 106
    const-string v9, "application/json"

    .line 107
    .line 108
    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v8, "appkey"

    .line 112
    .line 113
    sget-object v9, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v7, v8, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v8, p0}, Ljava/io/OutputStream;->write([B)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    const/16 v8, 0xc8

    .line 139
    .line 140
    if-ne p0, v8, :cond_2

    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 143
    .line 144
    .line 145
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    :try_start_2
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-static {v8, v6}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    new-instance v8, Ljava/lang/String;

    .line 155
    .line 156
    invoke-direct {v8, v6, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v2, Lorg/json/JSONObject;

    .line 160
    .line 161
    invoke-direct {v2, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v9, "--->>> [deeplink] DDL response: "

    .line 170
    .line 171
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-static {v4, v6}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v6, "status"

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    new-instance v8, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v9, "--->>> [deeplink] DDL response status="

    .line 197
    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-static {v4, v8}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    if-ne v6, v5, :cond_1

    .line 212
    .line 213
    const-string v5, "params"

    .line 214
    .line 215
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const-string v6, "targetPath"

    .line 220
    .line 221
    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    const-string v8, "refId"

    .line 226
    .line 227
    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-interface {p1, v5, v6, v1}, Lcom/umeng/commonsdk/deeplink/f$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    .line 236
    goto :goto_1

    .line 237
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    .line 238
    .line 239
    const-string v2, "\u670d\u52a1\u7aef\u5339\u914d\u5931\u8d25\u3002"

    .line 240
    .line 241
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const/4 v2, -0x1

    .line 245
    invoke-interface {p1, v2, v1}, Lcom/umeng/commonsdk/deeplink/f$a;->a(ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .line 247
    .line 248
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :catchall_1
    move-exception p0

    .line 253
    move-object v5, v7

    .line 254
    goto :goto_3

    .line 255
    :goto_1
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    .line 256
    .line 257
    .line 258
    throw v1

    .line 259
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    .line 260
    .line 261
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, v3, p0}, Lcom/umeng/commonsdk/deeplink/f$a;->a(ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    .line 266
    .line 267
    :goto_2
    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :catchall_2
    move-exception p0

    .line 272
    :goto_3
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v2, "--->>> [deeplink] DDL request error: "

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-static {v4, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    new-instance p0, Ljava/lang/Exception;

    .line 297
    .line 298
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, v3, p0}, Lcom/umeng/commonsdk/deeplink/f$a;->a(ILjava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 302
    .line 303
    .line 304
    if-eqz v5, :cond_3

    .line 305
    .line 306
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 307
    .line 308
    .line 309
    :catchall_3
    :cond_3
    :goto_4
    return-void

    .line 310
    :catchall_4
    move-exception p0

    .line 311
    if-eqz v5, :cond_4

    .line 312
    .line 313
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 314
    .line 315
    .line 316
    :catchall_5
    :cond_4
    throw p0
.end method
