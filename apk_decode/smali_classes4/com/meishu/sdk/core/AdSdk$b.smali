.class public Lcom/meishu/sdk/core/AdSdk$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/AdSdk;->setInstallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 7

    .line 1
    const-string v0, "install_time"

    .line 2
    .line 3
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v1, v2, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 57
    .line 58
    .line 59
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v3, "splshsty"

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sput v1, Lcom/meishu/sdk/core/utils/r0;->e:I

    .line 71
    .line 72
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v3, "dpflag"

    .line 77
    .line 78
    invoke-virtual {v1, v3, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    new-instance v3, Lcom/meishu/sdk/core/AdSdk$b$a;

    .line 89
    .line 90
    invoke-direct {v3, p0}, Lcom/meishu/sdk/core/AdSdk$b$a;-><init>(Lcom/meishu/sdk/core/AdSdk$b;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/util/List;

    .line 102
    .line 103
    sput-object v1, Lcom/meishu/sdk/core/utils/r0;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v3, "black_scheme"

    .line 115
    .line 116
    invoke-virtual {v1, v3, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_2

    .line 125
    .line 126
    invoke-static {v1}, Lcom/meishu/sdk/core/AdSdk;->access$200(Ljava/lang/String;)Ljava/util/HashMap;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    sput-object v1, Lcom/meishu/sdk/core/utils/r0;->h:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    .line 132
    :catchall_1
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v3, "happybean"

    .line 137
    .line 138
    invoke-virtual {v1, v3, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-nez v3, :cond_3

    .line 147
    .line 148
    const-class v3, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 155
    .line 156
    if-eqz v1, :cond_3

    .line 157
    .line 158
    sput-object v1, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :catchall_2
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_2
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v3, "dpstay"

    .line 170
    .line 171
    const/4 v4, 0x2

    .line 172
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    sput v1, Lcom/meishu/sdk/core/utils/r0;->k:I

    .line 177
    .line 178
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v3, "field_export"

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    sput-object v1, Lcom/meishu/sdk/core/utils/r0;->n:Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const-string v3, "use_browser"

    .line 200
    .line 201
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    sput v1, Lcom/meishu/sdk/core/utils/r0;->o:I

    .line 206
    .line 207
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v3, "olp"

    .line 212
    .line 213
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    sput v1, Lcom/meishu/sdk/core/utils/r0;->q:I

    .line 218
    .line 219
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const-string v3, "syncSave"

    .line 224
    .line 225
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    sput v1, Lcom/meishu/sdk/core/utils/r0;->r:I

    .line 230
    .line 231
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string v3, "due"

    .line 236
    .line 237
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    sput v1, Lcom/meishu/sdk/core/utils/r0;->s:I

    .line 242
    .line 243
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v3, "noldp"

    .line 248
    .line 249
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    sput v1, Lcom/meishu/sdk/core/utils/r0;->t:I

    .line 254
    .line 255
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    const-string v3, "shakeTimeout"

    .line 260
    .line 261
    const-wide/16 v5, 0x0

    .line 262
    .line 263
    invoke-virtual {v1, v3, v5, v6}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    sput-wide v5, Lcom/meishu/sdk/core/utils/r0;->g:J

    .line 268
    .line 269
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const-string v3, "verbosity"

    .line 274
    .line 275
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    sput v1, Lcom/meishu/sdk/core/utils/r0;->i:I

    .line 280
    .line 281
    :try_start_4
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    const-string v3, "jbUrlPrefixes"

    .line 286
    .line 287
    invoke-virtual {v1, v3, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-nez v2, :cond_4

    .line 296
    .line 297
    new-instance v2, Lcom/meishu/sdk/core/AdSdk$b$b;

    .line 298
    .line 299
    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/AdSdk$b$b;-><init>(Lcom/meishu/sdk/core/AdSdk$b;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Ljava/util/List;

    .line 311
    .line 312
    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->p:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :catch_1
    move-exception v0

    .line 316
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->access$300()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    :cond_4
    :goto_3
    sget-object v0, Lcom/meishu/sdk/core/utils/f0;->a:Landroid/renderscript/RenderScript;

    .line 324
    .line 325
    :try_start_5
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    sput-object v0, Lcom/meishu/sdk/core/utils/f0;->a:Landroid/renderscript/RenderScript;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :catchall_3
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    .line 339
    .line 340
    :goto_4
    return-void
.end method
