.class public Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;
.super Lcom/kwad/components/ad/splashscreen/widget/c;
.source "SourceFile"


# static fields
.field private static LG:I = 0x32

.field private static LH:I = -0xc

.field private static LI:I = -0x19

.field private static LJ:I = 0xc

.field private static LK:I = 0x19


# instance fields
.field private LF:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private iF:Landroid/widget/ImageView;

.field private qY:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/kwad/sdk/R$styleable;->ksad_KsShakeView:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    sget p3, Lcom/kwad/sdk/R$styleable;->ksad_KsShakeView_ksad_shakeIcon:I

    .line 9
    .line 10
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_ic_rotate_phone:I

    .line 11
    .line 12
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iput p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LF:I

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    .line 20
    .line 21
    new-instance p2, Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->qY:Landroid/widget/ImageView;

    .line 31
    .line 32
    sget p3, Lcom/kwad/sdk/R$drawable;->ksad_ic_rotate_line:I

    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    const/4 p3, -0x2

    .line 40
    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x31

    .line 44
    .line 45
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->qY:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 62
    .line 63
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .line 65
    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    const/high16 p3, 0x41b00000    # 22.0f

    .line 69
    .line 70
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    .line 79
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final fZ()Landroid/animation/Animator;
    .locals 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->getInteractionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    const/high16 v3, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v2, v3

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    div-float/2addr v2, v3

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 32
    .line 33
    .line 34
    sget v2, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LI:I

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v4, v3, [F

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    aput v6, v4, v5

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    aput v2, v4, v7

    .line 46
    .line 47
    const-string v2, "rotation"

    .line 48
    .line 49
    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-wide/16 v8, 0x1f4

    .line 54
    .line 55
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-array v10, v3, [F

    .line 60
    .line 61
    fill-array-data v10, :array_0

    .line 62
    .line 63
    .line 64
    const-string v11, "alpha"

    .line 65
    .line 66
    invoke-static {v0, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    const-wide/16 v12, 0x154

    .line 71
    .line 72
    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    .line 75
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LI:I

    .line 76
    .line 77
    int-to-float v14, v14

    .line 78
    new-array v15, v3, [F

    .line 79
    .line 80
    aput v14, v15, v5

    .line 81
    .line 82
    aput v6, v15, v7

    .line 83
    .line 84
    invoke-static {v0, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 89
    .line 90
    move/from16 v16, v5

    .line 91
    .line 92
    move/from16 v17, v6

    .line 93
    .line 94
    int-to-long v5, v15

    .line 95
    invoke-virtual {v14, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    sget v6, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 100
    .line 101
    int-to-float v6, v6

    .line 102
    new-array v14, v3, [F

    .line 103
    .line 104
    aput v17, v14, v16

    .line 105
    .line 106
    aput v6, v14, v7

    .line 107
    .line 108
    invoke-static {v0, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 113
    .line 114
    int-to-long v14, v14

    .line 115
    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 120
    .line 121
    int-to-float v14, v14

    .line 122
    new-array v15, v3, [F

    .line 123
    .line 124
    aput v14, v15, v16

    .line 125
    .line 126
    aput v17, v15, v7

    .line 127
    .line 128
    invoke-static {v0, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 133
    .line 134
    int-to-long v12, v15

    .line 135
    invoke-virtual {v14, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    sget v13, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 140
    .line 141
    int-to-float v13, v13

    .line 142
    new-array v14, v3, [F

    .line 143
    .line 144
    aput v17, v14, v16

    .line 145
    .line 146
    aput v13, v14, v7

    .line 147
    .line 148
    invoke-static {v0, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 153
    .line 154
    int-to-long v14, v14

    .line 155
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 160
    .line 161
    int-to-float v14, v14

    .line 162
    new-array v15, v3, [F

    .line 163
    .line 164
    aput v14, v15, v16

    .line 165
    .line 166
    aput v17, v15, v7

    .line 167
    .line 168
    invoke-static {v0, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 173
    .line 174
    move/from16 v20, v7

    .line 175
    .line 176
    int-to-long v7, v15

    .line 177
    invoke-virtual {v14, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    new-array v8, v3, [F

    .line 182
    .line 183
    fill-array-data v8, :array_1

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    const-wide/16 v14, 0x1f4

    .line 191
    .line 192
    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    .line 194
    .line 195
    sget v9, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LK:I

    .line 196
    .line 197
    int-to-float v9, v9

    .line 198
    new-array v14, v3, [F

    .line 199
    .line 200
    aput v17, v14, v16

    .line 201
    .line 202
    aput v9, v14, v20

    .line 203
    .line 204
    invoke-static {v0, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    const-wide/16 v14, 0x1f4

    .line 209
    .line 210
    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    new-array v14, v3, [F

    .line 215
    .line 216
    fill-array-data v14, :array_2

    .line 217
    .line 218
    .line 219
    invoke-static {v0, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    const-wide/16 v14, 0x154

    .line 224
    .line 225
    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    .line 227
    .line 228
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LK:I

    .line 229
    .line 230
    int-to-float v14, v14

    .line 231
    new-array v15, v3, [F

    .line 232
    .line 233
    aput v14, v15, v16

    .line 234
    .line 235
    aput v17, v15, v20

    .line 236
    .line 237
    invoke-static {v0, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 242
    .line 243
    move-object/from16 v19, v4

    .line 244
    .line 245
    int-to-long v3, v15

    .line 246
    invoke-virtual {v14, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    sget v4, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 251
    .line 252
    int-to-float v4, v4

    .line 253
    const/4 v14, 0x2

    .line 254
    new-array v15, v14, [F

    .line 255
    .line 256
    aput v17, v15, v16

    .line 257
    .line 258
    aput v4, v15, v20

    .line 259
    .line 260
    invoke-static {v0, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    sget v15, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 265
    .line 266
    int-to-long v14, v15

    .line 267
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LH:I

    .line 272
    .line 273
    int-to-float v14, v14

    .line 274
    move-object/from16 v18, v3

    .line 275
    .line 276
    const/4 v15, 0x2

    .line 277
    new-array v3, v15, [F

    .line 278
    .line 279
    aput v14, v3, v16

    .line 280
    .line 281
    aput v17, v3, v20

    .line 282
    .line 283
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    sget v14, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 288
    .line 289
    move-object/from16 v22, v4

    .line 290
    .line 291
    move-object/from16 v21, v5

    .line 292
    .line 293
    int-to-long v4, v14

    .line 294
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    sget v4, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 299
    .line 300
    int-to-float v4, v4

    .line 301
    new-array v5, v15, [F

    .line 302
    .line 303
    aput v17, v5, v16

    .line 304
    .line 305
    aput v4, v5, v20

    .line 306
    .line 307
    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    sget v5, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 312
    .line 313
    move-object v14, v6

    .line 314
    int-to-long v5, v5

    .line 315
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    sget v5, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LJ:I

    .line 320
    .line 321
    int-to-float v5, v5

    .line 322
    new-array v6, v15, [F

    .line 323
    .line 324
    aput v5, v6, v16

    .line 325
    .line 326
    aput v17, v6, v20

    .line 327
    .line 328
    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    sget v2, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LG:I

    .line 333
    .line 334
    int-to-long v5, v2

    .line 335
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const/16 v2, 0xf

    .line 340
    .line 341
    new-array v2, v2, [Landroid/animation/Animator;

    .line 342
    .line 343
    aput-object v19, v2, v16

    .line 344
    .line 345
    aput-object v10, v2, v20

    .line 346
    .line 347
    aput-object v21, v2, v15

    .line 348
    .line 349
    const/4 v5, 0x3

    .line 350
    aput-object v14, v2, v5

    .line 351
    .line 352
    const/4 v5, 0x4

    .line 353
    aput-object v12, v2, v5

    .line 354
    .line 355
    const/4 v5, 0x5

    .line 356
    aput-object v13, v2, v5

    .line 357
    .line 358
    const/4 v5, 0x6

    .line 359
    aput-object v7, v2, v5

    .line 360
    .line 361
    const/4 v5, 0x7

    .line 362
    aput-object v8, v2, v5

    .line 363
    .line 364
    const/16 v5, 0x8

    .line 365
    .line 366
    aput-object v9, v2, v5

    .line 367
    .line 368
    const/16 v5, 0x9

    .line 369
    .line 370
    aput-object v11, v2, v5

    .line 371
    .line 372
    const/16 v5, 0xa

    .line 373
    .line 374
    aput-object v18, v2, v5

    .line 375
    .line 376
    const/16 v5, 0xb

    .line 377
    .line 378
    aput-object v22, v2, v5

    .line 379
    .line 380
    const/16 v5, 0xc

    .line 381
    .line 382
    aput-object v3, v2, v5

    .line 383
    .line 384
    const/16 v3, 0xd

    .line 385
    .line 386
    aput-object v4, v2, v3

    .line 387
    .line 388
    const/16 v3, 0xe

    .line 389
    .line 390
    aput-object v0, v2, v3

    .line 391
    .line 392
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 393
    .line 394
    .line 395
    return-object v1

    .line 396
    nop

    .line 397
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAnimationDelayTime()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public getInteractionView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final oa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->iF:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->LF:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final ob()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/components/ad/splashscreen/widget/KsRotateView;->getInteractionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
