.class public Lcom/meishu/sdk/meishu_ad/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/splash/g$d;


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

.field public final synthetic e:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;[ZLcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/y;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/y;->a:[Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/y;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/y;->d:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->a:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v2, v0, v1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    aput-boolean v2, v0, v1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :try_start_0
    new-instance v1, Lcom/meishu/sdk/core/utils/w;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/w;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/meishu/sdk/meishu_ad/splash/f;

    .line 24
    .line 25
    invoke-direct {v3, v0, v1}, Lcom/meishu/sdk/meishu_ad/splash/f;-><init>(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/core/utils/w;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->e:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 29
    .line 30
    new-instance v4, Lcom/meishu/sdk/meishu_ad/splash/g;

    .line 31
    .line 32
    invoke-direct {v4, v3, v1}, Lcom/meishu/sdk/meishu_ad/splash/g;-><init>(Lcom/meishu/sdk/core/service/e;Lcom/meishu/sdk/core/utils/w;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->enableInstallBroadcast()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/w;->b:Lcom/meishu/sdk/core/utils/w$b;

    .line 59
    .line 60
    iget-object v5, v1, Lcom/meishu/sdk/core/utils/w;->a:Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    iput-boolean v2, v1, Lcom/meishu/sdk/core/utils/w;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    :try_start_2
    const-string v1, "HW"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 108
    .line 109
    iget v1, v0, Lcom/meishu/sdk/meishu_ad/splash/d;->F:I

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index2()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->indexLocal:I

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->isTest()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->indexLocal:I

    .line 145
    .line 146
    :cond_4
    move v5, v1

    .line 147
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 148
    .line 149
    iget v1, v0, Lcom/meishu/sdk/meishu_ad/v;->b:I

    .line 150
    .line 151
    if-nez v1, :cond_5

    .line 152
    .line 153
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/v;->b:I

    .line 162
    .line 163
    :cond_5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->b(I)I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 184
    .line 185
    iget-object v7, v7, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 186
    .line 187
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 192
    .line 193
    iget-object v8, v8, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 194
    .line 195
    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 196
    .line 197
    .line 198
    move-result-wide v8

    .line 199
    iget-object v10, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 200
    .line 201
    iget-object v10, v10, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 202
    .line 203
    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Ljava/lang/String;JLcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 215
    .line 216
    iget-object v7, v7, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 217
    .line 218
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    int-to-long v7, v7

    .line 223
    iget-object v9, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 224
    .line 225
    iget-object v9, v9, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 226
    .line 227
    invoke-virtual {v9}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_count()I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    iget-object v10, p0, Lcom/meishu/sdk/meishu_ad/y;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 232
    .line 233
    iget v10, v10, Lcom/meishu/sdk/meishu_ad/v;->b:I

    .line 234
    .line 235
    iget-object v11, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 236
    .line 237
    iget-object v11, v11, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 238
    .line 239
    invoke-virtual {v11}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    new-instance v12, Lcom/meishu/sdk/meishu_ad/y$a;

    .line 244
    .line 245
    invoke-direct {v12, p0, v0, v1}, Lcom/meishu/sdk/meishu_ad/y$a;-><init>(Lcom/meishu/sdk/meishu_ad/y;J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {v3 .. v12}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IIIJIIILcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/y;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 252
    .line 253
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_6

    .line 264
    .line 265
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Z)V

    .line 270
    .line 271
    .line 272
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->f()V

    .line 277
    .line 278
    .line 279
    :cond_6
    :goto_2
    return-void
.end method
