.class public Lcom/meishu/sdk/platform/ms/recycler/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->c(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/view/RoundImageView;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Landroid/widget/RelativeLayout;

.field public final synthetic f:Lcom/meishu/sdk/core/view/ShakeImageView;

.field public final synthetic g:Landroid/widget/ImageView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/view/ViewGroup;

.field public final synthetic k:Z

.field public final synthetic l:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/RoundImageView;ILandroid/content/Context;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 4
    .line 5
    iput p3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->d:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->e:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->f:Lcom/meishu/sdk/core/view/ShakeImageView;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->g:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->h:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->i:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->j:Landroid/view/ViewGroup;

    .line 22
    .line 23
    iput-boolean p12, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->k:Z

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
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
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

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
    .locals 11
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
    if-eqz v1, :cond_e

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
    if-eqz p1, :cond_d

    .line 16
    .line 17
    array-length v1, p1

    .line 18
    if-lez v1, :cond_d

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

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
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_0
    const-string v1, "i"

    .line 45
    .line 46
    const-string v2, "showUpDownStyle"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 52
    .line 53
    invoke-static {v1, p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/platform/ms/recycler/i;[B)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    .line 59
    const/4 v4, -0x1

    .line 60
    const-wide v5, 0x3ffc51eb851eb852L    # 1.77

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 69
    .line 70
    if-eqz v1, :cond_6

    .line 71
    .line 72
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifWidth()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->b:I

    .line 88
    .line 89
    mul-int/2addr v3, v1

    .line 90
    div-int/2addr v3, p1

    .line 91
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-lez v1, :cond_1

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->b:I

    .line 118
    .line 119
    int-to-float v1, v1

    .line 120
    mul-float/2addr v1, v2

    .line 121
    int-to-float v2, v3

    .line 122
    div-float/2addr v1, v2

    .line 123
    float-to-double v1, v1

    .line 124
    cmpg-double v1, v1, v5

    .line 125
    .line 126
    if-gez v1, :cond_2

    .line 127
    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-ne p1, v4, :cond_2

    .line 135
    .line 136
    iget p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->b:I

    .line 137
    .line 138
    int-to-double v1, p1

    .line 139
    div-double/2addr v1, v5

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 141
    .line 142
    .line 143
    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    long-to-int v3, v1

    .line 145
    goto :goto_0

    .line 146
    :catch_0
    move-exception p1

    .line 147
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    .line 158
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    .line 160
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 161
    .line 162
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_3
    array-length v1, p1

    .line 173
    invoke-static {p1, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_c

    .line 178
    .line 179
    iget v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->b:I

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    mul-int/2addr v1, v3

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    div-int/2addr v1, v3

    .line 191
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 192
    .line 193
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/recycler/i;->b:Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 200
    .line 201
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-eqz v3, :cond_4

    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-lez v8, :cond_4

    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    :cond_4
    iget-object v8, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 218
    .line 219
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    .line 225
    :try_start_4
    iget v9, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->b:I

    .line 226
    .line 227
    int-to-float v9, v9

    .line 228
    mul-float/2addr v9, v2

    .line 229
    int-to-float v2, v1

    .line 230
    div-float/2addr v9, v2

    .line 231
    float-to-double v9, v9

    .line 232
    cmpg-double v2, v9, v5

    .line 233
    .line 234
    if-gez v2, :cond_5

    .line 235
    .line 236
    if-eqz v3, :cond_5

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-ne v2, v4, :cond_5

    .line 243
    .line 244
    iget v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->b:I

    .line 245
    .line 246
    int-to-double v2, v2

    .line 247
    div-double/2addr v2, v5

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 249
    .line 250
    .line 251
    move-result-wide v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    long-to-int v1, v1

    .line 253
    goto :goto_1

    .line 254
    :catch_1
    move-exception v2

    .line 255
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    :cond_5
    :goto_1
    iput v4, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 259
    .line 260
    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 261
    .line 262
    const/16 v1, 0xe

    .line 263
    .line 264
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 268
    .line 269
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 273
    .line 274
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 275
    .line 276
    .line 277
    const/16 v1, 0x19

    .line 278
    .line 279
    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/f0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    if-eqz p1, :cond_6

    .line 284
    .line 285
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->d:Landroid/widget/ImageView;

    .line 286
    .line 287
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->d:Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    .line 294
    .line 295
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 296
    .line 297
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 298
    .line 299
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v1

    .line 307
    iput-wide v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->D:J

    .line 308
    .line 309
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 310
    .line 311
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 312
    .line 313
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    const/4 v1, 0x4

    .line 322
    and-int/2addr p1, v1

    .line 323
    if-eq p1, v1, :cond_9

    .line 324
    .line 325
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 326
    .line 327
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 328
    .line 329
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    const/16 v1, 0x40

    .line 338
    .line 339
    and-int/2addr p1, v1

    .line 340
    if-ne p1, v1, :cond_7

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_7
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 344
    .line 345
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 346
    .line 347
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-eqz p1, :cond_8

    .line 360
    .line 361
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 362
    .line 363
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->c:Landroid/content/Context;

    .line 364
    .line 365
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->e:Landroid/widget/RelativeLayout;

    .line 366
    .line 367
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->f:Lcom/meishu/sdk/core/view/ShakeImageView;

    .line 368
    .line 369
    invoke-virtual {p1, v1, v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 370
    .line 371
    .line 372
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->g:Landroid/widget/ImageView;

    .line 373
    .line 374
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->h:Landroid/widget/TextView;

    .line 378
    .line 379
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 380
    .line 381
    .line 382
    const-string p1, "\u626d\u52a8\u6216\u70b9\u51fb"

    .line 383
    .line 384
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->i:Landroid/widget/TextView;

    .line 385
    .line 386
    if-eqz v1, :cond_a

    .line 387
    .line 388
    const-string v2, "\u626d\u4e00\u626d"

    .line 389
    .line 390
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_8
    const-string p1, "\u70b9\u51fb"

    .line 395
    .line 396
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->j:Landroid/view/ViewGroup;

    .line 397
    .line 398
    if-eqz v1, :cond_a

    .line 399
    .line 400
    iget-boolean v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->k:Z

    .line 401
    .line 402
    if-nez v2, :cond_a

    .line 403
    .line 404
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .line 406
    .line 407
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->g:Landroid/widget/ImageView;

    .line 408
    .line 409
    sget v2, Lcom/meishu/sdk/R$drawable;->ms_ic_right:I

    .line 410
    .line 411
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    .line 413
    .line 414
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->g:Landroid/widget/ImageView;

    .line 415
    .line 416
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->h:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 426
    .line 427
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->c:Landroid/content/Context;

    .line 428
    .line 429
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->e:Landroid/widget/RelativeLayout;

    .line 430
    .line 431
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->f:Lcom/meishu/sdk/core/view/ShakeImageView;

    .line 432
    .line 433
    invoke-virtual {p1, v1, v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/meishu/sdk/core/view/ShakeImageView;)V

    .line 434
    .line 435
    .line 436
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->g:Landroid/widget/ImageView;

    .line 437
    .line 438
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->h:Landroid/widget/TextView;

    .line 442
    .line 443
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 444
    .line 445
    .line 446
    const-string p1, "\u6447\u52a8\u6216\u70b9\u51fb"

    .line 447
    .line 448
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->i:Landroid/widget/TextView;

    .line 449
    .line 450
    if-eqz v1, :cond_a

    .line 451
    .line 452
    const-string v2, "\u6447\u4e00\u6447"

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 458
    .line 459
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/recycler/i;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 460
    .line 461
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    const/4 v2, 0x1

    .line 470
    if-ne v1, v2, :cond_b

    .line 471
    .line 472
    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    .line 473
    .line 474
    goto :goto_5

    .line 475
    :cond_b
    const-string v1, "\u67e5\u770b\u8be6\u60c5"

    .line 476
    .line 477
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->h:Landroid/widget/TextView;

    .line 493
    .line 494
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 498
    .line 499
    iget-boolean v1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->g:Z

    .line 500
    .line 501
    if-nez v1, :cond_f

    .line 502
    .line 503
    invoke-static {p1, v2}, Lcom/meishu/sdk/platform/ms/recycler/i;->d(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z

    .line 504
    .line 505
    .line 506
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 507
    .line 508
    invoke-static {p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->c(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 509
    .line 510
    .line 511
    goto :goto_7

    .line 512
    :cond_c
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 513
    .line 514
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    invoke-virtual {p1, v1, v3}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :cond_d
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 525
    .line 526
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    invoke-virtual {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    :cond_e
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 537
    .line 538
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p1

    .line 546
    invoke-virtual {v1, v2, p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 551
    .line 552
    .line 553
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$d;->l:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 554
    .line 555
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 556
    .line 557
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    invoke-virtual {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 562
    .line 563
    .line 564
    :cond_f
    :goto_7
    return-void
.end method
