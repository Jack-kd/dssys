.class public Lcom/meishu/sdk/platform/ms/draw/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/draw/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/view/gif/GifImageView;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

.field public final synthetic c:Lcom/meishu/sdk/platform/ms/draw/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/g;Lcom/meishu/sdk/core/view/gif/GifImageView;Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->a:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->b:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    new-instance p1, Lcom/meishu/sdk/platform/ms/d;

    .line 2
    .line 3
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 4
    .line 5
    const-string v1, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    .line 6
    .line 7
    invoke-direct {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 5
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
    const-string v0, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_7

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
    if-eqz p1, :cond_5

    .line 16
    .line 17
    array-length v1, p1

    .line 18
    if-lez v1, :cond_5

    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    new-array v2, v1, [B

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/math/BigInteger;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x10

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "47494638"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->a:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->a:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_0
    array-length v1, p1

    .line 69
    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 78
    .line 79
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 90
    .line 91
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {p1, v1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    new-instance p1, Lcom/meishu/sdk/platform/ms/d;

    .line 107
    .line 108
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->a:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 135
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    iput-wide v1, p1, Lcom/meishu/sdk/platform/ms/draw/g;->g:J

    .line 141
    .line 142
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_4

    .line 149
    .line 150
    new-instance p1, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 155
    .line 156
    invoke-direct {p1, v1}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 160
    .line 161
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 162
    .line 163
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 164
    .line 165
    invoke-direct {v1, v2}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->b:Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 192
    .line 193
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 194
    .line 195
    invoke-interface {p1, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 205
    .line 206
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 207
    .line 208
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 209
    .line 210
    invoke-interface {p1, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_4
    return-void

    .line 214
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 215
    .line 216
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 217
    .line 218
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    if-eqz p1, :cond_6

    .line 225
    .line 226
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 227
    .line 228
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 229
    .line 230
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    invoke-static {p1, v1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_6
    new-instance p1, Lcom/meishu/sdk/platform/ms/d;

    .line 246
    .line 247
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_7
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 269
    .line 270
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 271
    .line 272
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    if-eqz p1, :cond_8

    .line 279
    .line 280
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 283
    .line 284
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    invoke-static {p1, v1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :cond_8
    new-instance p1, Lcom/meishu/sdk/platform/ms/d;

    .line 300
    .line 301
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :goto_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 323
    .line 324
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 325
    .line 326
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 327
    .line 328
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-eqz v1, :cond_9

    .line 333
    .line 334
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 335
    .line 336
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 337
    .line 338
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 339
    .line 340
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    invoke-static {v1, v2, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_9
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 354
    .line 355
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 356
    .line 357
    invoke-direct {v1, v0, v2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$c;->c:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 376
    .line 377
    .line 378
    return-void
.end method
