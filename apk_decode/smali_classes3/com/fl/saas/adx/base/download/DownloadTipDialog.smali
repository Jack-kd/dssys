.class public Lcom/fl/saas/adx/base/download/DownloadTipDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;,
        Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;
    }
.end annotation


# static fields
.field public static final HTML_END:Ljava/lang/String; = "</body>\n</html>"

.field public static final HTML_HEAD:Ljava/lang/String; = "<!DOCTYPE html>\n<html id=\"html\">\n<head>\n<meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\" />\n<meta HTTP-EQUIV=\"pragma\" CONTENT=\"no-cache\">\n</head>\n<body>"


# instance fields
.field private canClickDownLoad:Z

.field private dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

.field private downLoadUrl:Ljava/lang/String;

.field private downloadFilePath:Ljava/lang/String;

.field private downloadProgress:I

.field private isDownload:Z

.field private isDownloadSuccess:Z

.field private mContext:Landroid/content/Context;

.field private mLinstener:Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;

.field private mOwnerActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private tvConfirm:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->canClickDownLoad:Z

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    instance-of v1, p1, Landroid/app/Activity;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p1, Landroid/app/Activity;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mOwnerActivityRef:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_b

    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 48
    .line 49
    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    const/16 v2, 0x11

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, -0x1

    .line 72
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    .line 74
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    iput-object p3, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mLinstener:Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;

    .line 80
    .line 81
    if-nez p2, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    new-instance p3, Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-direct {p3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget v2, Lcom/fl/saas/R$layout;->fl_adx_download_tip:I

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 108
    .line 109
    iget-object v1, p2, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_2

    .line 116
    .line 117
    iget-object v1, p2, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget-object v1, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 121
    .line 122
    :goto_1
    iput-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->downLoadUrl:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 125
    .line 126
    sget v2, Lcom/fl/saas/R$id;->tv_yd_saas_s2s_download:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->tvConfirm:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 137
    .line 138
    sget v2, Lcom/fl/saas/R$id;->iv_yd_saas_download_tip_close:I

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Landroid/widget/ImageView;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 147
    .line 148
    sget v3, Lcom/fl/saas/R$id;->iv_yd_saas_s2s_download_icon:I

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Landroid/widget/ImageView;

    .line 155
    .line 156
    iget-object v3, p2, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    const/16 v4, 0x8

    .line 163
    .line 164
    if-nez v3, :cond_3

    .line 165
    .line 166
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    iget-object v3, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {v3}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableDiskCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3, v0}, Lcom/fl/saas/adx/util/FLImageLoader;->setEnableMemoryCache(Z)Lcom/fl/saas/adx/util/FLImageLoader;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v3, p2, Lcom/fl/saas/j;->x1:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v2, v3}, Lcom/fl/saas/adx/util/FLImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :goto_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 193
    .line 194
    sget v2, Lcom/fl/saas/R$id;->tv_yd_saas_s2s_download_name:I

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/widget/TextView;

    .line 201
    .line 202
    iget-object v2, p2, Lcom/fl/saas/j;->C0:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_4

    .line 209
    .line 210
    iget-object v2, p2, Lcom/fl/saas/j;->C0:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    :goto_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 223
    .line 224
    sget v2, Lcom/fl/saas/R$id;->tv_yd_saas_s2s_download_advertiser:I

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroid/widget/TextView;

    .line 231
    .line 232
    iget-object v2, p2, Lcom/fl/saas/j;->D0:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_5

    .line 239
    .line 240
    iget-object v2, p2, Lcom/fl/saas/j;->D0:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    :goto_4
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 253
    .line 254
    sget v2, Lcom/fl/saas/R$id;->tv_yd_saas_s2s_download_version:I

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Landroid/widget/TextView;

    .line 261
    .line 262
    iget-object v2, p2, Lcom/fl/saas/j;->E0:Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_6

    .line 269
    .line 270
    iget-object v2, p2, Lcom/fl/saas/j;->E0:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    :goto_5
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 283
    .line 284
    sget v2, Lcom/fl/saas/R$id;->tv_yd_saas_s2s_download_permission:I

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    check-cast v0, Landroid/widget/TextView;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 297
    .line 298
    .line 299
    iget-object v2, p2, Lcom/fl/saas/j;->G0:Ljava/lang/String;

    .line 300
    .line 301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-nez v2, :cond_7

    .line 306
    .line 307
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    new-instance v2, Lcom/fl/saas/adx/base/download/DownloadTipDialog$1;

    .line 311
    .line 312
    invoke-direct {v2, p0, p2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog$1;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)V

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_7
    iget-object v2, p2, Lcom/fl/saas/j;->G0:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_8

    .line 323
    .line 324
    iget-object v2, p2, Lcom/fl/saas/j;->I0:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-nez v2, :cond_8

    .line 331
    .line 332
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    new-instance v2, Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;

    .line 336
    .line 337
    invoke-direct {v2, p0, p2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog$2;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)V

    .line 338
    .line 339
    .line 340
    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_8
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    :goto_7
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 348
    .line 349
    sget v2, Lcom/fl/saas/R$id;->tv_yd_saas_s2s_download_privacy:I

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Landroid/widget/TextView;

    .line 356
    .line 357
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 362
    .line 363
    .line 364
    iget-object v2, p2, Lcom/fl/saas/j;->H0:Ljava/lang/String;

    .line 365
    .line 366
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-nez v2, :cond_9

    .line 371
    .line 372
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    new-instance v2, Lcom/fl/saas/adx/base/download/DownloadTipDialog$3;

    .line 376
    .line 377
    invoke-direct {v2, p0, p2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog$3;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_9
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    :goto_8
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 388
    .line 389
    sget v2, Lcom/fl/saas/R$id;->tv_yd_saas_s2s_download_function:I

    .line 390
    .line 391
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Landroid/widget/TextView;

    .line 396
    .line 397
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 402
    .line 403
    .line 404
    iget-object v2, p2, Lcom/fl/saas/j;->J0:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-nez v2, :cond_a

    .line 411
    .line 412
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    .line 414
    .line 415
    new-instance p1, Lcom/fl/saas/adx/base/download/a;

    .line 416
    .line 417
    invoke-direct {p1, p0, p2}, Lcom/fl/saas/adx/base/download/a;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_a
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    :goto_9
    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->tvConfirm:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    .line 428
    .line 429
    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    .line 430
    .line 431
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 432
    .line 433
    .line 434
    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->tvConfirm:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    .line 435
    .line 436
    new-instance v0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;

    .line 437
    .line 438
    invoke-direct {v0, p0, p2}, Lcom/fl/saas/adx/base/download/DownloadTipDialog$4;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    .line 443
    .line 444
    new-instance p1, Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;

    .line 445
    .line 446
    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog$5;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    .line 451
    .line 452
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    .line 457
    .line 458
    .line 459
    move-result p2

    .line 460
    if-le p1, p2, :cond_b

    .line 461
    .line 462
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileHeight()I

    .line 463
    .line 464
    .line 465
    move-result p1

    .line 466
    int-to-double p1, p1

    .line 467
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    mul-double/2addr p1, v0

    .line 473
    double-to-int p1, p1

    .line 474
    div-int/lit8 p1, p1, 0xc

    .line 475
    .line 476
    mul-int/2addr p1, v4

    .line 477
    goto :goto_a

    .line 478
    :cond_b
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    int-to-double p1, p1

    .line 483
    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    mul-double/2addr p1, v0

    .line 489
    double-to-int p1, p1

    .line 490
    :goto_a
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 491
    .line 492
    const/4 v0, -0x2

    .line 493
    invoke-direct {p2, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 494
    .line 495
    .line 496
    const/16 p1, 0xe

    .line 497
    .line 498
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 499
    .line 500
    .line 501
    const/16 p1, 0xf

    .line 502
    .line 503
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 504
    .line 505
    .line 506
    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mRootView:Landroid/view/View;

    .line 507
    .line 508
    invoke-virtual {p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :goto_b
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 516
    .line 517
    .line 518
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/fl/saas/j;->J0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->launch(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Lcom/fl/saas/j;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->spliceHtml(Lcom/fl/saas/j;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1002(Lcom/fl/saas/adx/base/download/DownloadTipDialog;I)I
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->downloadProgress:I

    return p1
.end method

.method public static synthetic access$200(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->canClickDownLoad:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->canClickDownLoad:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->isDownloadSuccess:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->isDownloadSuccess:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->downloadFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->downloadFilePath:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->tvConfirm:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->downLoadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->isDownload:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->isDownload:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;
    .locals 0

    iget-object p0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mLinstener:Lcom/fl/saas/adx/base/download/DownloadTipDialog$OnAgreeClickListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->setProgressText()V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/download/DownloadTipDialog;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private setProgressText()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->canClickDownLoad:Z

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->tvConfirm:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    invoke-virtual {v1, v0}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setState(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->tvConfirm:Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;

    iget v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->downloadProgress:I

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v2, v1}, Lcom/fl/saas/adx/base/widget/DownloadProgressTextView;->setProgressText(Ljava/lang/String;I)V

    return-void
.end method

.method private spliceHtml(Lcom/fl/saas/j;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "<div>\u6682\u672a\u83b7\u53d6\u5230\u6743\u9650\u5217\u8868\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5</div>"

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object v2, p1, Lcom/fl/saas/j;->I0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/fl/saas/j;->I0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge p1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "permission_name"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "permission_desc"

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v6, " <li style=\"padding: 3px 0\">\n <span>"

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v6, "."

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, ": "

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, "</span>\n </li>"

    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v3, "<!DOCTYPE html>\n<html id=\"html\">\n<head>\n<meta charset=\"UTF-8\">\n<meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\" />\n<meta HTTP-EQUIV=\"pragma\" CONTENT=\"no-cache\">\n</head>\n<body>"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, "</body>\n</html>"

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mOwnerActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/fl/saas/E;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/fl/saas/E;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/fl/saas/E;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/fl/saas/E;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/fl/saas/E;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/fl/saas/E;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/beizi/fusion/asnp/adn/ad/download/service/b;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fl/saas/adx/base/download/DownloadTipDialog;->dialogUIUpdateReceiver:Lcom/fl/saas/adx/base/download/DownloadTipDialog$DialogUIUpdateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    :goto_1
    new-instance v0, Lcom/fl/saas/adx/base/download/b;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/download/b;-><init>(Lcom/fl/saas/adx/base/download/DownloadTipDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :goto_2
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void

    :goto_3
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
