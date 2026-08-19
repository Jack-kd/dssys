.class public Lcom/meishu/sdk/core/loader/c$g;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/c;->loadAd(Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/meishu/sdk/core/loader/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/loader/c$g;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/core/loader/c;->posId:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getRstUrl()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    array-length v2, v0

    .line 19
    move v3, v1

    .line 20
    :goto_0
    if-ge v3, v2, :cond_0

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v6, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 30
    .line 31
    invoke-static {v6}, Lcom/meishu/sdk/core/loader/c;->access$700(Lcom/meishu/sdk/core/loader/c;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v6, "."

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v7, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 44
    .line 45
    invoke-static {v7}, Lcom/meishu/sdk/core/loader/c;->access$400(Lcom/meishu/sdk/core/loader/c;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 56
    .line 57
    invoke-static {v6}, Lcom/meishu/sdk/core/loader/c;->access$800(Lcom/meishu/sdk/core/loader/c;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "__MS_STAT__"

    .line 69
    .line 70
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-instance v6, Lcom/meishu/sdk/core/utils/i;

    .line 85
    .line 86
    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-static {v5, v4, v6}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMonitorUrl()[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMonitorUrl()[Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    array-length v0, v0

    .line 110
    if-lez v0, :cond_1

    .line 111
    .line 112
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 113
    .line 114
    const-string v2, "MS"

    .line 115
    .line 116
    invoke-static {v0, v2}, Lcom/meishu/sdk/platform/ADPlatformHelper;->checkTypeSupport(Lcom/meishu/sdk/core/loader/c;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_1

    .line 121
    .line 122
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setHasMeishuAd(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    move v2, v1

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 131
    .line 132
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 133
    .line 134
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/loader/c;->access$900(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 140
    .line 141
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/loader/c;->access$1000(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 145
    .line 146
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 147
    .line 148
    new-instance v3, Lcom/meishu/sdk/core/loader/c$g$a;

    .line 149
    .line 150
    invoke-direct {v3, p0}, Lcom/meishu/sdk/core/loader/c$g$a;-><init>(Lcom/meishu/sdk/core/loader/c$g;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSdk()[Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 169
    .line 170
    invoke-static {v0, v3, v4}, Lcom/meishu/sdk/platform/ADPlatformHelper;->filterValidSdk(Landroid/content/Context;[Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/loader/c;)[Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 175
    .line 176
    new-instance v4, Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    iget-object v6, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 183
    .line 184
    iget-object v7, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 185
    .line 186
    iget-object v8, p0, Lcom/meishu/sdk/core/loader/c$g;->b:Ljava/util/Map;

    .line 187
    .line 188
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/meishu/sdk/core/loader/concurrent/e;-><init>(Landroid/content/Context;Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/loader/c;->access$1102(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/loader/concurrent/e;)Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 192
    .line 193
    .line 194
    if-eqz v2, :cond_4

    .line 195
    .line 196
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLayout()Lcom/meishu/sdk/core/domain/LayoutBean;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    if-eqz v3, :cond_3

    .line 203
    .line 204
    sget-object v3, Lcom/meishu/sdk/core/utils/c$a;->a:Lcom/meishu/sdk/core/utils/c;

    .line 205
    .line 206
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 207
    .line 208
    iget-object v4, v4, Lcom/meishu/sdk/core/loader/c;->context:Landroid/content/Context;

    .line 209
    .line 210
    iget-object v5, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 211
    .line 212
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLayout()Lcom/meishu/sdk/core/domain/LayoutBean;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    iput-object v5, v3, Lcom/meishu/sdk/core/utils/c;->a:Lcom/meishu/sdk/core/domain/LayoutBean;

    .line 217
    .line 218
    :try_start_0
    new-instance v5, Lcom/google/gson/Gson;

    .line 219
    .line 220
    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 221
    .line 222
    .line 223
    iget-object v3, v3, Lcom/meishu/sdk/core/utils/c;->a:Lcom/meishu/sdk/core/domain/LayoutBean;

    .line 224
    .line 225
    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    new-instance v5, Ljava/io/File;

    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    const-string v6, "ms_cache"

    .line 236
    .line 237
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_2

    .line 245
    .line 246
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :catch_0
    move-exception v3

    .line 251
    goto :goto_3

    .line 252
    :cond_2
    :goto_2
    new-instance v4, Ljava/io/File;

    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    const-string v6, "ms_temp.json"

    .line 259
    .line 260
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    new-instance v5, Ljava/io/BufferedWriter;

    .line 264
    .line 265
    new-instance v6, Ljava/io/FileWriter;

    .line 266
    .line 267
    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 268
    .line 269
    .line 270
    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    .line 285
    .line 286
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 287
    .line 288
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_id()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    :try_start_1
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSourceEventUrl()[Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-static {v5, v4}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setEventUrl([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :catch_1
    move-exception v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    .line 307
    .line 308
    :goto_5
    iget-object v3, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 309
    .line 310
    iget-object v4, v3, Lcom/meishu/sdk/core/loader/c;->context:Landroid/content/Context;

    .line 311
    .line 312
    iget-object v5, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 313
    .line 314
    invoke-virtual {v3, v4, v5}, Lcom/meishu/sdk/core/loader/c;->createMeishuAdDelegate(Landroid/content/Context;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    iget-object v4, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 319
    .line 320
    invoke-static {v4}, Lcom/meishu/sdk/core/loader/c;->access$1100(Lcom/meishu/sdk/core/loader/c;)Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    iput-object v3, v4, Lcom/meishu/sdk/core/loader/concurrent/e;->f:Lcom/meishu/sdk/core/loader/d;

    .line 325
    .line 326
    :cond_4
    if-eqz v0, :cond_5

    .line 327
    .line 328
    array-length v3, v0

    .line 329
    if-lez v3, :cond_5

    .line 330
    .line 331
    iget-object v1, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 332
    .line 333
    invoke-static {v1}, Lcom/meishu/sdk/core/loader/c;->access$1100(Lcom/meishu/sdk/core/loader/c;)Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/c$g;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 338
    .line 339
    invoke-virtual {v1, v0, v2}, Lcom/meishu/sdk/core/loader/concurrent/e;->a([Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_5
    if-eqz v2, :cond_6

    .line 344
    .line 345
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 346
    .line 347
    invoke-static {v0}, Lcom/meishu/sdk/core/loader/c;->access$1100(Lcom/meishu/sdk/core/loader/c;)Lcom/meishu/sdk/core/loader/concurrent/e;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    iget-object v2, v0, Lcom/meishu/sdk/core/loader/concurrent/e;->b:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 352
    .line 353
    const/4 v3, 0x0

    .line 354
    invoke-virtual {v0, v3, v2}, Lcom/meishu/sdk/core/loader/concurrent/e;->b([Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-nez v2, :cond_7

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/concurrent/e;->a(Z)V

    .line 361
    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_6
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$g;->c:Lcom/meishu/sdk/core/loader/c;

    .line 365
    .line 366
    const-string v1, "\u52a0\u8f7d\u5e73\u53f0\u4e3a\u7a7a"

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_7
    :goto_6
    return-void
.end method
