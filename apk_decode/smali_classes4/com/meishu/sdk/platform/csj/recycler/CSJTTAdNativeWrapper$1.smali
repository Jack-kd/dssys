.class Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

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
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->isInitSuccess()Z

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const-wide/16 v0, 0x1f4

    .line 40
    .line 41
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFetchCount()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x1

    .line 65
    if-gtz v0, :cond_1

    .line 66
    .line 67
    move v0, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFetchCount()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$000(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$000(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$000(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 115
    .line 116
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$000(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 121
    .line 122
    .line 123
    :cond_2
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$100(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_3

    .line 154
    .line 155
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-lez v3, :cond_3

    .line 172
    .line 173
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    int-to-float v3, v3

    .line 190
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_3
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 194
    .line 195
    int-to-float v3, v3

    .line 196
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 197
    .line 198
    :goto_2
    div-float/2addr v3, v4

    .line 199
    iget-object v4, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 206
    .line 207
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    if-eqz v4, :cond_4

    .line 212
    .line 213
    iget-object v4, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-lez v4, :cond_4

    .line 230
    .line 231
    iget-object v4, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 232
    .line 233
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 238
    .line 239
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    int-to-float v4, v4

    .line 248
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 249
    .line 250
    div-float/2addr v4, v2

    .line 251
    goto :goto_3

    .line 252
    :cond_4
    const/4 v4, 0x0

    .line 253
    :goto_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 254
    .line 255
    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 256
    .line 257
    .line 258
    iget-object v5, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 259
    .line 260
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    const/16 v5, 0x2d0

    .line 277
    .line 278
    const/16 v6, 0x438

    .line 279
    .line 280
    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 289
    .line 290
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 295
    .line 296
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getIsVideoAutoPlay()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 313
    .line 314
    new-instance v3, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 315
    .line 316
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$300(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 321
    .line 322
    invoke-direct {v3, v2, v4}, Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/meishu/sdk/core/ad/recycler/a;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v2, v3}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$202(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;)Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 326
    .line 327
    .line 328
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 329
    .line 330
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    const v3, 0x30d40

    .line 341
    .line 342
    .line 343
    if-ne v2, v3, :cond_7

    .line 344
    .line 345
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 346
    .line 347
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-ne v2, v1, :cond_5

    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_5
    const/4 v1, 0x2

    .line 359
    if-ne v2, v1, :cond_6

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_6
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 363
    .line 364
    const-string v1, "\u4fe1\u606f\u6d41\u6a21\u5f0f\u4e0d\u652f\u6301"

    .line 365
    .line 366
    const/4 v2, -0x1

    .line 367
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    iget-object v3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 372
    .line 373
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-direct {v0, v1, v2, v3}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 378
    .line 379
    .line 380
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 381
    .line 382
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$400(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_7
    const v1, 0x186a0

    .line 391
    .line 392
    .line 393
    if-ne v2, v1, :cond_9

    .line 394
    .line 395
    :goto_4
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 396
    .line 397
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$500(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCsjGM()Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_8

    .line 406
    .line 407
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 408
    .line 409
    invoke-static {v1, v0}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$600(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 410
    .line 411
    .line 412
    goto :goto_7

    .line 413
    :cond_8
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 414
    .line 415
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$700(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 420
    .line 421
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$200(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 426
    .line 427
    .line 428
    goto :goto_7

    .line 429
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 430
    .line 431
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$700(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$1;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 436
    .line 437
    invoke-static {v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->access$200(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/platform/csj/recycler/CSJFeedAdListener;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    .line 443
    .line 444
    goto :goto_7

    .line 445
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    .line 447
    .line 448
    :goto_7
    return-void
.end method
