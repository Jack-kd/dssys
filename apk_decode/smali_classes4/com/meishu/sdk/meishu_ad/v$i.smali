.class public Lcom/meishu/sdk/meishu_ad/v$i;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;ZLandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/bquery/i;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/core/bquery/i;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$i;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$i;->a:Lcom/meishu/sdk/core/bquery/i;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/v$i;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/v$i;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/v$i;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/v$i;->e:Landroid/view/View;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic a(Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/core/bquery/i;Z)V
    .locals 1

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/meishu/sdk/core/view/DownloadView;

    invoke-direct {p3}, Lcom/meishu/sdk/core/view/DownloadView;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$i;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 5
    invoke-virtual {p3, v0, p1}, Lcom/meishu/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;)V

    .line 6
    sget p1, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    sget p1, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    invoke-virtual {p1, p3}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/v$i;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/core/bquery/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/meishu/sdk/meishu_ad/v$i;->a(Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/core/bquery/i;Z)V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v$i;->a:Lcom/meishu/sdk/core/bquery/i;

    .line 4
    .line 5
    sget v2, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v$i;->a:Lcom/meishu/sdk/core/bquery/i;

    .line 19
    .line 20
    sget v3, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 29
    .line 30
    .line 31
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v$i;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->B:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 34
    .line 35
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/v$i;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 36
    .line 37
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/v$i;->a:Lcom/meishu/sdk/core/bquery/i;

    .line 38
    .line 39
    new-instance v5, LQ0/a;

    .line 40
    .line 41
    invoke-direct {v5, v1, v3, v4}, LQ0/a;-><init>(Lcom/meishu/sdk/meishu_ad/v$i;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/core/bquery/i;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v5}, Lcom/meishu/sdk/meishu_ad/splash/l;->a(Lcom/meishu/sdk/meishu_ad/splash/l$a;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/meishu/sdk/core/utils/h;->a()V

    .line 53
    .line 54
    .line 55
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/v$i;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v3, v0}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/v$i;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAct_type(I)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/v$i;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 79
    .line 80
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v$i;->a:Lcom/meishu/sdk/core/bquery/i;

    .line 81
    .line 82
    iget-object v3, v5, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 83
    .line 84
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/v$i;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 85
    .line 86
    iget-object v6, v1, Lcom/meishu/sdk/meishu_ad/v$i;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 87
    .line 88
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/v$i;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 91
    .line 92
    .line 93
    sget v8, Lcom/meishu/sdk/R$id;->ms_splash_click_bg:I

    .line 94
    .line 95
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    check-cast v8, Landroid/widget/ImageView;

    .line 100
    .line 101
    sget v8, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 102
    .line 103
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    move-object v9, v8

    .line 108
    check-cast v9, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 109
    .line 110
    sget v8, Lcom/meishu/sdk/R$id;->ms_shake_img_container:I

    .line 111
    .line 112
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    sget v10, Lcom/meishu/sdk/R$id;->ms_shake_img:I

    .line 119
    .line 120
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v10, Landroid/widget/ImageView;

    .line 125
    .line 126
    sget v11, Lcom/meishu/sdk/R$id;->ms_shake_text:I

    .line 127
    .line 128
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    move-object v12, v11

    .line 133
    check-cast v12, Landroid/widget/TextView;

    .line 134
    .line 135
    sget v11, Lcom/meishu/sdk/R$id;->ms_shake_text_bottom:I

    .line 136
    .line 137
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    move-object v13, v11

    .line 142
    check-cast v13, Landroid/widget/TextView;

    .line 143
    .line 144
    sget v11, Lcom/meishu/sdk/R$id;->ms_shakeRoot:I

    .line 145
    .line 146
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    sget v14, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 153
    .line 154
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    check-cast v14, Landroid/widget/TextView;

    .line 159
    .line 160
    sget v15, Lcom/meishu/sdk/R$id;->ms_SwipeViewParent:I

    .line 161
    .line 162
    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    check-cast v15, Lcom/meishu/sdk/core/view/SwipeView;

    .line 167
    .line 168
    sget v2, Lcom/meishu/sdk/R$id;->ms_up_move_container:I

    .line 169
    .line 170
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 175
    .line 176
    move-object/from16 v16, v2

    .line 177
    .line 178
    sget v2, Lcom/meishu/sdk/R$id;->ms_up_move_iv:I

    .line 179
    .line 180
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Landroid/widget/ImageView;

    .line 185
    .line 186
    move-object/from16 v17, v2

    .line 187
    .line 188
    sget v2, Lcom/meishu/sdk/R$id;->ms_any_move_iv:I

    .line 189
    .line 190
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Landroid/widget/ImageView;

    .line 195
    .line 196
    move-object/from16 v18, v2

    .line 197
    .line 198
    sget v2, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Landroid/widget/ImageView;

    .line 205
    .line 206
    move-object/from16 v19, v4

    .line 207
    .line 208
    new-instance v4, Lcom/meishu/sdk/meishu_ad/n;

    .line 209
    .line 210
    move-object v1, v15

    .line 211
    move-object v15, v2

    .line 212
    move-object v2, v9

    .line 213
    move-object v9, v10

    .line 214
    move-object/from16 v10, v16

    .line 215
    .line 216
    move-object/from16 v16, v1

    .line 217
    .line 218
    move-object v1, v7

    .line 219
    move-object v7, v8

    .line 220
    move-object/from16 v20, v11

    .line 221
    .line 222
    move-object/from16 v11, v17

    .line 223
    .line 224
    move-object/from16 v8, v18

    .line 225
    .line 226
    invoke-direct/range {v4 .. v15}, Lcom/meishu/sdk/meishu_ad/n;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 227
    .line 228
    .line 229
    move-object v15, v8

    .line 230
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    const/4 v8, 0x4

    .line 238
    and-int/2addr v4, v8

    .line 239
    move-object/from16 v17, v7

    .line 240
    .line 241
    const-string v7, ""

    .line 242
    .line 243
    if-eq v4, v8, :cond_0

    .line 244
    .line 245
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    const/16 v8, 0x40

    .line 250
    .line 251
    and-int/2addr v4, v8

    .line 252
    if-ne v4, v8, :cond_1

    .line 253
    .line 254
    :cond_0
    const-string v4, "\u6447\u52a8\u624b\u673a"

    .line 255
    .line 256
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_3

    .line 269
    .line 270
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_2

    .line 275
    .line 276
    const-string v4, "\u8f6c\u52a8\u624b\u673a"

    .line 277
    .line 278
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    goto :goto_0

    .line 283
    :cond_2
    const-string v4, "\u6216\u8f6c\u52a8\u624b\u673a"

    .line 284
    .line 285
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    :cond_3
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    const/16 v8, 0x80

    .line 294
    .line 295
    and-int/2addr v4, v8

    .line 296
    move-object/from16 v18, v3

    .line 297
    .line 298
    const/16 v3, 0x20

    .line 299
    .line 300
    if-ne v4, v8, :cond_5

    .line 301
    .line 302
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_4

    .line 307
    .line 308
    const-string v4, "\u6ed1\u52a8\u5c4f\u5e55"

    .line 309
    .line 310
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    goto :goto_1

    .line 315
    :cond_4
    const-string v4, "\u6216\u6ed1\u52a8\u5c4f\u5e55"

    .line 316
    .line 317
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    goto :goto_1

    .line 322
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    and-int/2addr v4, v3

    .line 327
    if-ne v4, v3, :cond_7

    .line 328
    .line 329
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-eqz v4, :cond_6

    .line 334
    .line 335
    const-string v4, "\u4e0a\u6ed1\u5c4f\u5e55"

    .line 336
    .line 337
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v7

    .line 341
    goto :goto_1

    .line 342
    :cond_6
    const-string v4, "\u6216\u4e0a\u6ed1\u5c4f\u5e55"

    .line 343
    .line 344
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    :cond_7
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    const/4 v8, 0x2

    .line 353
    and-int/2addr v4, v8

    .line 354
    if-ne v4, v8, :cond_9

    .line 355
    .line 356
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-eqz v4, :cond_8

    .line 361
    .line 362
    const-string v4, "\u70b9\u51fb\u56fe\u6807"

    .line 363
    .line 364
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    goto :goto_2

    .line 369
    :cond_8
    const-string v4, "\u6216\u70b9\u51fb\u56fe\u6807"

    .line 370
    .line 371
    invoke-static {v7, v4}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    :cond_9
    :goto_2
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    const-string v4, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 379
    .line 380
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    .line 382
    .line 383
    iget-object v4, v5, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 384
    .line 385
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;)I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    iget-object v7, v5, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 390
    .line 391
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    move/from16 v21, v3

    .line 400
    .line 401
    int-to-double v3, v4

    .line 402
    const-wide v22, 0x3f947ae147ae147bL    # 0.02

    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    move/from16 v25, v8

    .line 408
    .line 409
    move-object/from16 v24, v9

    .line 410
    .line 411
    mul-double v8, v3, v22

    .line 412
    .line 413
    double-to-float v8, v8

    .line 414
    iget v9, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 415
    .line 416
    div-float/2addr v8, v9

    .line 417
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 418
    .line 419
    .line 420
    const-wide v8, 0x3f926e978d4fdf3bL    # 0.018

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    mul-double/2addr v8, v3

    .line 426
    double-to-float v8, v8

    .line 427
    iget v9, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 428
    .line 429
    div-float/2addr v8, v9

    .line 430
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    .line 432
    .line 433
    const-wide v8, 0x3f9374bc6a7ef9dbL    # 0.019

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    mul-double/2addr v3, v8

    .line 439
    double-to-float v3, v3

    .line 440
    iget v4, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 441
    .line 442
    div-float/2addr v3, v4

    .line 443
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 444
    .line 445
    .line 446
    sget v3, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 447
    .line 448
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    check-cast v3, Lcom/meishu/sdk/core/bquery/i;

    .line 453
    .line 454
    const/16 v4, 0x8

    .line 455
    .line 456
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 457
    .line 458
    .line 459
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eq v3, v4, :cond_a

    .line 464
    .line 465
    move-object/from16 v3, v16

    .line 466
    .line 467
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    goto :goto_3

    .line 471
    :cond_a
    move-object/from16 v3, v16

    .line 472
    .line 473
    :goto_3
    new-instance v4, Lcom/meishu/sdk/meishu_ad/f;

    .line 474
    .line 475
    invoke-direct {v4, v5}, Lcom/meishu/sdk/meishu_ad/f;-><init>(Lcom/meishu/sdk/meishu_ad/v;)V

    .line 476
    .line 477
    .line 478
    move-object/from16 v9, v24

    .line 479
    .line 480
    invoke-virtual {v9, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    const/4 v14, -0x1

    .line 492
    const/4 v7, 0x0

    .line 493
    if-nez v4, :cond_b

    .line 494
    .line 495
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_c

    .line 504
    .line 505
    :cond_b
    move-object v4, v1

    .line 506
    move-object v8, v2

    .line 507
    move v1, v7

    .line 508
    move/from16 v2, v25

    .line 509
    .line 510
    goto/16 :goto_7

    .line 511
    .line 512
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    and-int/lit8 v4, v4, 0x20

    .line 517
    .line 518
    move/from16 v8, v21

    .line 519
    .line 520
    if-eq v4, v8, :cond_11

    .line 521
    .line 522
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    const/16 v8, 0x80

    .line 527
    .line 528
    and-int/2addr v4, v8

    .line 529
    if-ne v4, v8, :cond_d

    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_d
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    and-int/lit8 v1, v1, 0x2

    .line 537
    .line 538
    move/from16 v2, v25

    .line 539
    .line 540
    if-ne v1, v2, :cond_e

    .line 541
    .line 542
    sget v1, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 549
    .line 550
    invoke-virtual {v1, v7}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClk_area()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-nez v1, :cond_f

    .line 562
    .line 563
    sget v1, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 570
    .line 571
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClk_area()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 576
    .line 577
    .line 578
    :cond_e
    :goto_4
    move-object/from16 v14, v19

    .line 579
    .line 580
    goto/16 :goto_a

    .line 581
    .line 582
    :cond_f
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    const/4 v2, 0x1

    .line 587
    if-ne v1, v2, :cond_10

    .line 588
    .line 589
    sget v1, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 590
    .line 591
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 596
    .line 597
    iget-object v1, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 598
    .line 599
    instance-of v2, v1, Landroid/widget/TextView;

    .line 600
    .line 601
    if-eqz v2, :cond_e

    .line 602
    .line 603
    check-cast v1, Landroid/widget/TextView;

    .line 604
    .line 605
    const-string v2, "\u70b9\u51fb\u6309\u94ae\u4e0b\u8f7d\u6216\u8df3\u8f6c\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 606
    .line 607
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    .line 609
    .line 610
    goto :goto_4

    .line 611
    :cond_10
    sget v1, Lcom/meishu/sdk/R$id;->ms_jump_btn:I

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 618
    .line 619
    iget-object v1, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 620
    .line 621
    instance-of v2, v1, Landroid/widget/TextView;

    .line 622
    .line 623
    if-eqz v2, :cond_e

    .line 624
    .line 625
    check-cast v1, Landroid/widget/TextView;

    .line 626
    .line 627
    const-string v2, "\u70b9\u51fb\u6309\u94ae\u67e5\u770b\u8be6\u60c5\u6216\u8df3\u8f6c\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 628
    .line 629
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    .line 631
    .line 632
    goto :goto_4

    .line 633
    :cond_11
    :goto_5
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    const/16 v8, 0x20

    .line 644
    .line 645
    and-int/2addr v4, v8

    .line 646
    if-ne v4, v8, :cond_13

    .line 647
    .line 648
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 649
    .line 650
    .line 651
    move-result v4

    .line 652
    const/16 v8, 0x80

    .line 653
    .line 654
    and-int/2addr v4, v8

    .line 655
    if-eq v4, v8, :cond_12

    .line 656
    .line 657
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    .line 662
    .line 663
    new-instance v4, Lcom/meishu/sdk/meishu_ad/t;

    .line 664
    .line 665
    invoke-direct {v4, v5, v10, v11, v14}, Lcom/meishu/sdk/meishu_ad/t;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v11, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 669
    .line 670
    .line 671
    :cond_12
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    const/4 v8, 0x2

    .line 676
    and-int/2addr v4, v8

    .line 677
    if-ne v4, v8, :cond_13

    .line 678
    .line 679
    new-instance v4, Lcom/meishu/sdk/meishu_ad/o;

    .line 680
    .line 681
    invoke-direct {v4, v5, v1, v6, v2}, Lcom/meishu/sdk/meishu_ad/o;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v10, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    .line 686
    .line 687
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 688
    .line 689
    .line 690
    move-result v4

    .line 691
    const/16 v8, 0x80

    .line 692
    .line 693
    and-int/2addr v4, v8

    .line 694
    if-ne v4, v8, :cond_14

    .line 695
    .line 696
    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    .line 698
    .line 699
    new-instance v4, Lcom/meishu/sdk/meishu_ad/s;

    .line 700
    .line 701
    invoke-direct {v4, v5, v15, v14}, Lcom/meishu/sdk/meishu_ad/s;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v15, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 705
    .line 706
    .line 707
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 708
    .line 709
    .line 710
    move-result v4

    .line 711
    const/4 v8, 0x2

    .line 712
    and-int/2addr v4, v8

    .line 713
    if-ne v4, v8, :cond_15

    .line 714
    .line 715
    new-instance v4, Lcom/meishu/sdk/meishu_ad/o;

    .line 716
    .line 717
    invoke-direct {v4, v5, v1, v6, v2}, Lcom/meishu/sdk/meishu_ad/o;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v15, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    .line 722
    .line 723
    goto :goto_6

    .line 724
    :cond_14
    const/4 v8, 0x2

    .line 725
    :cond_15
    :goto_6
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 726
    .line 727
    .line 728
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    const/16 v9, 0x20

    .line 733
    .line 734
    and-int/2addr v4, v9

    .line 735
    if-eq v4, v9, :cond_16

    .line 736
    .line 737
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 738
    .line 739
    .line 740
    move-result v4

    .line 741
    const/16 v9, 0x80

    .line 742
    .line 743
    and-int/2addr v4, v9

    .line 744
    if-ne v4, v9, :cond_e

    .line 745
    .line 746
    :cond_16
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 747
    .line 748
    .line 749
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    move-object/from16 v9, v19

    .line 754
    .line 755
    iget v10, v9, Lcom/meishu/sdk/meishu_ad/splash/d;->F:I

    .line 756
    .line 757
    invoke-virtual {v3, v4, v10}, Lcom/meishu/sdk/core/view/SwipeView;->setMoveDistance(II)V

    .line 758
    .line 759
    .line 760
    new-instance v4, Lcom/meishu/sdk/meishu_ad/m;

    .line 761
    .line 762
    move-object/from16 v29, v6

    .line 763
    .line 764
    move-object v6, v1

    .line 765
    move v1, v7

    .line 766
    move-object/from16 v7, v29

    .line 767
    .line 768
    move-object/from16 v29, v9

    .line 769
    .line 770
    move-object v9, v2

    .line 771
    move v2, v8

    .line 772
    move-object/from16 v8, v29

    .line 773
    .line 774
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/meishu_ad/m;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 775
    .line 776
    .line 777
    move-object/from16 v19, v8

    .line 778
    .line 779
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/view/SwipeView;->setOnSwipeListener(Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;)V

    .line 780
    .line 781
    .line 782
    goto/16 :goto_4

    .line 783
    .line 784
    :goto_7
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 788
    .line 789
    .line 790
    new-instance v7, Lcom/meishu/sdk/meishu_ad/g;

    .line 791
    .line 792
    move/from16 v25, v2

    .line 793
    .line 794
    move-object/from16 v14, v18

    .line 795
    .line 796
    move-object/from16 v2, v20

    .line 797
    .line 798
    invoke-direct {v7, v5, v14, v2}, Lcom/meishu/sdk/meishu_ad/g;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Landroid/widget/LinearLayout;)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v2, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 802
    .line 803
    .line 804
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    const/16 v7, 0x20

    .line 809
    .line 810
    and-int/2addr v2, v7

    .line 811
    move-object/from16 v18, v10

    .line 812
    .line 813
    move-object v14, v11

    .line 814
    const-wide/16 v10, 0x64

    .line 815
    .line 816
    if-ne v2, v7, :cond_17

    .line 817
    .line 818
    invoke-virtual/range {v19 .. v19}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    const/16 v7, 0x80

    .line 823
    .line 824
    and-int/2addr v2, v7

    .line 825
    if-eq v2, v7, :cond_17

    .line 826
    .line 827
    sget-object v2, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 828
    .line 829
    move-object/from16 v20, v4

    .line 830
    .line 831
    new-instance v4, Lcom/meishu/sdk/meishu_ad/q;

    .line 832
    .line 833
    move-object/from16 v26, v6

    .line 834
    .line 835
    move-object/from16 v28, v8

    .line 836
    .line 837
    move-object v6, v14

    .line 838
    move-object/from16 v8, v17

    .line 839
    .line 840
    move-object/from16 v7, v18

    .line 841
    .line 842
    move-object/from16 v14, v19

    .line 843
    .line 844
    move-object/from16 v27, v20

    .line 845
    .line 846
    invoke-direct/range {v4 .. v9}, Lcom/meishu/sdk/meishu_ad/q;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V

    .line 847
    .line 848
    .line 849
    move-object v6, v4

    .line 850
    move-object v4, v7

    .line 851
    move-object v7, v8

    .line 852
    invoke-virtual {v2, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 853
    .line 854
    .line 855
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    iget v6, v14, Lcom/meishu/sdk/meishu_ad/splash/d;->F:I

    .line 863
    .line 864
    invoke-virtual {v3, v2, v6}, Lcom/meishu/sdk/core/view/SwipeView;->setMoveDistance(II)V

    .line 865
    .line 866
    .line 867
    new-instance v2, Lcom/meishu/sdk/meishu_ad/h;

    .line 868
    .line 869
    move-object/from16 v6, v26

    .line 870
    .line 871
    move-object/from16 v8, v27

    .line 872
    .line 873
    move-object/from16 v1, v28

    .line 874
    .line 875
    invoke-direct {v2, v5, v8, v6, v1}, Lcom/meishu/sdk/meishu_ad/h;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/view/SwipeView;->setOnSwipeListener(Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    and-int/lit8 v2, v2, 0x2

    .line 886
    .line 887
    move/from16 v10, v25

    .line 888
    .line 889
    if-ne v2, v10, :cond_18

    .line 890
    .line 891
    new-instance v2, Lcom/meishu/sdk/meishu_ad/i;

    .line 892
    .line 893
    invoke-direct {v2, v5, v8, v6, v1}, Lcom/meishu/sdk/meishu_ad/i;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    .line 898
    .line 899
    goto :goto_8

    .line 900
    :cond_17
    move-object v1, v8

    .line 901
    move-object/from16 v7, v17

    .line 902
    .line 903
    move-object/from16 v14, v19

    .line 904
    .line 905
    move-object v8, v4

    .line 906
    :cond_18
    :goto_8
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    const/16 v4, 0x80

    .line 911
    .line 912
    and-int/2addr v2, v4

    .line 913
    if-ne v2, v4, :cond_19

    .line 914
    .line 915
    sget-object v2, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 916
    .line 917
    new-instance v4, Lcom/meishu/sdk/meishu_ad/p;

    .line 918
    .line 919
    invoke-direct {v4, v5, v15, v9, v7}, Lcom/meishu/sdk/meishu_ad/p;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    .line 920
    .line 921
    .line 922
    const-wide/16 v9, 0x64

    .line 923
    .line 924
    invoke-virtual {v2, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    .line 926
    .line 927
    const/4 v2, 0x0

    .line 928
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 932
    .line 933
    .line 934
    move-result v2

    .line 935
    iget v4, v14, Lcom/meishu/sdk/meishu_ad/splash/d;->F:I

    .line 936
    .line 937
    invoke-virtual {v3, v2, v4}, Lcom/meishu/sdk/core/view/SwipeView;->setMoveDistance(II)V

    .line 938
    .line 939
    .line 940
    new-instance v2, Lcom/meishu/sdk/meishu_ad/j;

    .line 941
    .line 942
    invoke-direct {v2, v5, v8, v6, v1}, Lcom/meishu/sdk/meishu_ad/j;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/view/SwipeView;->setOnSwipeListener(Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    const/4 v10, 0x2

    .line 953
    and-int/2addr v2, v10

    .line 954
    if-ne v2, v10, :cond_1a

    .line 955
    .line 956
    new-instance v2, Lcom/meishu/sdk/meishu_ad/k;

    .line 957
    .line 958
    invoke-direct {v2, v5, v8, v6, v1}, Lcom/meishu/sdk/meishu_ad/k;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    .line 963
    .line 964
    goto :goto_9

    .line 965
    :cond_19
    const/4 v2, 0x0

    .line 966
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 970
    .line 971
    .line 972
    new-instance v2, Lcom/meishu/sdk/meishu_ad/r;

    .line 973
    .line 974
    const/4 v3, -0x1

    .line 975
    invoke-direct {v2, v5, v9, v3}, Lcom/meishu/sdk/meishu_ad/r;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;I)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v9, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 979
    .line 980
    .line 981
    :cond_1a
    :goto_9
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 982
    .line 983
    .line 984
    move-result v2

    .line 985
    const/4 v10, 0x2

    .line 986
    and-int/2addr v2, v10

    .line 987
    if-ne v2, v10, :cond_1b

    .line 988
    .line 989
    new-instance v2, Lcom/meishu/sdk/meishu_ad/l;

    .line 990
    .line 991
    invoke-direct {v2, v5, v8, v6, v1}, Lcom/meishu/sdk/meishu_ad/l;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    .line 996
    .line 997
    :cond_1b
    :goto_a
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClk_area()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    if-nez v1, :cond_1c

    .line 1006
    .line 1007
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClk_area()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    .line 1013
    .line 1014
    :cond_1c
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAction_desc()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v1

    .line 1022
    if-nez v1, :cond_1d

    .line 1023
    .line 1024
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAction_desc()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v1

    .line 1028
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    .line 1030
    .line 1031
    :cond_1d
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    .line 1036
    .line 1037
    .line 1038
    move-result v1

    .line 1039
    if-eqz v1, :cond_1f

    .line 1040
    .line 1041
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v1

    .line 1049
    if-nez v1, :cond_1e

    .line 1050
    .line 1051
    sget v1, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 1052
    .line 1053
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 1058
    .line 1059
    invoke-virtual {v14}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    const/4 v2, 0x0

    .line 1064
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 1065
    .line 1066
    .line 1067
    :cond_1e
    :goto_b
    move-object/from16 v1, p0

    .line 1068
    .line 1069
    goto :goto_c

    .line 1070
    :cond_1f
    sget v1, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 1071
    .line 1072
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 1077
    .line 1078
    const/16 v4, 0x8

    .line 1079
    .line 1080
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 1081
    .line 1082
    .line 1083
    goto :goto_b

    .line 1084
    :goto_c
    :try_start_0
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/v$i;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 1085
    .line 1086
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/v$i;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 1087
    .line 1088
    iget-object v4, v3, Lcom/meishu/sdk/meishu_ad/splash/c;->e:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 1089
    .line 1090
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/v$i;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 1091
    .line 1092
    iget-object v6, v1, Lcom/meishu/sdk/meishu_ad/v$i;->e:Landroid/view/View;

    .line 1093
    .line 1094
    const/4 v7, 0x1

    .line 1095
    invoke-virtual/range {v2 .. v7}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 1096
    .line 1097
    .line 1098
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v$i;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 1099
    .line 1100
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    const/4 v10, 0x2

    .line 1105
    if-ne v0, v10, :cond_20

    .line 1106
    .line 1107
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/v$i;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 1108
    .line 1109
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 1110
    .line 1111
    if-eqz v0, :cond_20

    .line 1112
    .line 1113
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    .line 1115
    .line 1116
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    goto :goto_d

    .line 1119
    :cond_20
    return-void

    .line 1120
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1121
    .line 1122
    .line 1123
    return-void
.end method
