.class final Lcom/anythink/core/common/d/s$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d/s;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/common/d/s;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/d/s;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/d/s$5;->b:Lcom/anythink/core/common/d/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "anythink"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "android.support.v4.content.LocalBroadcastManager"

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/v/p;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v2, "isCleartextTrafficPermitted=false, please check whether the \"android:networkSecurityConfig\" configuration in the AndroidManifest.xml of the application module is correct"

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :catchall_1
    :cond_0
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "com.anythink.network"

    .line 27
    .line 28
    new-instance v4, Ldalvik/system/DexFile;

    .line 29
    .line 30
    iget-object v5, v0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-direct {v4, v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    const-string v6, "InitManager"

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    const-string v6, "$"

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_1

    .line 76
    .line 77
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v5, 0x0

    .line 89
    :goto_1
    if-ge v5, v3, :cond_9

    .line 90
    .line 91
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    :try_start_3
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-string v7, "getInstance"

    .line 104
    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 107
    .line 108
    .line 109
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 110
    :try_start_4
    invoke-virtual {v7, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 114
    goto :goto_2

    .line 115
    :catchall_2
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v9, "Cannot instantiate "

    .line 118
    .line 119
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v6, ", please check if a third-party SDK is imported"

    .line 130
    .line 131
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :goto_2
    if-eqz v8, :cond_8

    .line 142
    .line 143
    instance-of v6, v8, Lcom/anythink/core/api/ATInitMediation;

    .line 144
    .line 145
    if-eqz v6, :cond_8

    .line 146
    .line 147
    check-cast v8, Lcom/anythink/core/api/ATInitMediation;

    .line 148
    .line 149
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getNetworkName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_3

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getNetworkVersion()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-nez v7, :cond_4

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    const-string v7, "NetworkName: "

    .line 172
    .line 173
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    :goto_3
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getNetworkSDKClass()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-static {v6}, Lcom/anythink/core/common/d/s;->i(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getPluginClassStatus()Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-static {v7}, Lcom/anythink/core/common/d/s;->b(Ljava/util/Map;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    iget-object v9, v0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getActivityStatus()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-static {v9, v10}, Lcom/anythink/core/common/d/s;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    iget-object v10, v0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 207
    .line 208
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getServiceStatus()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v10, v11}, Lcom/anythink/core/common/d/s;->b(Landroid/content/Context;Ljava/util/List;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    iget-object v11, v0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 217
    .line 218
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getProviderStatus()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    invoke-static {v11, v12}, Lcom/anythink/core/common/d/s;->c(Landroid/content/Context;Ljava/util/List;)Z

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    iget-object v12, v0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 227
    .line 228
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getMetaValutStatus()Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    invoke-static {v12, v13}, Lcom/anythink/core/common/d/s;->d(Landroid/content/Context;Ljava/util/List;)Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    iget-object v13, v0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getPermissionStatus()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    invoke-static {v13, v14}, Lcom/anythink/core/common/d/s;->e(Landroid/content/Context;Ljava/util/List;)Z

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    iget-object v14, v0, Lcom/anythink/core/common/d/s$5;->b:Lcom/anythink/core/common/d/s;

    .line 247
    .line 248
    iget-object v15, v0, Lcom/anythink/core/common/d/s$5;->a:Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getResourceStatus()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getDevBundleName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v14, v15, v4, v0}, Lcom/anythink/core/common/d/s;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_5

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v15, "Resource: The "

    .line 272
    .line 273
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v15, " resources are missing. If shrinkResources is enabled, the "

    .line 280
    .line 281
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v0, " resources must be added to the whitelist (keep.xml)"

    .line 288
    .line 289
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 297
    .line 298
    .line 299
    :goto_4
    const/4 v0, 0x1

    .line 300
    :try_start_6
    invoke-virtual {v8}, Lcom/anythink/core/api/ATInitMediation;->getAdapterBridgeVersion()I

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    invoke-static {v8}, Lcom/anythink/core/common/d/s;->c(I)Z

    .line 305
    .line 306
    .line 307
    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 308
    goto :goto_5

    .line 309
    :catchall_3
    move v8, v0

    .line 310
    :goto_5
    if-eqz v6, :cond_6

    .line 311
    .line 312
    if-eqz v7, :cond_6

    .line 313
    .line 314
    if-eqz v9, :cond_6

    .line 315
    .line 316
    if-eqz v10, :cond_6

    .line 317
    .line 318
    if-eqz v11, :cond_6

    .line 319
    .line 320
    if-eqz v12, :cond_6

    .line 321
    .line 322
    if-eqz v13, :cond_6

    .line 323
    .line 324
    if-eqz v4, :cond_6

    .line 325
    .line 326
    if-eqz v8, :cond_6

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_6
    const/4 v0, 0x0

    .line 330
    :goto_6
    if-eqz v0, :cond_7

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_7
    :try_start_7
    const-string v0, "Status: Fail"

    .line 334
    .line 335
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 336
    .line 337
    .line 338
    :catchall_4
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :catch_0
    :cond_9
    return-void
.end method
