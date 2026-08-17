.class public Lcom/kwad/components/core/page/widget/TextProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# instance fields
.field private afW:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private afX:Landroid/graphics/LinearGradient;

.field private afY:Landroid/graphics/Matrix;

.field private afZ:Z

.field private aga:Z

.field private agb:Z

.field private agc:I

.field private agd:I

.field private age:Landroid/graphics/drawable/Drawable;

.field private agf:I

.field private agg:Landroid/graphics/Rect;

.field private agh:[I

.field private agi:I

.field private agj:I

.field private agk:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/core/page/widget/TextProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/kwad/sdk/wrapper/m;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agb:Z

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 6
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/TextProgressBar;->uV()V

    return-void
.end method

.method private setProgressText(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    mul-float/2addr p1, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    div-float/2addr p1, v0

    .line 11
    const/high16 v0, 0x42c80000    # 100.0f

    .line 12
    .line 13
    mul-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "%"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method private uV()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/high16 v3, 0x41400000    # 12.0f

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 52
    .line 53
    iput v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 54
    .line 55
    const v0, -0x1c99a

    .line 56
    .line 57
    .line 58
    iput v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agj:I

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afZ:Z

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/kwad/components/core/page/widget/TextProgressBar;->setProgress(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    .line 9
    .line 10
    const/high16 v0, 0x42b40000    # 90.0f

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    neg-int v0, v0

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    move-object p1, v0

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget-object v4, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    div-int/lit8 v0, v0, 0x2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sub-int/2addr v0, v2

    .line 73
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    sub-int/2addr v4, v5

    .line 98
    sub-int/2addr v4, v2

    .line 99
    iget v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 100
    .line 101
    sub-int/2addr v4, v5

    .line 102
    div-int/lit8 v4, v4, 0x2

    .line 103
    .line 104
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    sub-int/2addr v6, v3

    .line 111
    div-int/lit8 v6, v6, 0x2

    .line 112
    .line 113
    add-int/2addr v2, v4

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    add-int/2addr v7, v3

    .line 119
    div-int/lit8 v7, v7, 0x2

    .line 120
    .line 121
    invoke-virtual {v5, v4, v6, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    .line 128
    .line 129
    iget v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 130
    .line 131
    add-int/2addr v2, v3

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    div-int/lit8 v2, v2, 0x2

    .line 138
    .line 139
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    sub-int/2addr v2, v3

    .line 146
    :goto_1
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agh:[I

    .line 147
    .line 148
    if-eqz v3, :cond_5

    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    int-to-float v3, v3

    .line 155
    const/high16 v4, 0x3f800000    # 1.0f

    .line 156
    .line 157
    mul-float/2addr v3, v4

    .line 158
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    int-to-float v5, v5

    .line 163
    div-float/2addr v3, v5

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    int-to-float v5, v5

    .line 169
    mul-float/2addr v3, v5

    .line 170
    int-to-float v6, v2

    .line 171
    cmpl-float v5, v3, v6

    .line 172
    .line 173
    if-ltz v5, :cond_4

    .line 174
    .line 175
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 176
    .line 177
    if-nez v5, :cond_3

    .line 178
    .line 179
    new-instance v5, Landroid/graphics/LinearGradient;

    .line 180
    .line 181
    iget-object v7, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 182
    .line 183
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    add-int/2addr v2, v7

    .line 188
    int-to-float v8, v2

    .line 189
    iget-object v10, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agh:[I

    .line 190
    .line 191
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 192
    .line 193
    const/4 v7, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    const/4 v11, 0x0

    .line 196
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 197
    .line 198
    .line 199
    iput-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 200
    .line 201
    new-instance v2, Landroid/graphics/Matrix;

    .line 202
    .line 203
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .line 205
    .line 206
    iput-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afY:Landroid/graphics/Matrix;

    .line 207
    .line 208
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 209
    .line 210
    invoke-virtual {v5, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 214
    .line 215
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 216
    .line 217
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 218
    .line 219
    .line 220
    sub-float/2addr v3, v6

    .line 221
    mul-float/2addr v3, v4

    .line 222
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 223
    .line 224
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    int-to-float v2, v2

    .line 229
    div-float/2addr v3, v2

    .line 230
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afY:Landroid/graphics/Matrix;

    .line 231
    .line 232
    invoke-virtual {v2, v3, v4, v6, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 236
    .line 237
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afY:Landroid/graphics/Matrix;

    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 244
    .line 245
    const/4 v2, 0x0

    .line 246
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 247
    .line 248
    .line 249
    :goto_2
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 250
    .line 251
    int-to-float v0, v0

    .line 252
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 253
    .line 254
    invoke-virtual {p1, v1, v6, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .line 256
    .line 257
    monitor-exit p0

    .line 258
    return-void

    .line 259
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_8

    .line 264
    .line 265
    iget-boolean v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agk:Z

    .line 266
    .line 267
    if-eqz v3, :cond_6

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_6
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 271
    .line 272
    iget v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 273
    .line 274
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 278
    .line 279
    if-eqz v1, :cond_7

    .line 280
    .line 281
    int-to-float v2, v2

    .line 282
    int-to-float v0, v0

    .line 283
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 284
    .line 285
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .line 287
    .line 288
    :cond_7
    monitor-exit p0

    .line 289
    return-void

    .line 290
    :cond_8
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    mul-int/2addr v3, v4

    .line 299
    int-to-float v3, v3

    .line 300
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    int-to-float v4, v4

    .line 305
    div-float/2addr v3, v4

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    int-to-float v6, v6

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    int-to-float v7, v7

    .line 322
    invoke-virtual {v5, v3, v1, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 323
    .line 324
    .line 325
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 326
    .line 327
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 328
    .line 329
    .line 330
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 331
    .line 332
    iget v6, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agj:I

    .line 333
    .line 334
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    .line 336
    .line 337
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 338
    .line 339
    if-eqz v5, :cond_9

    .line 340
    .line 341
    int-to-float v6, v2

    .line 342
    int-to-float v7, v0

    .line 343
    iget-object v8, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 344
    .line 345
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 346
    .line 347
    .line 348
    :cond_9
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    iget-object v5, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 356
    .line 357
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    int-to-float v6, v6

    .line 362
    invoke-virtual {v5, v1, v1, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    .line 364
    .line 365
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 366
    .line 367
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 368
    .line 369
    .line 370
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 371
    .line 372
    iget v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 373
    .line 374
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    .line 376
    .line 377
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 378
    .line 379
    if-eqz v1, :cond_a

    .line 380
    .line 381
    int-to-float v2, v2

    .line 382
    int-to-float v0, v0

    .line 383
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 384
    .line 385
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 386
    .line 387
    .line 388
    :cond_a
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    .line 390
    .line 391
    monitor-exit p0

    .line 392
    return-void

    .line 393
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 394
    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    const/high16 v3, 0x40000000    # 2.0f

    .line 36
    .line 37
    const/4 v4, -0x2

    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agc:I

    .line 45
    .line 46
    add-int/2addr p1, v2

    .line 47
    iget v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agd:I

    .line 48
    .line 49
    add-int/2addr p1, v2

    .line 50
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    .line 52
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    .line 61
    if-ne v2, v4, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    .line 69
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-super {p0, p2, p1}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p1
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 2
    .line 3
    return-void
.end method

.method public setHasProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agb:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agc:I

    .line 2
    .line 3
    iput p3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agd:I

    .line 4
    .line 5
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agb:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agk:Z

    .line 2
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setTextColor(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agk:Z

    .line 5
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 6
    iput p2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agj:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTextDimen(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextDimenSp(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 2
    .line 3
    return-void
.end method
