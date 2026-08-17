.class public Lcom/kwad/sdk/widget/DownloadProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field bsV:Landroid/graphics/Paint;

.field bsW:Landroid/graphics/Paint;

.field bsX:Landroid/graphics/Paint;

.field private bsY:Ljava/lang/String;

.field private bsZ:F

.field private bta:Landroid/graphics/Rect;

.field private btb:Landroid/graphics/LinearGradient;

.field private btc:Landroid/graphics/LinearGradient;

.field private btd:Landroid/graphics/LinearGradient;

.field private bte:Ljava/lang/Runnable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/kwad/sdk/widget/DownloadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/widget/DownloadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/kwad/sdk/widget/DownloadProgressBar$1;

    invoke-direct {p2, p0}, Lcom/kwad/sdk/widget/DownloadProgressBar$1;-><init>(Lcom/kwad/sdk/widget/DownloadProgressBar;)V

    iput-object p2, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bte:Ljava/lang/Runnable;

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsV:Landroid/graphics/Paint;

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsW:Landroid/graphics/Paint;

    .line 7
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsX:Landroid/graphics/Paint;

    const/high16 p3, 0x41800000    # 16.0f

    .line 9
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsX:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsX:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bta:Landroid/graphics/Rect;

    .line 13
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 14
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bte:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mPath:Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsV:Landroid/graphics/Paint;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btb:Landroid/graphics/LinearGradient;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsV:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsV:Landroid/graphics/Paint;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btc:Landroid/graphics/LinearGradient;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    iget v1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsZ:F

    .line 36
    .line 37
    mul-float/2addr v0, v1

    .line 38
    const/high16 v1, 0x42c80000    # 100.0f

    .line 39
    .line 40
    div-float v5, v0, v1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-float v6, v0

    .line 47
    iget-object v7, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsV:Landroid/graphics/Paint;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    move-object v2, p1

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    move-object v8, v2

    .line 56
    iget p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsZ:F

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    cmpl-float v2, p1, v0

    .line 60
    .line 61
    if-lez v2, :cond_3

    .line 62
    .line 63
    cmpg-float p1, p1, v1

    .line 64
    .line 65
    if-gez p1, :cond_3

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    iget-wide v4, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mStartTime:J

    .line 72
    .line 73
    sub-long/2addr v2, v4

    .line 74
    const-wide/16 v4, 0x9c4

    .line 75
    .line 76
    rem-long/2addr v2, v4

    .line 77
    const-wide/16 v4, 0x5dc

    .line 78
    .line 79
    cmp-long p1, v2, v4

    .line 80
    .line 81
    if-ltz p1, :cond_0

    .line 82
    .line 83
    move v4, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    long-to-float v4, v2

    .line 86
    const v5, 0x44bb8000    # 1500.0f

    .line 87
    .line 88
    .line 89
    div-float/2addr v4, v5

    .line 90
    :goto_0
    iget-object v5, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 96
    .line 97
    const/high16 v6, 0x3f800000    # 1.0f

    .line 98
    .line 99
    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 100
    .line 101
    .line 102
    iget-object v5, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btd:Landroid/graphics/LinearGradient;

    .line 103
    .line 104
    iget-object v7, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 105
    .line 106
    invoke-virtual {v5, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsW:Landroid/graphics/Paint;

    .line 110
    .line 111
    iget-object v7, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btd:Landroid/graphics/LinearGradient;

    .line 112
    .line 113
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    int-to-float v5, v5

    .line 121
    iget v7, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsZ:F

    .line 122
    .line 123
    mul-float/2addr v5, v7

    .line 124
    div-float/2addr v5, v1

    .line 125
    mul-float v11, v5, v4

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    int-to-float v12, v5

    .line 132
    iget-object v13, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsW:Landroid/graphics/Paint;

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    const/4 v10, 0x0

    .line 136
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    .line 138
    .line 139
    const-wide/16 v9, 0x1f4

    .line 140
    .line 141
    cmp-long v5, v2, v9

    .line 142
    .line 143
    if-lez v5, :cond_2

    .line 144
    .line 145
    if-lez p1, :cond_1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    sub-long/2addr v2, v9

    .line 149
    long-to-float p1, v2

    .line 150
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 151
    .line 152
    div-float v0, p1, v0

    .line 153
    .line 154
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    int-to-float p1, p1

    .line 159
    iget v2, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsZ:F

    .line 160
    .line 161
    mul-float/2addr p1, v2

    .line 162
    div-float/2addr p1, v1

    .line 163
    mul-float v11, p1, v0

    .line 164
    .line 165
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 171
    .line 172
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btd:Landroid/graphics/LinearGradient;

    .line 176
    .line 177
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mMatrix:Landroid/graphics/Matrix;

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsW:Landroid/graphics/Paint;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btd:Landroid/graphics/LinearGradient;

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    int-to-float v12, p1

    .line 194
    iget-object v13, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsW:Landroid/graphics/Paint;

    .line 195
    .line 196
    const/4 v9, 0x0

    .line 197
    const/4 v10, 0x0

    .line 198
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 199
    .line 200
    .line 201
    :cond_3
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsY:Ljava/lang/String;

    .line 202
    .line 203
    if-eqz p1, :cond_4

    .line 204
    .line 205
    iget-object v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsX:Landroid/graphics/Paint;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    iget-object v2, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bta:Landroid/graphics/Rect;

    .line 212
    .line 213
    const/4 v3, 0x0

    .line 214
    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bta:Landroid/graphics/Rect;

    .line 218
    .line 219
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 220
    .line 221
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 222
    .line 223
    add-int/2addr v0, p1

    .line 224
    int-to-float p1, v0

    .line 225
    const/high16 v0, 0x40000000    # 2.0f

    .line 226
    .line 227
    div-float/2addr p1, v0

    .line 228
    iget-object v1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsY:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    int-to-float v2, v2

    .line 235
    div-float/2addr v2, v0

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    int-to-float v3, v3

    .line 241
    div-float/2addr v3, v0

    .line 242
    sub-float/2addr v3, p1

    .line 243
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsX:Landroid/graphics/Paint;

    .line 244
    .line 245
    invoke-virtual {v8, v1, v2, v3, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 246
    .line 247
    .line 248
    :cond_4
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v4, v2

    .line 13
    const v2, 0x4cfb1e52    # 1.3165838E8f

    .line 14
    .line 15
    .line 16
    const v3, 0x4cfbc90c

    .line 17
    .line 18
    .line 19
    filled-new-array {v2, v3}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const/4 v9, 0x2

    .line 24
    new-array v7, v9, [F

    .line 25
    .line 26
    fill-array-data v7, :array_0

    .line 27
    .line 28
    .line 29
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    move-object/from16 v8, v17

    .line 35
    .line 36
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btb:Landroid/graphics/LinearGradient;

    .line 40
    .line 41
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v13, v1

    .line 48
    const v1, -0x4e1ae

    .line 49
    .line 50
    .line 51
    const v2, -0x436f4

    .line 52
    .line 53
    .line 54
    filled-new-array {v1, v2}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    new-array v1, v9, [F

    .line 59
    .line 60
    fill-array-data v1, :array_1

    .line 61
    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v14, 0x0

    .line 66
    move-object/from16 v16, v1

    .line 67
    .line 68
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 69
    .line 70
    .line 71
    iput-object v10, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btc:Landroid/graphics/LinearGradient;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsV:Landroid/graphics/Paint;

    .line 74
    .line 75
    iget-object v3, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btb:Landroid/graphics/LinearGradient;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 78
    .line 79
    .line 80
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    int-to-float v13, v1

    .line 87
    const v1, 0xfbc90c

    .line 88
    .line 89
    .line 90
    filled-new-array {v1, v2}, [I

    .line 91
    .line 92
    .line 93
    move-result-object v15

    .line 94
    new-array v1, v9, [F

    .line 95
    .line 96
    fill-array-data v1, :array_2

    .line 97
    .line 98
    .line 99
    move-object/from16 v16, v1

    .line 100
    .line 101
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 102
    .line 103
    .line 104
    iput-object v10, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->btd:Landroid/graphics/LinearGradient;

    .line 105
    .line 106
    iget-object v1, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsW:Landroid/graphics/Paint;

    .line 107
    .line 108
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 112
    .line 113
    move/from16 v2, p1

    .line 114
    .line 115
    int-to-float v2, v2

    .line 116
    move/from16 v3, p2

    .line 117
    .line 118
    int-to-float v3, v3

    .line 119
    const/4 v4, 0x0

    .line 120
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mPath:Landroid/graphics/Path;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mPath:Landroid/graphics/Path;

    .line 129
    .line 130
    iget-object v3, v0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 131
    .line 132
    const/high16 v4, 0x40000000    # 2.0f

    .line 133
    .line 134
    div-float/2addr v2, v4

    .line 135
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 136
    .line 137
    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsZ:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/high16 v0, 0x42c80000    # 100.0f

    .line 14
    .line 15
    cmpg-float p1, p1, v0

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mStartTime:J

    .line 24
    .line 25
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bte:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bte:Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsZ:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    cmpl-float v0, p1, v0

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/high16 v0, 0x42c80000    # 100.0f

    .line 12
    .line 13
    cmpl-float p1, p1, v0

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->mStartTime:J

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long p1, v0, v2

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bte:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bte:Ljava/lang/Runnable;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/widget/DownloadProgressBar;->bsY:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
