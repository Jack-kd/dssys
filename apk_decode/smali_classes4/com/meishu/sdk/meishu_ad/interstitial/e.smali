.class public Lcom/meishu/sdk/meishu_ad/interstitial/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p1, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 8
    .line 9
    const-string v0, "load image error"

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 7
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
    const-string v0, "NativeInterstitialAd"

    .line 2
    .line 3
    const-string v1, "load image error"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    if-eqz v2, :cond_4

    .line 10
    .line 11
    :try_start_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, [B

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    if-lez v3, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    new-array v4, v3, [B

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Ljava/math/BigInteger;

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-direct {v3, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 38
    .line 39
    .line 40
    const/16 v4, 0x10

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "47494638"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    new-instance v3, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->a:Landroid/app/Activity;

    .line 57
    .line 58
    invoke-direct {v3, v4}, Lcom/meishu/sdk/core/view/gif/GifImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iput v4, v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;->e:I

    .line 71
    .line 72
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifWidth()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iput v4, v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;->f:I

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/meishu/sdk/core/view/gif/GifImageView;->clear()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_0
    array-length v3, v2

    .line 88
    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iput v4, v3, Lcom/meishu/sdk/meishu_ad/interstitial/c;->f:I

    .line 99
    .line 100
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput v2, v3, Lcom/meishu/sdk/meishu_ad/interstitial/c;->e:I

    .line 107
    .line 108
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 109
    .line 110
    iget v3, v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;->e:I

    .line 111
    .line 112
    iget v4, v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;->f:I

    .line 113
    .line 114
    if-le v3, v4, :cond_1

    .line 115
    .line 116
    const/4 v3, 0x2

    .line 117
    iput v3, v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;->d:I

    .line 118
    .line 119
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "create_type="

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v3, "actType="

    .line 155
    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setAdWrapper(Lcom/meishu/sdk/platform/BasePlatformLoader;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setMsAd(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setAdListener(Lcom/meishu/sdk/meishu_ad/interstitial/a;)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Landroid/content/Intent;

    .line 204
    .line 205
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->a:Landroid/app/Activity;

    .line 206
    .line 207
    const-class v3, Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 208
    .line 209
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .line 211
    .line 212
    const-string v2, "isVideoAutoPlay"

    .line 213
    .line 214
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 215
    .line 216
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 223
    .line 224
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsVideoAutoPlay()Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    const-string v2, "isClickToClose"

    .line 232
    .line 233
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 234
    .line 235
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsClickToClose()Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    const-string v2, "act_type"

    .line 251
    .line 252
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 253
    .line 254
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    .line 264
    .line 265
    const-string v2, "layout_type"

    .line 266
    .line 267
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 268
    .line 269
    iget v3, v3, Lcom/meishu/sdk/meishu_ad/interstitial/c;->d:I

    .line 270
    .line 271
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    const-string v2, "layout_width"

    .line 275
    .line 276
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 277
    .line 278
    iget v3, v3, Lcom/meishu/sdk/meishu_ad/interstitial/c;->f:I

    .line 279
    .line 280
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    const-string v2, "layout_height"

    .line 284
    .line 285
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 286
    .line 287
    iget v3, v3, Lcom/meishu/sdk/meishu_ad/interstitial/c;->e:I

    .line 288
    .line 289
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->a:Landroid/app/Activity;

    .line 293
    .line 294
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 299
    .line 300
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 301
    .line 302
    if-eqz v0, :cond_6

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    check-cast v0, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 309
    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 315
    .line 316
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 317
    .line 318
    if-eqz v2, :cond_3

    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    check-cast v2, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 325
    .line 326
    invoke-virtual {v2, v1, v3}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :catchall_1
    move-exception v0

    .line 331
    goto :goto_3

    .line 332
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 337
    .line 338
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 339
    .line 340
    if-eqz v0, :cond_6

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    check-cast v0, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 347
    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :goto_3
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/e;->b:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 353
    .line 354
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 355
    .line 356
    if-eqz v2, :cond_5

    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    check-cast v2, Lcom/meishu/sdk/platform/ms/interstitial/a;

    .line 363
    .line 364
    invoke-virtual {v2, v1, p1}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 365
    .line 366
    .line 367
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 368
    .line 369
    .line 370
    :cond_6
    :goto_4
    return-void
.end method
