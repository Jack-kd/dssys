.class public Lcom/meishu/sdk/meishu_ad/n;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Landroid/widget/RelativeLayout;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Landroid/widget/RelativeLayout;

.field public final synthetic f:Landroid/widget/ImageView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/ImageView;

.field public final synthetic k:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/n;->k:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/n;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/n;->b:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/n;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/n;->d:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/n;->e:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/meishu/sdk/meishu_ad/n;->f:Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/meishu/sdk/meishu_ad/n;->g:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/meishu/sdk/meishu_ad/n;->h:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/meishu/sdk/meishu_ad/n;->i:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/meishu/sdk/meishu_ad/n;->j:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/n;->k:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/n;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/meishu/sdk/core/view/DownloadView;->isDownloadStyleAd(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/n;->b:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    int-to-double v3, v0

    .line 33
    const-wide v5, 0x402b666666666666L    # 13.7

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    mul-double v7, v3, v5

    .line 39
    .line 40
    double-to-int v9, v7

    .line 41
    div-int/lit8 v9, v9, 0x64

    .line 42
    .line 43
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 44
    .line 45
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 46
    .line 47
    const-wide v10, 0x400e666666666666L    # 3.8

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    mul-double/2addr v10, v3

    .line 53
    double-to-int v10, v10

    .line 54
    div-int/lit8 v10, v10, 0x64

    .line 55
    .line 56
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 57
    .line 58
    iget-object v10, p0, Lcom/meishu/sdk/meishu_ad/n;->b:Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    iget-object v10, p0, Lcom/meishu/sdk/meishu_ad/n;->c:Landroid/widget/ImageView;

    .line 64
    .line 65
    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    const-wide v10, 0x3fe2f1a9fbe76c8bL    # 0.592

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    mul-double/2addr v7, v10

    .line 74
    double-to-int v2, v7

    .line 75
    div-int/lit8 v2, v2, 0x64

    .line 76
    .line 77
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/n;->d:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .line 85
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 86
    .line 87
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 88
    .line 89
    const/16 v2, 0xd

    .line 90
    .line 91
    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/n;->d:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/n;->e:Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    .line 107
    const-wide v7, 0x4006666666666666L    # 2.8

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    mul-double/2addr v7, v3

    .line 113
    double-to-int v7, v7

    .line 114
    div-int/lit8 v7, v7, 0x64

    .line 115
    .line 116
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 117
    .line 118
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 119
    .line 120
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 121
    .line 122
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 123
    .line 124
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/n;->e:Landroid/widget/RelativeLayout;

    .line 125
    .line 126
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/n;->f:Landroid/widget/ImageView;

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    .line 137
    const/16 v7, 0xc

    .line 138
    .line 139
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    .line 141
    .line 142
    const/16 v7, 0xe

    .line 143
    .line 144
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    .line 146
    .line 147
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/n;->f:Landroid/widget/ImageView;

    .line 148
    .line 149
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/n;->g:Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 159
    .line 160
    const-wide v7, 0x3feccccccccccccdL    # 0.9

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    mul-double/2addr v7, v3

    .line 166
    double-to-int v7, v7

    .line 167
    div-int/lit8 v7, v7, 0x64

    .line 168
    .line 169
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 170
    .line 171
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/n;->g:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/n;->h:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .line 184
    const-wide v7, 0x401399999999999aL    # 4.9

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    mul-double/2addr v7, v3

    .line 190
    double-to-int v7, v7

    .line 191
    div-int/lit8 v7, v7, 0x64

    .line 192
    .line 193
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 194
    .line 195
    if-eqz v1, :cond_1

    .line 196
    .line 197
    const-wide v7, 0x401b99999999999aL    # 6.9

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    mul-double/2addr v7, v3

    .line 203
    double-to-int v7, v7

    .line 204
    div-int/lit8 v7, v7, 0x64

    .line 205
    .line 206
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 207
    .line 208
    :cond_1
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/n;->h:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/n;->k:Lcom/meishu/sdk/meishu_ad/v;

    .line 214
    .line 215
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/n;->i:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    .line 233
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 234
    .line 235
    int-to-double v8, v8

    .line 236
    mul-double/2addr v8, v5

    .line 237
    double-to-int v5, v8

    .line 238
    div-int/lit8 v5, v5, 0x64

    .line 239
    .line 240
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 241
    .line 242
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 243
    .line 244
    const-wide v5, 0x4016cccccccccccdL    # 5.7

    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    mul-double/2addr v5, v3

    .line 250
    double-to-int v5, v5

    .line 251
    div-int/lit8 v5, v5, 0x64

    .line 252
    .line 253
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 254
    .line 255
    if-eqz v1, :cond_2

    .line 256
    .line 257
    const-wide v5, 0x401acccccccccccdL    # 6.7

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    mul-double/2addr v5, v3

    .line 263
    double-to-int v1, v5

    .line 264
    div-int/lit8 v1, v1, 0x64

    .line 265
    .line 266
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 267
    .line 268
    :cond_2
    mul-int/lit8 v0, v0, 0x6

    .line 269
    .line 270
    div-int/lit8 v0, v0, 0x64

    .line 271
    .line 272
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 273
    .line 274
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/n;->i:Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/n;->j:Landroid/widget/ImageView;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    .line 287
    const-wide v5, 0x3ffccccccccccccdL    # 1.8

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    mul-double/2addr v3, v5

    .line 293
    double-to-int v1, v3

    .line 294
    div-int/lit8 v1, v1, 0x64

    .line 295
    .line 296
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 297
    .line 298
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 299
    .line 300
    int-to-double v1, v1

    .line 301
    const-wide v3, 0x400ccccccccccccdL    # 3.6

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    mul-double/2addr v1, v3

    .line 307
    double-to-int v1, v1

    .line 308
    div-int/lit8 v1, v1, 0x64

    .line 309
    .line 310
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 311
    .line 312
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/n;->j:Landroid/widget/ImageView;

    .line 313
    .line 314
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .line 316
    .line 317
    return-void
.end method
