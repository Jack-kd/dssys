.class public Lcom/meishu/sdk/platform/ms/splash/g$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/splash/g;->onADExposure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 8

    .line 1
    const-string v0, "adWrapper \u4e3a\u7a7a"

    .line 2
    .line 3
    const v1, 0x895442

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 9
    .line 10
    if-eqz v3, :cond_7

    .line 11
    .line 12
    iget-object v2, v3, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 13
    .line 14
    check-cast v2, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 29
    .line 30
    check-cast v2, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/splash/g;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/v;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/meishu/sdk/platform/ms/splash/g;->a(Lcom/meishu/sdk/platform/ms/splash/g;)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sget-object v4, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-ne v3, v4, :cond_1

    .line 66
    .line 67
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-static {v2, v3, v4}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception v3

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 79
    .line 80
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 81
    .line 82
    sget v4, Lcom/meishu/sdk/R$id;->activity_sdk_splash_mediaContainer:I

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 91
    .line 92
    invoke-static {v2, v3, v4}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    :goto_2
    if-eqz v2, :cond_6

    .line 100
    .line 101
    :try_start_3
    const-string v3, "SplashAdListenerAdapter"

    .line 102
    .line 103
    const-string v4, "send onADExposure"

    .line 104
    .line 105
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    array-length v3, v2

    .line 109
    const/4 v4, 0x0

    .line 110
    :goto_3
    if-ge v4, v3, :cond_3

    .line 111
    .line 112
    aget-object v5, v2, v4

    .line 113
    .line 114
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-nez v6, :cond_2

    .line 119
    .line 120
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 121
    .line 122
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 123
    .line 124
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 125
    .line 126
    check-cast v6, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    sget-object v7, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 133
    .line 134
    invoke-static {v5, v6, v7}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 139
    .line 140
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    iget-object v7, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 147
    .line 148
    iget-object v7, v7, Lcom/meishu/sdk/platform/ms/splash/g;->i:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-static {v5, v6, v7}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 159
    .line 160
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 161
    .line 162
    invoke-virtual {v6}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    new-instance v7, Lcom/meishu/sdk/core/utils/i;

    .line 171
    .line 172
    invoke-direct {v7}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static {v6, v5, v7}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :catchall_1
    move-exception v2

    .line 180
    goto :goto_5

    .line 181
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 185
    .line 186
    iget-object v3, v2, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 187
    .line 188
    if-eqz v3, :cond_4

    .line 189
    .line 190
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 191
    .line 192
    invoke-interface {v3, v2}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 198
    .line 199
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 200
    .line 201
    .line 202
    :cond_4
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 203
    .line 204
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 205
    .line 206
    if-eqz v2, :cond_5

    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    if-eqz v2, :cond_5

    .line 213
    .line 214
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 215
    .line 216
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 223
    .line 224
    .line 225
    :cond_5
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 226
    .line 227
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->k:Lcom/meishu/sdk/platform/ms/splash/g$d;

    .line 228
    .line 229
    if-eqz v2, :cond_8

    .line 230
    .line 231
    check-cast v2, Lcom/meishu/sdk/meishu_ad/y;

    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/y;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    .line 235
    .line 236
    goto :goto_8

    .line 237
    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_6
    :try_start_5
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 242
    .line 243
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    .line 244
    .line 245
    const-string v3, "monitorUrls \u4e3a\u7a7a"

    .line 246
    .line 247
    invoke-static {v2, v1, v3}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 248
    .line 249
    .line 250
    goto :goto_8

    .line 251
    :catch_1
    move-exception v2

    .line 252
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_7
    :try_start_7
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v2, v1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :catch_2
    move-exception v2

    .line 263
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 264
    .line 265
    .line 266
    goto :goto_8

    .line 267
    :goto_6
    :try_start_9
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/splash/g$a;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 268
    .line 269
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/splash/g;->a:[Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v3, v1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 272
    .line 273
    .line 274
    goto :goto_7

    .line 275
    :catch_3
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    :goto_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    .line 281
    .line 282
    :cond_8
    :goto_8
    return-void
.end method
