.class final Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aoW:Landroid/net/Network;

.field final synthetic aoX:Landroid/net/ConnectivityManager$NetworkCallback;

.field final synthetic aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoW:Landroid/net/Network;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoX:Landroid/net/ConnectivityManager$NetworkCallback;

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
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoW:Landroid/net/Network;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoW:Landroid/net/Network;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoR:Ljava/net/URL;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 33
    .line 34
    invoke-static {}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->yo()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->yo()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoS:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoT:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 104
    .line 105
    iget-object v3, v3, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 106
    .line 107
    invoke-static {v3}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->b(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)[Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const-string v4, "ipv4List"

    .line 112
    .line 113
    aget-object v5, v3, v1

    .line 114
    .line 115
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    const-string v4, "ipv6List"

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    aget-object v3, v3, v5

    .line 122
    .line 123
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 127
    .line 128
    iget-object v3, v3, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 129
    .line 130
    invoke-static {v3}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->c(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const-string v4, "networkType"

    .line 139
    .line 140
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const-class v3, Lcom/kwad/sdk/service/a/f;

    .line 144
    .line 145
    invoke-static {v3}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Lcom/kwad/sdk/service/a/f;

    .line 150
    .line 151
    invoke-interface {v3}, Lcom/kwad/sdk/service/a/f;->getAppName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v4, "packageName"

    .line 156
    .line 157
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-static {v2}, Lcom/kwad/sdk/utils/ac;->parseMap2JSON(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 167
    .line 168
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v3, v2}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)[Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    aget-object v3, v2, v1

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_5

    .line 183
    .line 184
    aget-object v3, v2, v5

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_1

    .line 191
    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :cond_1
    const-string v3, "sdkSecret"

    .line 195
    .line 196
    aget-object v4, v2, v1

    .line 197
    .line 198
    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v3, "sdkData"

    .line 202
    .line 203
    aget-object v2, v2, v5

    .line 204
    .line 205
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 209
    .line 210
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoS:Ljava/lang/String;

    .line 211
    .line 212
    const-string v3, "POST"

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const-string v3, "UTF-8"

    .line 219
    .line 220
    if-eqz v2, :cond_2

    .line 221
    .line 222
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 223
    .line 224
    .line 225
    const-string v1, "Charset"

    .line 226
    .line 227
    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v1, "Content-Type"

    .line 231
    .line 232
    const-string v2, "application/json"

    .line 233
    .line 234
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 242
    .line 243
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoU:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 253
    .line 254
    .line 255
    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 257
    .line 258
    .line 259
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    const/16 v2, 0xc8

    .line 264
    .line 265
    if-ne v1, v2, :cond_4

    .line 266
    .line 267
    new-instance v1, Ljava/io/BufferedReader;

    .line 268
    .line 269
    new-instance v2, Ljava/io/InputStreamReader;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 279
    .line 280
    .line 281
    const-string v0, ""

    .line 282
    .line 283
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    if-eqz v2, :cond_3

    .line 288
    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    goto :goto_2

    .line 305
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 306
    .line 307
    .line 308
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 309
    .line 310
    iget-object v1, v1, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 311
    .line 312
    invoke-static {v1, v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->b(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 318
    .line 319
    invoke-static {v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;)Landroid/net/ConnectivityManager;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoX:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_4
    iget-object v2, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 330
    .line 331
    iget-object v2, v2, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v2, v1, v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_5
    :goto_3
    return-void

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 346
    .line 347
    iget-object v0, v0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 348
    .line 349
    const-string v1, "network \u79fb\u52a8\u6570\u636e\u672a\u6253\u5f00"

    .line 350
    .line 351
    const/4 v2, -0x1

    .line 352
    invoke-static {v0, v2, v1}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :goto_4
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    iget-object v1, p0, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1$1;->aoY:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;

    .line 360
    .line 361
    iget-object v1, v1, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge$1;->aoV:Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;

    .line 362
    .line 363
    const/4 v2, -0x5

    .line 364
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v1, v2, v0}, Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;->a(Lcom/kwad/components/core/webview/jsPublicBridge/KSAdChinaMobileJSBridge;ILjava/lang/String;)V

    .line 369
    .line 370
    .line 371
    return-void
.end method
