.class public Lcom/umeng/commonsdk/internal/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/internal/utils/d$a;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lcom/umeng/commonsdk/internal/utils/d$a;

    .line 4
    .line 5
    invoke-direct {v2}, Lcom/umeng/commonsdk/internal/utils/d$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    .line 7
    .line 8
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    .line 9
    .line 10
    const-string v4, "/proc/cpuinfo"

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 13
    .line 14
    .line 15
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    .line 16
    .line 17
    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    .line 19
    .line 20
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    const/4 v5, 0x1

    .line 25
    move v6, v1

    .line 26
    move v8, v6

    .line 27
    move v7, v5

    .line 28
    :goto_0
    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    if-nez v9, :cond_d

    .line 33
    .line 34
    add-int/2addr v6, v5

    .line 35
    const/16 v9, 0x1e

    .line 36
    .line 37
    if-lt v6, v9, :cond_0

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_0
    const-string v9, ":\\s+"

    .line 42
    .line 43
    const/4 v10, 0x2

    .line 44
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    array-length v9, v0

    .line 53
    if-le v9, v5, :cond_1

    .line 54
    .line 55
    aget-object v7, v0, v5

    .line 56
    .line 57
    iput-object v7, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Ljava/lang/String;

    .line 58
    .line 59
    move v7, v1

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :catch_0
    move-object v0, v3

    .line 65
    move v1, v8

    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 69
    .line 70
    array-length v9, v0

    .line 71
    if-le v9, v5, :cond_2

    .line 72
    .line 73
    aget-object v9, v0, v1

    .line 74
    .line 75
    const-string v10, "processor"

    .line 76
    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_2

    .line 82
    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    :cond_2
    if-eqz v0, :cond_3

    .line 86
    .line 87
    array-length v9, v0

    .line 88
    if-le v9, v5, :cond_3

    .line 89
    .line 90
    aget-object v9, v0, v1

    .line 91
    .line 92
    const-string v10, "Features"

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_3

    .line 99
    .line 100
    aget-object v9, v0, v5

    .line 101
    .line 102
    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .line 104
    :cond_3
    const-string v9, "implementer"

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    :try_start_5
    array-length v10, v0

    .line 109
    if-le v10, v5, :cond_4

    .line 110
    .line 111
    aget-object v10, v0, v1

    .line 112
    .line 113
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_4

    .line 118
    .line 119
    aget-object v10, v0, v5

    .line 120
    .line 121
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 122
    .line 123
    :cond_4
    if-eqz v0, :cond_5

    .line 124
    .line 125
    array-length v10, v0

    .line 126
    if-le v10, v5, :cond_5

    .line 127
    .line 128
    aget-object v10, v0, v1

    .line 129
    .line 130
    const-string v11, "architecture"

    .line 131
    .line 132
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_5

    .line 137
    .line 138
    aget-object v10, v0, v5

    .line 139
    .line 140
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->f:Ljava/lang/String;

    .line 141
    .line 142
    :cond_5
    if-eqz v0, :cond_6

    .line 143
    .line 144
    array-length v10, v0

    .line 145
    if-le v10, v5, :cond_6

    .line 146
    .line 147
    aget-object v10, v0, v1

    .line 148
    .line 149
    const-string v11, "variant"

    .line 150
    .line 151
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz v10, :cond_6

    .line 156
    .line 157
    aget-object v10, v0, v5

    .line 158
    .line 159
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->g:Ljava/lang/String;

    .line 160
    .line 161
    :cond_6
    if-eqz v0, :cond_7

    .line 162
    .line 163
    array-length v10, v0

    .line 164
    if-le v10, v5, :cond_7

    .line 165
    .line 166
    aget-object v10, v0, v1

    .line 167
    .line 168
    const-string v11, "part"

    .line 169
    .line 170
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-eqz v10, :cond_7

    .line 175
    .line 176
    aget-object v10, v0, v5

    .line 177
    .line 178
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->h:Ljava/lang/String;

    .line 179
    .line 180
    :cond_7
    if-eqz v0, :cond_8

    .line 181
    .line 182
    array-length v10, v0

    .line 183
    if-le v10, v5, :cond_8

    .line 184
    .line 185
    aget-object v10, v0, v1

    .line 186
    .line 187
    const-string v11, "revision"

    .line 188
    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    if-eqz v10, :cond_8

    .line 194
    .line 195
    aget-object v10, v0, v5

    .line 196
    .line 197
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->i:Ljava/lang/String;

    .line 198
    .line 199
    :cond_8
    if-eqz v0, :cond_9

    .line 200
    .line 201
    array-length v10, v0

    .line 202
    if-le v10, v5, :cond_9

    .line 203
    .line 204
    aget-object v10, v0, v1

    .line 205
    .line 206
    const-string v11, "Hardware"

    .line 207
    .line 208
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    if-eqz v10, :cond_9

    .line 213
    .line 214
    aget-object v10, v0, v5

    .line 215
    .line 216
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->j:Ljava/lang/String;

    .line 217
    .line 218
    :cond_9
    if-eqz v0, :cond_a

    .line 219
    .line 220
    array-length v10, v0

    .line 221
    if-le v10, v5, :cond_a

    .line 222
    .line 223
    aget-object v10, v0, v1

    .line 224
    .line 225
    const-string v11, "Revision"

    .line 226
    .line 227
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    if-eqz v10, :cond_a

    .line 232
    .line 233
    aget-object v10, v0, v5

    .line 234
    .line 235
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->k:Ljava/lang/String;

    .line 236
    .line 237
    :cond_a
    if-eqz v0, :cond_b

    .line 238
    .line 239
    array-length v10, v0

    .line 240
    if-le v10, v5, :cond_b

    .line 241
    .line 242
    aget-object v10, v0, v1

    .line 243
    .line 244
    const-string v11, "Serial"

    .line 245
    .line 246
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-eqz v10, :cond_b

    .line 251
    .line 252
    aget-object v10, v0, v5

    .line 253
    .line 254
    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->l:Ljava/lang/String;

    .line 255
    .line 256
    :cond_b
    if-eqz v0, :cond_c

    .line 257
    .line 258
    array-length v10, v0

    .line 259
    if-le v10, v5, :cond_c

    .line 260
    .line 261
    aget-object v10, v0, v1

    .line 262
    .line 263
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-eqz v9, :cond_c

    .line 268
    .line 269
    aget-object v0, v0, v5

    .line 270
    .line 271
    iput-object v0, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 272
    .line 273
    :cond_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_d
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 280
    .line 281
    .line 282
    :catch_1
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :catch_2
    :goto_3
    move-object v0, v3

    .line 287
    goto :goto_6

    .line 288
    :catchall_1
    move-exception v1

    .line 289
    move-object v4, v0

    .line 290
    :goto_4
    move-object v0, v1

    .line 291
    goto :goto_5

    .line 292
    :catch_3
    move-object v4, v0

    .line 293
    goto :goto_3

    .line 294
    :catchall_2
    move-exception v1

    .line 295
    move-object v3, v0

    .line 296
    move-object v4, v3

    .line 297
    goto :goto_4

    .line 298
    :catch_4
    move-object v4, v0

    .line 299
    goto :goto_6

    .line 300
    :catch_5
    move-object v2, v0

    .line 301
    move-object v4, v2

    .line 302
    goto :goto_6

    .line 303
    :goto_5
    if-eqz v3, :cond_e

    .line 304
    .line 305
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 306
    .line 307
    .line 308
    :catch_6
    :cond_e
    if-eqz v4, :cond_f

    .line 309
    .line 310
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 311
    .line 312
    .line 313
    :catch_7
    :cond_f
    throw v0

    .line 314
    :goto_6
    if-eqz v0, :cond_10

    .line 315
    .line 316
    :try_start_a
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 317
    .line 318
    .line 319
    :catch_8
    :cond_10
    if-eqz v4, :cond_11

    .line 320
    .line 321
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 322
    .line 323
    .line 324
    :catch_9
    :cond_11
    move v8, v1

    .line 325
    :catch_a
    :goto_7
    iput v8, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->c:I

    .line 326
    .line 327
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    const-string v1, "/system/bin/cat"

    .line 4
    .line 5
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/ProcessBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x18

    .line 25
    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    new-instance v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    const-string v1, "/system/bin/cat"

    .line 4
    .line 5
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/ProcessBuilder;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x18

    .line 25
    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    new-instance v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 3
    .line 4
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/io/BufferedReader;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-object v0, v2

    .line 29
    goto :goto_1

    .line 30
    :catchall_1
    move-exception v1

    .line 31
    move-object v2, v0

    .line 32
    move-object v0, v1

    .line 33
    :goto_0
    if-eqz v2, :cond_0

    .line 34
    .line 35
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 36
    .line 37
    .line 38
    :catchall_2
    :cond_0
    throw v0

    .line 39
    :catch_1
    :goto_1
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 42
    .line 43
    .line 44
    :catchall_3
    :cond_1
    const-string v0, ""

    .line 45
    .line 46
    :catchall_4
    :goto_2
    return-object v0
.end method
