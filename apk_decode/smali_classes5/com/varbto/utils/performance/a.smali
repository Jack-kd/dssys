.class public final Lcom/varbto/utils/performance/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;

.field public final synthetic c:J

.field public final synthetic d:Lcom/varbto/utils/performance/b;


# direct methods
.method public constructor <init>(Lcom/varbto/utils/performance/b;Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/varbto/utils/performance/a;->b:Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/varbto/utils/performance/a;->c:J

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
    .locals 14

    .line 1
    const-string v0, "sample error: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 4
    .line 5
    iget-boolean v1, v1, Lcom/varbto/utils/performance/b;->b:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/varbto/utils/performance/DevicePerformanceGrader;->c()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    cmpg-float v3, v1, v2

    .line 17
    .line 18
    if-ltz v3, :cond_1

    .line 19
    .line 20
    const/high16 v3, 0x42c80000    # 100.0f

    .line 21
    .line 22
    cmpl-float v3, v1, v3

    .line 23
    .line 24
    if-lez v3, :cond_2

    .line 25
    .line 26
    :cond_1
    move v1, v2

    .line 27
    :cond_2
    iget-object v3, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 28
    .line 29
    iget-object v3, v3, Lcom/varbto/utils/performance/b;->k:Lcom/varbto/utils/performance/DevicePerformanceGrader;

    .line 30
    .line 31
    invoke-static {}, Lcom/varbto/utils/performance/DevicePerformanceGrader;->b()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/varbto/utils/performance/b;->k:Lcom/varbto/utils/performance/DevicePerformanceGrader;

    .line 38
    .line 39
    new-instance v5, Landroid/app/ActivityManager$MemoryInfo;

    .line 40
    .line 41
    invoke-direct {v5}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v4, v4, Lcom/varbto/utils/performance/DevicePerformanceGrader;->a:Landroid/content/Context;

    .line 45
    .line 46
    const-string v6, "activity"

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/app/ActivityManager;

    .line 53
    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_3
    :goto_0
    iget-wide v6, v5, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 64
    .line 65
    const-wide/16 v8, 0x0

    .line 66
    .line 67
    cmp-long v4, v6, v8

    .line 68
    .line 69
    if-gtz v4, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-wide v4, v5, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 73
    .line 74
    sub-long v4, v6, v4

    .line 75
    .line 76
    long-to-float v2, v4

    .line 77
    long-to-float v4, v6

    .line 78
    div-float/2addr v2, v4

    .line 79
    :goto_1
    iget-object v4, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 80
    .line 81
    iput v1, v4, Lcom/varbto/utils/performance/b;->e:F

    .line 82
    .line 83
    iget-object v4, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 84
    .line 85
    iput v2, v4, Lcom/varbto/utils/performance/b;->f:F

    .line 86
    .line 87
    iget-object v4, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    iput-wide v5, v4, Lcom/varbto/utils/performance/b;->d:J

    .line 94
    .line 95
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 v5, 0x1d

    .line 98
    .line 99
    if-lt v4, v5, :cond_5

    .line 100
    .line 101
    iget-object v6, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 102
    .line 103
    iget-object v6, v6, Lcom/varbto/utils/performance/b;->k:Lcom/varbto/utils/performance/DevicePerformanceGrader;

    .line 104
    .line 105
    iget-object v6, v6, Lcom/varbto/utils/performance/DevicePerformanceGrader;->a:Landroid/content/Context;

    .line 106
    .line 107
    const-string v7, "power"

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Landroid/os/PowerManager;

    .line 114
    .line 115
    iget-object v7, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 116
    .line 117
    invoke-static {v6}, Ln1/a;->a(Landroid/os/PowerManager;)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    iput v6, v7, Lcom/varbto/utils/performance/b;->g:I

    .line 122
    .line 123
    :cond_5
    iget-object v6, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 124
    .line 125
    iget v6, v6, Lcom/varbto/utils/performance/b;->e:F

    .line 126
    .line 127
    invoke-static {v6}, Lcom/varbto/utils/performance/b;->b(F)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    iget-object v7, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 132
    .line 133
    iget v7, v7, Lcom/varbto/utils/performance/b;->f:F

    .line 134
    .line 135
    invoke-static {v7}, Lcom/varbto/utils/performance/b;->c(F)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iget-object v10, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 140
    .line 141
    iget v10, v10, Lcom/varbto/utils/performance/b;->g:I

    .line 142
    .line 143
    const/4 v11, 0x0

    .line 144
    packed-switch v10, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    const/16 v10, 0x64

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_0
    move v10, v11

    .line 151
    goto :goto_2

    .line 152
    :pswitch_1
    const/4 v10, 0x5

    .line 153
    goto :goto_2

    .line 154
    :pswitch_2
    const/16 v10, 0xa

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :pswitch_3
    const/16 v10, 0x19

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :pswitch_4
    const/16 v10, 0x32

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :pswitch_5
    const/16 v10, 0x50

    .line 164
    .line 165
    :goto_2
    iget-object v12, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 166
    .line 167
    iget v13, v12, Lcom/varbto/utils/performance/b;->i:I

    .line 168
    .line 169
    if-le v6, v13, :cond_6

    .line 170
    .line 171
    if-le v7, v13, :cond_6

    .line 172
    .line 173
    if-le v10, v13, :cond_6

    .line 174
    .line 175
    invoke-virtual {v12}, Lcom/varbto/utils/performance/b;->d()Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-eqz v6, :cond_7

    .line 180
    .line 181
    :cond_6
    const/4 v11, 0x1

    .line 182
    :cond_7
    if-eqz v11, :cond_8

    .line 183
    .line 184
    iget-object v6, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 185
    .line 186
    iget-boolean v6, v6, Lcom/varbto/utils/performance/b;->h:Z

    .line 187
    .line 188
    if-nez v6, :cond_8

    .line 189
    .line 190
    iget-object v6, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 191
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    const-wide/16 v9, 0x1388

    .line 197
    .line 198
    add-long/2addr v7, v9

    .line 199
    iput-wide v7, v6, Lcom/varbto/utils/performance/b;->c:J

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    if-nez v11, :cond_9

    .line 203
    .line 204
    iget-object v6, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 205
    .line 206
    iput-wide v8, v6, Lcom/varbto/utils/performance/b;->c:J

    .line 207
    .line 208
    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 209
    .line 210
    iput-boolean v11, v6, Lcom/varbto/utils/performance/b;->h:Z

    .line 211
    .line 212
    iget-object v6, p0, Lcom/varbto/utils/performance/a;->b:Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;

    .line 213
    .line 214
    if-eqz v6, :cond_a

    .line 215
    .line 216
    invoke-interface {v6, v1, v3}, Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;->onCpuUpdate(FF)V

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->b:Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;

    .line 220
    .line 221
    invoke-interface {v1, v2}, Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;->onMemoryUpdate(F)V

    .line 222
    .line 223
    .line 224
    if-lt v4, v5, :cond_a

    .line 225
    .line 226
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->b:Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;

    .line 227
    .line 228
    iget-object v2, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 229
    .line 230
    iget v2, v2, Lcom/varbto/utils/performance/b;->g:I

    .line 231
    .line 232
    invoke-interface {v1, v2}, Lcom/varbto/utils/performance/DevicePerformanceGrader$PerformanceMonitorCallback;->onThermalUpdate(I)V

    .line 233
    .line 234
    .line 235
    :cond_a
    sget-boolean v1, Lk1/h;->a:Z

    .line 236
    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 240
    .line 241
    iget v1, v1, Lcom/varbto/utils/performance/b;->e:F

    .line 242
    .line 243
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 244
    .line 245
    iget v1, v1, Lcom/varbto/utils/performance/b;->f:F

    .line 246
    .line 247
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 248
    .line 249
    iget v1, v1, Lcom/varbto/utils/performance/b;->g:I

    .line 250
    .line 251
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/varbto/utils/performance/b;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    :cond_b
    iget-object v0, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 257
    .line 258
    iget-boolean v1, v0, Lcom/varbto/utils/performance/b;->b:Z

    .line 259
    .line 260
    if-eqz v1, :cond_d

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :goto_4
    :try_start_1
    sget-boolean v2, Lk1/h;->a:Z

    .line 264
    .line 265
    if-eqz v2, :cond_c

    .line 266
    .line 267
    const-string v2, "PerformanceMonitor"

    .line 268
    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catchall_1
    move-exception v0

    .line 290
    goto :goto_8

    .line 291
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 292
    .line 293
    iget-boolean v1, v0, Lcom/varbto/utils/performance/b;->b:Z

    .line 294
    .line 295
    if-eqz v1, :cond_d

    .line 296
    .line 297
    :goto_6
    iget-object v0, v0, Lcom/varbto/utils/performance/b;->a:Landroid/os/Handler;

    .line 298
    .line 299
    iget-wide v1, p0, Lcom/varbto/utils/performance/a;->c:J

    .line 300
    .line 301
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    .line 303
    .line 304
    :cond_d
    :goto_7
    return-void

    .line 305
    :goto_8
    iget-object v1, p0, Lcom/varbto/utils/performance/a;->d:Lcom/varbto/utils/performance/b;

    .line 306
    .line 307
    iget-boolean v2, v1, Lcom/varbto/utils/performance/b;->b:Z

    .line 308
    .line 309
    if-eqz v2, :cond_e

    .line 310
    .line 311
    iget-object v1, v1, Lcom/varbto/utils/performance/b;->a:Landroid/os/Handler;

    .line 312
    .line 313
    iget-wide v2, p0, Lcom/varbto/utils/performance/a;->c:J

    .line 314
    .line 315
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    .line 317
    .line 318
    :cond_e
    throw v0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
