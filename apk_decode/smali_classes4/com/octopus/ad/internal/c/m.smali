.class public Lcom/octopus/ad/internal/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/octopus/ad/internal/c/l;->a()Lcom/octopus/ad/internal/c/l;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object v2, v1, Lcom/octopus/ad/internal/c/l;->b:Lcom/octopus/ad/model/OctLocation;

    .line 8
    .line 9
    iget-boolean v3, v1, Lcom/octopus/ad/internal/c/l;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    const-string v4, "{}"

    .line 12
    .line 13
    const-string v5, "location"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v3, :cond_7

    .line 17
    .line 18
    :try_start_1
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUseLocation()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_7

    .line 33
    .line 34
    :cond_0
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move-object v6, v2

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v0, v5}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_7

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_7

    .line 71
    .line 72
    const-class v6, Lcom/octopus/ad/model/OctLocation;

    .line 73
    .line 74
    invoke-static {v3, v6}, Lcom/octopus/ad/internal/c/k;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    move-object v6, v3

    .line 79
    check-cast v6, Lcom/octopus/ad/model/OctLocation;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/location/LocationManager;

    .line 87
    .line 88
    const/4 v7, 0x1

    .line 89
    invoke-virtual {v3, v7}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_7

    .line 102
    .line 103
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-nez v8, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    if-nez v6, :cond_6

    .line 117
    .line 118
    new-instance v9, Lcom/octopus/ad/model/OctLocation;

    .line 119
    .line 120
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    .line 121
    .line 122
    .line 123
    move-result-wide v10

    .line 124
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    .line 125
    .line 126
    .line 127
    move-result-wide v12

    .line 128
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 129
    .line 130
    .line 131
    move-result-wide v15

    .line 132
    const/4 v14, 0x0

    .line 133
    invoke-direct/range {v9 .. v16}, Lcom/octopus/ad/model/OctLocation;-><init>(DDIJ)V

    .line 134
    .line 135
    .line 136
    move-object v6, v9

    .line 137
    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    invoke-virtual {v6}, Lcom/octopus/ad/model/OctLocation;->getTime()J

    .line 143
    .line 144
    .line 145
    move-result-wide v11

    .line 146
    cmp-long v9, v9, v11

    .line 147
    .line 148
    if-lez v9, :cond_4

    .line 149
    .line 150
    new-instance v10, Lcom/octopus/ad/model/OctLocation;

    .line 151
    .line 152
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    .line 153
    .line 154
    .line 155
    move-result-wide v11

    .line 156
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    .line 157
    .line 158
    .line 159
    move-result-wide v13

    .line 160
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v16

    .line 164
    const/4 v15, 0x0

    .line 165
    invoke-direct/range {v10 .. v17}, Lcom/octopus/ad/model/OctLocation;-><init>(DDIJ)V

    .line 166
    .line 167
    .line 168
    move-object v6, v10

    .line 169
    goto :goto_1

    .line 170
    :cond_7
    :goto_2
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    if-eqz v3, :cond_9

    .line 175
    .line 176
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lcom/octopus/ad/OctopusAdSdkController;->getLocation()Lcom/octopus/ad/model/OctLocation;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v3, :cond_9

    .line 185
    .line 186
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lcom/octopus/ad/OctopusAdSdkController;->getLocation()Lcom/octopus/ad/model/OctLocation;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-nez v6, :cond_8

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    invoke-virtual {v3}, Lcom/octopus/ad/model/OctLocation;->getTime()J

    .line 198
    .line 199
    .line 200
    move-result-wide v7

    .line 201
    invoke-virtual {v6}, Lcom/octopus/ad/model/OctLocation;->getTime()J

    .line 202
    .line 203
    .line 204
    move-result-wide v9

    .line 205
    cmp-long v7, v7, v9

    .line 206
    .line 207
    if-lez v7, :cond_9

    .line 208
    .line 209
    :goto_3
    move-object v6, v3

    .line 210
    :cond_9
    if-eqz v6, :cond_b

    .line 211
    .line 212
    if-eq v6, v2, :cond_b

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/octopus/ad/internal/c/l;->b()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/4 v3, -0x1

    .line 219
    if-gt v2, v3, :cond_a

    .line 220
    .line 221
    iput-object v6, v1, Lcom/octopus/ad/internal/c/l;->b:Lcom/octopus/ad/model/OctLocation;

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v3, "%."

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/octopus/ad/internal/c/l;->b()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v3, "f"

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 251
    .line 252
    invoke-virtual {v6}, Lcom/octopus/ad/model/OctLocation;->getLatitude()D

    .line 253
    .line 254
    .line 255
    move-result-wide v7

    .line 256
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-static {v3, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v6}, Lcom/octopus/ad/model/OctLocation;->getLongitude()D

    .line 269
    .line 270
    .line 271
    move-result-wide v8

    .line 272
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-static {v3, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    new-instance v8, Lcom/octopus/ad/model/OctLocation;

    .line 285
    .line 286
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 287
    .line 288
    .line 289
    move-result-wide v9

    .line 290
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 291
    .line 292
    .line 293
    move-result-wide v11

    .line 294
    invoke-virtual {v6}, Lcom/octopus/ad/model/OctLocation;->getTime()J

    .line 295
    .line 296
    .line 297
    move-result-wide v14

    .line 298
    const/4 v13, 0x0

    .line 299
    invoke-direct/range {v8 .. v15}, Lcom/octopus/ad/model/OctLocation;-><init>(DDIJ)V

    .line 300
    .line 301
    .line 302
    iput-object v8, v1, Lcom/octopus/ad/internal/c/l;->b:Lcom/octopus/ad/model/OctLocation;

    .line 303
    .line 304
    :goto_4
    iget-object v1, v1, Lcom/octopus/ad/internal/c/l;->b:Lcom/octopus/ad/model/OctLocation;

    .line 305
    .line 306
    invoke-static {v1}, Lcom/octopus/ad/internal/c/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-nez v2, :cond_b

    .line 315
    .line 316
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-nez v2, :cond_b

    .line 321
    .line 322
    invoke-static {v0, v5, v1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    .line 324
    .line 325
    :cond_b
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v1, "OctopusAd"

    .line 328
    .line 329
    const-string v2, "An Exception Caught"

    .line 330
    .line 331
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    return-void
.end method
