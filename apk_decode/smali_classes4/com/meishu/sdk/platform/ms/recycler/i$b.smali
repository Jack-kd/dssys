.class public Lcom/meishu/sdk/platform/ms/recycler/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/view/RoundImageView;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:F

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/RoundImageView;Landroid/content/Context;FLandroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput p4, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->c:F

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->d:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [B

    .line 14
    .line 15
    if-eqz p1, :cond_9

    .line 16
    .line 17
    array-length v1, p1

    .line 18
    if-lez v1, :cond_9

    .line 19
    .line 20
    array-length v1, p1

    .line 21
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const-string v3, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 26
    .line 27
    if-lt v1, v2, :cond_0

    .line 28
    .line 29
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 30
    .line 31
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1, v1, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 45
    .line 46
    invoke-static {v1, p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/platform/ms/recycler/i;[B)Z

    .line 47
    .line 48
    .line 49
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    const/high16 v2, 0x42960000    # 75.0f

    .line 51
    .line 52
    const-string v4, "fixedHeight="

    .line 53
    .line 54
    const-string v5, "i"

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    :try_start_2
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifWidth()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 79
    .line 80
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    instance-of v3, v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 87
    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->b:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 93
    .line 94
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 95
    .line 96
    invoke-virtual {v6}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFixedHeight()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-static {v3, v6}, Lcom/meishu/sdk/platform/gdt/util/PxUtils;->dpToPx(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v5, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->c:F

    .line 129
    .line 130
    mul-float/2addr v3, v2

    .line 131
    float-to-int v2, v3

    .line 132
    if-lez v6, :cond_2

    .line 133
    .line 134
    mul-int/2addr p1, v6

    .line 135
    div-int/2addr p1, v1

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    mul-int/2addr p1, v2

    .line 138
    div-int/2addr p1, v1

    .line 139
    move v6, v2

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 147
    .line 148
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    .line 150
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 161
    .line 162
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 163
    .line 164
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    iput-wide v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->D:J

    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_3
    array-length v1, p1

    .line 177
    invoke-static {p1, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    if-eqz p1, :cond_8

    .line 182
    .line 183
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 186
    .line 187
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide v7

    .line 195
    iput-wide v7, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->D:J

    .line 196
    .line 197
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 198
    .line 199
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    instance-of v1, v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 206
    .line 207
    if-eqz v1, :cond_4

    .line 208
    .line 209
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->b:Landroid/content/Context;

    .line 210
    .line 211
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 212
    .line 213
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getFixedHeight()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    invoke-static {v1, v3}, Lcom/meishu/sdk/platform/gdt/util/PxUtils;->dpToPx(Landroid/content/Context;I)I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-static {v5, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->c:F

    .line 248
    .line 249
    mul-float/2addr v1, v2

    .line 250
    float-to-int v1, v1

    .line 251
    if-lez v6, :cond_5

    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    mul-int/2addr v2, v1

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    div-int/2addr v2, v3

    .line 264
    move v6, v1

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 272
    .line 273
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 279
    .line 280
    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 281
    .line 282
    .line 283
    const/16 v2, 0x19

    .line 284
    .line 285
    invoke-static {p1, v2}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    if-eqz p1, :cond_6

    .line 290
    .line 291
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->d:Landroid/widget/ImageView;

    .line 292
    .line 293
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->d:Landroid/widget/ImageView;

    .line 297
    .line 298
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    .line 300
    .line 301
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 302
    .line 303
    iget-boolean v1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->g:Z

    .line 304
    .line 305
    if-nez v1, :cond_7

    .line 306
    .line 307
    const/4 v1, 0x1

    .line 308
    invoke-static {p1, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->d(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z

    .line 309
    .line 310
    .line 311
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 312
    .line 313
    invoke-static {p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->c(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 314
    .line 315
    .line 316
    :cond_7
    return-void

    .line 317
    :cond_8
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 318
    .line 319
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    invoke-virtual {p1, v1, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_9
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 330
    .line 331
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-virtual {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_a
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {v1, v2, p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$b;->e:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 359
    .line 360
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 361
    .line 362
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    return-void
.end method
