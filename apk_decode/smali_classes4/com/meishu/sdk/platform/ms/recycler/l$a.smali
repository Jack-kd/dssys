.class public Lcom/meishu/sdk/platform/ms/recycler/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/l;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

.field public final synthetic d:Lcom/meishu/sdk/platform/ms/recycler/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/view/ViewGroup;Landroid/graphics/Rect;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->b:Landroid/graphics/Rect;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->c:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->b:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->b:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-long v2, v0

    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->b:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v4, v0

    .line 27
    mul-long/2addr v2, v4

    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->a:Landroid/view/ViewGroup;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-long v4, v0

    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->a:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v6, v0

    .line 42
    mul-long/2addr v4, v6

    .line 43
    long-to-double v2, v2

    .line 44
    long-to-double v4, v4

    .line 45
    const-wide v6, 0x3fd3333333333333L    # 0.3

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    mul-double/2addr v4, v6

    .line 51
    cmpl-double v0, v2, v4

    .line 52
    .line 53
    if-ltz v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 56
    .line 57
    iget-boolean v2, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->e:Z

    .line 58
    .line 59
    if-nez v2, :cond_5

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/l;->a(Lcom/meishu/sdk/platform/ms/recycler/l;Z)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 75
    .line 76
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->a:Landroid/view/ViewGroup;

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    invoke-static {v2, v3, v4}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/c;->c:Lcom/meishu/sdk/platform/ms/recycler/a;

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/recycler/a;->onADExposure()V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->c:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 115
    .line 116
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->B:Z

    .line 121
    .line 122
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 125
    .line 126
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 143
    .line 144
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->b(I)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 165
    .line 166
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 167
    .line 168
    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 177
    .line 178
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 179
    .line 180
    invoke-interface {v6}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 185
    .line 186
    .line 187
    move-result-wide v6

    .line 188
    iget-object v9, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 189
    .line 190
    iget-object v9, v9, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 191
    .line 192
    invoke-interface {v9}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v9}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-virtual {v0, v5, v6, v7, v9}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Ljava/lang/String;JLcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 210
    .line 211
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 222
    .line 223
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 234
    .line 235
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    int-to-long v9, v0

    .line 244
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 247
    .line 248
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_count()I

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 257
    .line 258
    iget v12, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->f:I

    .line 259
    .line 260
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 261
    .line 262
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 267
    .line 268
    .line 269
    move-result v13

    .line 270
    new-instance v14, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;

    .line 271
    .line 272
    invoke-direct {v14, p0, v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/l$a$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l$a;J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual/range {v5 .. v14}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IIIJIIILcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;)V

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Z)V

    .line 283
    .line 284
    .line 285
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->a:Landroid/view/ViewGroup;

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->d:Lcom/meishu/sdk/platform/ms/recycler/l;

    .line 295
    .line 296
    iget-object v7, p0, Lcom/meishu/sdk/platform/ms/recycler/l$a;->a:Landroid/view/ViewGroup;

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    :try_start_0
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->m:Ljava/lang/ref/WeakReference;

    .line 302
    .line 303
    if-eqz v2, :cond_3

    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    move-object v4, v2

    .line 310
    check-cast v4, Landroid/app/Activity;

    .line 311
    .line 312
    :cond_3
    move-object v6, v4

    .line 313
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    goto :goto_1

    .line 316
    :goto_0
    if-eqz v6, :cond_5

    .line 317
    .line 318
    if-nez v7, :cond_4

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_4
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->c:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 322
    .line 323
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 328
    .line 329
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    sget v9, Lcom/meishu/sdk/platform/ms/recycler/l;->p:I

    .line 338
    .line 339
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/recycler/l;->b:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 340
    .line 341
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/recycler/l;->e()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v11

    .line 349
    new-instance v12, Lcom/meishu/sdk/platform/ms/recycler/m;

    .line 350
    .line 351
    invoke-direct {v12, v0, v7}, Lcom/meishu/sdk/platform/ms/recycler/m;-><init>(Lcom/meishu/sdk/platform/ms/recycler/l;Landroid/view/ViewGroup;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual/range {v5 .. v12}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->addOverlay(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .line 356
    .line 357
    goto :goto_2

    .line 358
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 359
    .line 360
    .line 361
    :cond_5
    :goto_2
    return v1
.end method
