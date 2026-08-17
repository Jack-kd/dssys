.class public Lcom/meishu/sdk/platform/ms/recycler/g$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/g;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/g;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/g;->f:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/g;->f:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->a:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-ne v1, v2, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->a:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->a:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    if-eqz v1, :cond_7

    .line 57
    .line 58
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/recycler/g;->b:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    const/16 v2, 0x19

    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->a:Landroid/graphics/Bitmap;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->a:Landroid/graphics/Bitmap;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 86
    .line 87
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->c:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-lez v6, :cond_1

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    :cond_1
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 108
    .line 109
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/recycler/g;->d:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 110
    .line 111
    const/high16 v7, 0x3f800000    # 1.0f

    .line 112
    .line 113
    const-wide v8, 0x3ffc51eb851eb852L    # 1.77

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    const/4 v10, -0x1

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    const/16 v11, 0xc9

    .line 126
    .line 127
    if-eq v6, v11, :cond_2

    .line 128
    .line 129
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 130
    .line 131
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/recycler/g;->d:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const/16 v11, 0x65

    .line 138
    .line 139
    if-eq v6, v11, :cond_2

    .line 140
    .line 141
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 142
    .line 143
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/recycler/g;->d:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    const/16 v11, 0x259

    .line 150
    .line 151
    if-ne v6, v11, :cond_4

    .line 152
    .line 153
    :cond_2
    int-to-float v6, v2

    .line 154
    mul-float/2addr v6, v7

    .line 155
    int-to-float v11, v4

    .line 156
    div-float/2addr v6, v11

    .line 157
    float-to-double v11, v6

    .line 158
    cmpg-double v6, v11, v8

    .line 159
    .line 160
    if-gez v6, :cond_3

    .line 161
    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-ne v6, v10, :cond_3

    .line 169
    .line 170
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 171
    .line 172
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/recycler/g;->b:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 183
    .line 184
    int-to-double v11, v4

    .line 185
    div-double/2addr v11, v8

    .line 186
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 187
    .line 188
    .line 189
    move-result-wide v11

    .line 190
    long-to-int v4, v11

    .line 191
    int-to-double v11, v4

    .line 192
    mul-double/2addr v11, v8

    .line 193
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 194
    .line 195
    .line 196
    move-result-wide v11

    .line 197
    long-to-int v6, v11

    .line 198
    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 199
    .line 200
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 201
    .line 202
    const/16 v11, 0xe

    .line 203
    .line 204
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    .line 206
    .line 207
    iget-object v11, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 208
    .line 209
    iget-object v11, v11, Lcom/meishu/sdk/platform/ms/recycler/g;->c:Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-virtual {v11, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    .line 213
    .line 214
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 215
    .line 216
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->e:Landroid/widget/RelativeLayout;

    .line 217
    .line 218
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    .line 224
    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 225
    .line 226
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 227
    .line 228
    iget-object v11, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 229
    .line 230
    iget-object v11, v11, Lcom/meishu/sdk/platform/ms/recycler/g;->e:Landroid/widget/RelativeLayout;

    .line 231
    .line 232
    invoke-virtual {v11, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .line 234
    .line 235
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 236
    .line 237
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->f:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 238
    .line 239
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 240
    .line 241
    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    check-cast v5, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 246
    .line 247
    int-to-float v6, v6

    .line 248
    invoke-virtual {v5, v6}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    .line 249
    .line 250
    .line 251
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 252
    .line 253
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->f:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 254
    .line 255
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 256
    .line 257
    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 262
    .line 263
    int-to-float v6, v4

    .line 264
    invoke-virtual {v5, v6}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerHeight(F)V

    .line 265
    .line 266
    .line 267
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 268
    .line 269
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->f:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 270
    .line 271
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 272
    .line 273
    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 278
    .line 279
    iput-boolean v3, v5, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->S:Z

    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_3
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 283
    .line 284
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->e:Landroid/widget/RelativeLayout;

    .line 285
    .line 286
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 291
    .line 292
    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 293
    .line 294
    const/4 v6, -0x2

    .line 295
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 296
    .line 297
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 298
    .line 299
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/recycler/g;->e:Landroid/widget/RelativeLayout;

    .line 300
    .line 301
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    .line 303
    .line 304
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 305
    .line 306
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->d:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 307
    .line 308
    if-eqz v5, :cond_6

    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    const/16 v6, 0x12d

    .line 315
    .line 316
    if-eq v5, v6, :cond_5

    .line 317
    .line 318
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 319
    .line 320
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/recycler/g;->d:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 321
    .line 322
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    const/16 v6, 0x191

    .line 327
    .line 328
    if-ne v5, v6, :cond_6

    .line 329
    .line 330
    :cond_5
    int-to-float v2, v2

    .line 331
    mul-float/2addr v2, v7

    .line 332
    int-to-float v4, v4

    .line 333
    div-float/2addr v2, v4

    .line 334
    float-to-double v4, v2

    .line 335
    cmpg-double v2, v4, v8

    .line 336
    .line 337
    if-gez v2, :cond_6

    .line 338
    .line 339
    if-eqz v0, :cond_6

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-ne v0, v10, :cond_6

    .line 346
    .line 347
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 348
    .line 349
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/g;->f:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 350
    .line 351
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 352
    .line 353
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 358
    .line 359
    iput-boolean v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->S:Z

    .line 360
    .line 361
    :cond_6
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 362
    .line 363
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/g;->c:Landroid/widget/ImageView;

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    .line 367
    .line 368
    :cond_7
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/g$a;->b:Lcom/meishu/sdk/platform/ms/recycler/g;

    .line 369
    .line 370
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/g;->e:Landroid/widget/RelativeLayout;

    .line 371
    .line 372
    const/4 v1, 0x0

    .line 373
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    return-void
.end method
