.class Lcom/octopus/ad/internal/b/e$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/ImageView;

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/widget/FrameLayout;

.field final synthetic i:Landroid/widget/ImageView;

.field final synthetic j:Landroid/widget/FrameLayout;

.field final synthetic k:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    iput p2, p0, Lcom/octopus/ad/internal/b/e$12;->a:F

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/internal/b/e$12;->b:Landroid/widget/ImageView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/octopus/ad/internal/b/e$12;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/octopus/ad/internal/b/e$12;->d:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/octopus/ad/internal/b/e$12;->e:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/octopus/ad/internal/b/e$12;->f:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/octopus/ad/internal/b/e$12;->g:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/octopus/ad/internal/b/e$12;->h:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/octopus/ad/internal/b/e$12;->i:Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/octopus/ad/internal/b/e$12;->j:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gtz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;I)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-gtz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;I)I

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    int-to-float v1, v1

    .line 91
    iget v2, p0, Lcom/octopus/ad/internal/b/e$12;->a:F

    .line 92
    .line 93
    div-float/2addr v1, v2

    .line 94
    float-to-int v1, v1

    .line 95
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    .line 97
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;)I

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    .line 114
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    int-to-float v1, v1

    .line 131
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/high16 v1, 0x3f800000    # 1.0f

    .line 136
    .line 137
    if-lez v0, :cond_3

    .line 138
    .line 139
    int-to-float v0, v0

    .line 140
    const/high16 v2, 0x43b40000    # 360.0f

    .line 141
    .line 142
    div-float/2addr v0, v2

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    move v0, v1

    .line 145
    :goto_0
    cmpl-float v2, v0, v1

    .line 146
    .line 147
    if-lez v2, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    move v1, v0

    .line 151
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->b:Landroid/widget/ImageView;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->c:Landroid/widget/ImageView;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->d:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->e:Landroid/widget/ImageView;

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->f:Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->g:Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 187
    .line 188
    invoke-static {v2}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 196
    .line 197
    invoke-static {v2, v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Ljava/util/ArrayList;F)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->e(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/model/ComplianceInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-eqz v0, :cond_6

    .line 207
    .line 208
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 219
    .line 220
    invoke-static {v3}, Lcom/octopus/ad/internal/b/e;->e(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/model/ComplianceInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    const/4 v4, 0x1

    .line 225
    invoke-static {v2, v3, v1, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createComplianceView(Landroid/content/Context;Lcom/octopus/ad/model/ComplianceInfo;FZ)Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroidx/appcompat/widget/AppCompatTextView;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->f(Lcom/octopus/ad/internal/b/e;)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    const/4 v1, 0x3

    .line 239
    if-eq v0, v1, :cond_5

    .line 240
    .line 241
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->f(Lcom/octopus/ad/internal/b/e;)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    const/4 v1, 0x4

    .line 248
    if-ne v0, v1, :cond_6

    .line 249
    .line 250
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 251
    .line 252
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->g(Lcom/octopus/ad/internal/b/e;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v1, Lcom/octopus/ad/internal/b/e$12$1;

    .line 257
    .line 258
    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$12$1;-><init>(Lcom/octopus/ad/internal/b/e$12;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 262
    .line 263
    .line 264
    :cond_6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/e;->isVideo()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_8

    .line 271
    .line 272
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/e;->getVideoUrls()Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_9

    .line 283
    .line 284
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->h:Landroid/widget/FrameLayout;

    .line 285
    .line 286
    const/high16 v1, -0x1000000

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 289
    .line 290
    .line 291
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 292
    .line 293
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->h(Lcom/octopus/ad/internal/b/e;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    const/4 v1, 0x0

    .line 298
    if-eqz v0, :cond_7

    .line 299
    .line 300
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 301
    .line 302
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->i(Lcom/octopus/ad/internal/b/e;)Landroid/view/TextureView;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 310
    .line 311
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->j(Lcom/octopus/ad/internal/b/e;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 316
    .line 317
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 325
    .line 326
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->l(Lcom/octopus/ad/internal/b/e;)V

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/e;->getImageUrl()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_9

    .line 341
    .line 342
    const/4 v0, 0x0

    .line 343
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/e;->getImageUrl()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    new-instance v2, Lcom/octopus/ad/internal/b/e$12$2;

    .line 354
    .line 355
    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/b/e$12$2;-><init>(Lcom/octopus/ad/internal/b/e$12;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    .line 359
    .line 360
    .line 361
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 362
    .line 363
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->j:Landroid/widget/FrameLayout;

    .line 364
    .line 365
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/widget/FrameLayout;)V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 369
    .line 370
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->h:Landroid/widget/FrameLayout;

    .line 371
    .line 372
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/view/ViewGroup;)V

    .line 373
    .line 374
    .line 375
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 376
    .line 377
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->f:Landroid/widget/TextView;

    .line 378
    .line 379
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/view/View;)V

    .line 380
    .line 381
    .line 382
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 383
    .line 384
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/e;->e()V

    .line 385
    .line 386
    .line 387
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_b

    .line 392
    .line 393
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/octopus/ad/OctopusAdSdkController;->isShowFeedBack()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_a

    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_a
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->g:Landroid/widget/TextView;

    .line 405
    .line 406
    const/16 v1, 0x8

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 413
    .line 414
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->e()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 423
    .line 424
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->m(Lcom/octopus/ad/internal/b/e;)Landroid/content/Context;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v1}, Lcom/octopus/ad/Octopus;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    const-string v2, "https://www.adintl.cn/sdkFeedback.html?slotId=${SLOT_ID}&sdkVersion=${SDK_VERSION}&deviceId=${DEVICE_ID}"

    .line 433
    .line 434
    invoke-static {v2, v0, v1}, Lcom/octopus/ad/internal/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12;->g:Landroid/widget/TextView;

    .line 439
    .line 440
    new-instance v2, Lcom/octopus/ad/internal/b/e$12$3;

    .line 441
    .line 442
    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/internal/b/e$12$3;-><init>(Lcom/octopus/ad/internal/b/e$12;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    .line 447
    .line 448
    return-void
.end method
