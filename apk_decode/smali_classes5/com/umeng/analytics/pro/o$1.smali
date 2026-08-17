.class Lcom/umeng/analytics/pro/o$1;
.super Landroid/app/Instrumentation$ActivityMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/pro/o;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/umeng/analytics/pro/o;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/analytics/pro/o$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/app/Instrumentation$ActivityMonitor;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-super {v1, v0}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/o;->l()Landroid/app/Application;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->l()Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v4, v1, Lcom/umeng/analytics/pro/o$1;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_4

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    invoke-static {v3, v4}, Lcom/umeng/analytics/pro/o;->a(J)J

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    const-string v3, "MobclickRT"

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "--->>>PO: p: "

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/umeng/analytics/pro/o;->m()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v5, "; ts: "

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lcom/umeng/analytics/pro/o;->n()J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 143
    .line 144
    invoke-static {v3, v2}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;Landroid/content/Intent;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 149
    .line 150
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-static {v3, v4}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 162
    .line 163
    const/4 v4, 0x1

    .line 164
    invoke-static {v3, v4}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;Z)Z

    .line 165
    .line 166
    .line 167
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 168
    .line 169
    const/4 v4, 0x0

    .line 170
    invoke-static {v3, v4}, Lcom/umeng/analytics/pro/o;->b(Lcom/umeng/analytics/pro/o;Z)Z

    .line 171
    .line 172
    .line 173
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 174
    .line 175
    invoke-static {v3, v4}, Lcom/umeng/analytics/pro/o;->c(Lcom/umeng/analytics/pro/o;Z)Z

    .line 176
    .line 177
    .line 178
    iget-object v3, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 179
    .line 180
    const-wide/16 v14, 0x0

    .line 181
    .line 182
    invoke-static {v3, v14, v15}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;J)J

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lcom/umeng/analytics/pro/o;->o()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    :try_start_1
    new-instance v5, Ljava/lang/Throwable;

    .line 191
    .line 192
    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-static {v5, v6}, Lcom/umeng/analytics/pro/ay;->a([B[B)[B

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v5, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    iget-object v4, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 218
    .line 219
    invoke-static {v4}, Lcom/umeng/analytics/pro/o;->b(Lcom/umeng/analytics/pro/o;)Ljava/util/ArrayList;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    move-object v5, v4

    .line 224
    new-instance v4, Lcom/umeng/analytics/pro/o$c;

    .line 225
    .line 226
    move-object v6, v5

    .line 227
    iget-object v5, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 228
    .line 229
    move-object v7, v6

    .line 230
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {}, Lcom/umeng/analytics/pro/o;->p()Z

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    invoke-static {}, Lcom/umeng/analytics/pro/o;->n()J

    .line 243
    .line 244
    .line 245
    move-result-wide v9

    .line 246
    iget-object v13, v1, Lcom/umeng/analytics/pro/o$1;->b:Lcom/umeng/analytics/pro/o;

    .line 247
    .line 248
    invoke-static {v13}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    move-object/from16 v16, v7

    .line 253
    .line 254
    move-object v7, v0

    .line 255
    move-object/from16 v0, v16

    .line 256
    .line 257
    invoke-direct/range {v4 .. v13}, Lcom/umeng/analytics/pro/o$c;-><init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    const-string v0, ""

    .line 264
    .line 265
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    invoke-static {v14, v15}, Lcom/umeng/analytics/pro/o;->a(J)J

    .line 269
    .line 270
    .line 271
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_4

    .line 277
    .line 278
    const-string v0, "MobclickRT"

    .line 279
    .line 280
    const-string v3, "***>>> \u89e6\u53d1PO \u51fa\u7aef\u4e8b\u4ef6\u3002"

    .line 281
    .line 282
    invoke-static {v0, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    const/4 v7, 0x0

    .line 294
    const-wide/16 v8, 0x0

    .line 295
    .line 296
    const/16 v5, 0x137

    .line 297
    .line 298
    invoke-static/range {v4 .. v9}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    .line 303
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    :catchall_1
    :cond_4
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    return-object v0
.end method
