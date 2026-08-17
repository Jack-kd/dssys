.class public Lcom/meishu/sdk/platform/ms/draw/g;
.super Lcom/meishu/sdk/platform/ms/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/ms/g<",
        "Lcom/meishu/sdk/meishu_ad/nativ/f;",
        "Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;",
        "Lcom/meishu/sdk/core/ad/draw/a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/meishu/sdk/meishu_ad/v;

.field public c:Z

.field public d:Z

.field public e:Lcom/meishu/sdk/platform/ms/draw/a;

.field public f:J

.field public g:J

.field public h:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;Lcom/meishu/sdk/meishu_ad/nativ/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/meishu/sdk/platform/ms/draw/g;->c:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/meishu/sdk/platform/ms/draw/g;->d:Z

    .line 8
    .line 9
    new-instance p2, Lcom/meishu/sdk/platform/ms/draw/g$f;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/ms/draw/g$f;-><init>(Lcom/meishu/sdk/platform/ms/draw/g;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/draw/g;->h:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 15
    .line 16
    new-instance p2, Lcom/meishu/sdk/meishu_ad/v;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p1}, Lcom/meishu/sdk/meishu_ad/v;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/draw/g;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/draw/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/draw/g;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/platform/ms/draw/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/draw/g;->d:Z

    return p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/meishu/sdk/platform/ms/draw/g;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/meishu/sdk/platform/ms/draw/g;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/meishu/sdk/R$layout;->ms_draw_ad_layout:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/meishu/sdk/R$id;->ms_draw_rootView:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

    .line 21
    .line 22
    new-instance v1, Lcom/meishu/sdk/platform/ms/draw/g$a;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/meishu/sdk/platform/ms/draw/g$a;-><init>(Lcom/meishu/sdk/platform/ms/draw/g;Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;->setAdListener(Lcom/meishu/sdk/core/ad/draw/a;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/meishu/sdk/core/bquery/i;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/meishu/sdk/platform/ms/draw/a;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 38
    .line 39
    invoke-direct {v3, v4, v2}, Lcom/meishu/sdk/platform/ms/draw/a;-><init>(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    iput-object v3, p0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 43
    .line 44
    sget v2, Lcom/meishu/sdk/R$id;->ms_draw_ad_image:I

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 51
    .line 52
    sget v3, Lcom/meishu/sdk/R$id;->ms_draw_ad_detail_logo:I

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/widget/ImageView;

    .line 59
    .line 60
    sget v3, Lcom/meishu/sdk/R$id;->draw_ad_detail_title:I

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/widget/TextView;

    .line 67
    .line 68
    sget v4, Lcom/meishu/sdk/R$id;->ms_draw_ad_detail_desc:I

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Landroid/widget/TextView;

    .line 75
    .line 76
    sget v5, Lcom/meishu/sdk/R$id;->ms_draw_close_button:I

    .line 77
    .line 78
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/widget/ImageView;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 85
    .line 86
    check-cast v6, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 87
    .line 88
    iget-object v6, v6, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 94
    .line 95
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 96
    .line 97
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Lcom/meishu/sdk/platform/ms/draw/g$b;

    .line 103
    .line 104
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/ms/draw/g$b;-><init>(Lcom/meishu/sdk/platform/ms/draw/g;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 111
    .line 112
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "MeishuDrawAdWrapper"

    .line 119
    .line 120
    if-eqz v3, :cond_9

    .line 121
    .line 122
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 123
    .line 124
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    array-length v3, v3

    .line 131
    if-nez v3, :cond_0

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_0
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 136
    .line 137
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    const/4 v5, 0x1

    .line 144
    if-eq v3, v5, :cond_3

    .line 145
    .line 146
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 147
    .line 148
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    const/16 v6, 0xc

    .line 155
    .line 156
    if-ne v3, v6, :cond_1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "unsupported type: "

    .line 160
    .line 161
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 166
    .line 167
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v4, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 184
    .line 185
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-eqz v0, :cond_2

    .line 192
    .line 193
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 194
    .line 195
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    .line 208
    .line 209
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_2
    new-instance v0, Lcom/meishu/sdk/platform/ms/d;

    .line 213
    .line 214
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->UNSUPPORTED_TYPE:Ljava/lang/Integer;

    .line 215
    .line 216
    const-string v2, "unsupported type"

    .line 217
    .line 218
    invoke-direct {v0, v2, v1}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_3
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v3}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    const/4 v4, 0x0

    .line 244
    if-nez v3, :cond_4

    .line 245
    .line 246
    sget v3, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 247
    .line 248
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 253
    .line 254
    const/16 v3, 0x8

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_4
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 261
    .line 262
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-nez v3, :cond_5

    .line 273
    .line 274
    sget v3, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 275
    .line 276
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 281
    .line 282
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 283
    .line 284
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 285
    .line 286
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    invoke-virtual {v1, v3, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 291
    .line 292
    .line 293
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 294
    .line 295
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    aget-object v1, v1, v4

    .line 302
    .line 303
    new-instance v3, Lcom/meishu/sdk/platform/ms/draw/g$c;

    .line 304
    .line 305
    invoke-direct {v3, p0, v2, v0}, Lcom/meishu/sdk/platform/ms/draw/g$c;-><init>(Lcom/meishu/sdk/platform/ms/draw/g;Lcom/meishu/sdk/core/view/gif/GifImageView;Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v1, v3, v5}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 309
    .line 310
    .line 311
    sget v1, Lcom/meishu/sdk/R$id;->ms_draw_ad_detail_btn:I

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Landroid/widget/TextView;

    .line 318
    .line 319
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 320
    .line 321
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 322
    .line 323
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    and-int/2addr v2, v5

    .line 328
    if-ne v2, v5, :cond_6

    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_6
    move v5, v4

    .line 332
    :goto_2
    if-nez v5, :cond_7

    .line 333
    .line 334
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 335
    .line 336
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 337
    .line 338
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    const/4 v3, 0x2

    .line 343
    and-int/2addr v2, v3

    .line 344
    if-ne v2, v3, :cond_7

    .line 345
    .line 346
    new-instance v2, Lcom/meishu/sdk/platform/ms/draw/g$d;

    .line 347
    .line 348
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/ms/draw/g$d;-><init>(Lcom/meishu/sdk/platform/ms/draw/g;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    :cond_7
    if-eqz v5, :cond_8

    .line 355
    .line 356
    new-instance v1, Lcom/meishu/sdk/platform/ms/draw/g$e;

    .line 357
    .line 358
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/draw/g$e;-><init>(Lcom/meishu/sdk/platform/ms/draw/g;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .line 363
    .line 364
    :cond_8
    return-void

    .line 365
    :cond_9
    :goto_3
    const-string v0, "empty srcUrls"

    .line 366
    .line 367
    invoke-static {v4, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 371
    .line 372
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->EMPTY_SRC_URL:Ljava/lang/Integer;

    .line 373
    .line 374
    invoke-direct {v1, v0, v2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 388
    .line 389
    .line 390
    return-void
.end method

.method public loadAd()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/meishu/sdk/platform/ms/draw/g;->f:J

    .line 6
    .line 7
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 11
    .line 12
    iput-wide v0, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->C:J

    .line 13
    .line 14
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    and-int/lit8 v1, v0, 0x1

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v1, v3, :cond_0

    .line 25
    .line 26
    and-int/lit8 v1, v0, 0x2

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 31
    .line 32
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 33
    .line 34
    or-int/2addr v0, v3

    .line 35
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAct_type(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 42
    .line 43
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, v2, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 52
    .line 53
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 60
    aget-object v0, v0, v1

    .line 61
    .line 62
    new-instance v1, Lcom/meishu/sdk/platform/ms/draw/f;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/draw/f;-><init>(Lcom/meishu/sdk/platform/ms/draw/g;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/draw/g;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
