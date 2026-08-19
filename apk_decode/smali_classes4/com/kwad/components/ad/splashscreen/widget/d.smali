.class public final Lcom/kwad/components/ad/splashscreen/widget/d;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SourceFile"


# instance fields
.field private MA:Landroid/graphics/Paint;

.field private MC:I

.field private MD:I

.field private ME:Landroid/animation/ValueAnimator;

.field private final MF:F

.field private final MG:F

.field private MH:F

.field private MI:F

.field private MJ:I

.field private Mk:Landroid/graphics/Bitmap;

.field private Ml:Landroid/graphics/Bitmap;

.field private Mm:Landroid/graphics/Bitmap;

.field private Mn:Landroid/graphics/Bitmap;

.field private Mo:Landroid/graphics/Bitmap;

.field private Mp:Landroid/graphics/Bitmap;

.field private Mq:I

.field private Mr:Landroid/graphics/RectF;

.field private Ms:Landroid/graphics/Paint;

.field private Mt:Landroid/graphics/Paint;

.field private Mu:Landroid/graphics/PorterDuffXfermode;

.field private final Mv:I

.field private final Mw:I

.field private Mx:F

.field private My:F

.field private Mz:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40c00000    # 6.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MF:F

    .line 7
    .line 8
    const/high16 v0, 0x41300000    # 11.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MG:F

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const/high16 v0, 0x424c0000    # 51.0f

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 21
    .line 22
    const/high16 v0, 0x42740000    # 61.0f

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 29
    .line 30
    iput p2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/widget/d;->init()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/widget/d;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MH:F

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/widget/d;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MH:F

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/splashscreen/widget/d;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/widget/d;->e(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(F)V
    .locals 5

    .line 1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gtz v1, :cond_3

    .line 6
    .line 7
    div-float/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/high16 v2, 0x41f00000    # 30.0f

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 24
    .line 25
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    mul-float/2addr v1, p1

    .line 29
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 30
    .line 31
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 32
    .line 33
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 34
    .line 35
    add-float/2addr v1, v4

    .line 36
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 37
    .line 38
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 39
    .line 40
    add-float/2addr v0, v4

    .line 41
    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 42
    .line 43
    .line 44
    const/high16 v0, 0x43a50000    # 330.0f

    .line 45
    .line 46
    mul-float/2addr p1, v2

    .line 47
    add-float/2addr p1, v0

    .line 48
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 52
    .line 53
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 54
    .line 55
    int-to-float v3, v3

    .line 56
    sub-float/2addr v1, p1

    .line 57
    mul-float/2addr v3, v1

    .line 58
    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 59
    .line 60
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 63
    .line 64
    add-float/2addr v3, v4

    .line 65
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 66
    .line 67
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 68
    .line 69
    add-float/2addr v0, v4

    .line 70
    invoke-virtual {p1, v3, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 71
    .line 72
    .line 73
    mul-float/2addr v1, v2

    .line 74
    iput v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 78
    .line 79
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 80
    .line 81
    int-to-float v3, v3

    .line 82
    sub-float/2addr v1, p1

    .line 83
    mul-float/2addr v3, v1

    .line 84
    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 85
    .line 86
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 87
    .line 88
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 89
    .line 90
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 91
    .line 92
    add-float/2addr v0, v4

    .line 93
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 94
    .line 95
    add-float/2addr v3, v4

    .line 96
    invoke-virtual {v1, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 97
    .line 98
    .line 99
    const/high16 v0, 0x43910000    # 290.0f

    .line 100
    .line 101
    mul-float/2addr p1, v2

    .line 102
    add-float/2addr p1, v0

    .line 103
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 104
    .line 105
    :cond_3
    :goto_0
    return-void
.end method

.method private init()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mk:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_lt:I

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ml:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_lb:I

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mm:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_rt:I

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mn:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_rb:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mo:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_side_bg:I

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    const/4 v9, 0x1

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    if-eq v0, v9, :cond_1

    .line 90
    .line 91
    if-eq v0, v1, :cond_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    const/high16 v0, 0x42b40000    # 90.0f

    .line 100
    .line 101
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    const/4 v8, 0x1

    .line 113
    const/4 v3, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    new-instance v7, Landroid/graphics/Matrix;

    .line 123
    .line 124
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .line 126
    .line 127
    const/high16 v0, 0x43870000    # 270.0f

    .line 128
    .line 129
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    const/4 v8, 0x1

    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    iput-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 151
    .line 152
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    const/high16 v2, 0x41200000    # 10.0f

    .line 155
    .line 156
    invoke-static {v0, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mq:I

    .line 161
    .line 162
    new-instance v0, Landroid/graphics/Paint;

    .line 163
    .line 164
    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 168
    .line 169
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 170
    .line 171
    if-eqz v0, :cond_5

    .line 172
    .line 173
    const v2, 0x3db851ec    # 0.09f

    .line 174
    .line 175
    .line 176
    if-eq v0, v9, :cond_4

    .line 177
    .line 178
    if-eq v0, v1, :cond_3

    .line 179
    .line 180
    goto/16 :goto_1

    .line 181
    .line 182
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgw:I

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    float-to-int v0, v0

    .line 195
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 196
    .line 197
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgh:I

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    float-to-int v0, v0

    .line 210
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 211
    .line 212
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 213
    .line 214
    int-to-float v0, v0

    .line 215
    mul-float/2addr v0, v2

    .line 216
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 217
    .line 218
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 219
    .line 220
    neg-int v0, v0

    .line 221
    int-to-float v0, v0

    .line 222
    const/high16 v1, 0x3f000000    # 0.5f

    .line 223
    .line 224
    mul-float/2addr v0, v1

    .line 225
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgw:I

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    float-to-int v0, v0

    .line 241
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 242
    .line 243
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 244
    .line 245
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgh:I

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    float-to-int v0, v0

    .line 256
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 257
    .line 258
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 259
    .line 260
    int-to-float v0, v0

    .line 261
    mul-float/2addr v0, v2

    .line 262
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 263
    .line 264
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 265
    .line 266
    neg-int v0, v0

    .line 267
    int-to-float v0, v0

    .line 268
    const v1, 0x3e4ccccd    # 0.2f

    .line 269
    .line 270
    .line 271
    mul-float/2addr v0, v1

    .line 272
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgh:I

    .line 282
    .line 283
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    float-to-int v0, v0

    .line 288
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 289
    .line 290
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgw:I

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    float-to-int v0, v0

    .line 303
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 304
    .line 305
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 306
    .line 307
    neg-int v1, v1

    .line 308
    int-to-float v1, v1

    .line 309
    const v2, 0x3e6147ae    # 0.22f

    .line 310
    .line 311
    .line 312
    mul-float/2addr v1, v2

    .line 313
    iput v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 314
    .line 315
    int-to-float v0, v0

    .line 316
    const v1, 0x3da3d70a    # 0.08f

    .line 317
    .line 318
    .line 319
    mul-float/2addr v0, v1

    .line 320
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 321
    .line 322
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    .line 323
    .line 324
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 325
    .line 326
    int-to-float v1, v1

    .line 327
    iget v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 328
    .line 329
    int-to-float v2, v2

    .line 330
    const/4 v3, 0x0

    .line 331
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 332
    .line 333
    .line 334
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 335
    .line 336
    new-instance v0, Landroid/graphics/Paint;

    .line 337
    .line 338
    const/4 v1, 0x3

    .line 339
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 340
    .line 341
    .line 342
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 343
    .line 344
    new-instance v0, Landroid/graphics/Paint;

    .line 345
    .line 346
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 347
    .line 348
    .line 349
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 350
    .line 351
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Landroid/graphics/RectF;

    .line 355
    .line 356
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 357
    .line 358
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 359
    .line 360
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 361
    .line 362
    int-to-float v4, v4

    .line 363
    sub-float v4, v2, v4

    .line 364
    .line 365
    iget v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 366
    .line 367
    int-to-float v5, v5

    .line 368
    invoke-direct {v0, v4, v3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 369
    .line 370
    .line 371
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 372
    .line 373
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 374
    .line 375
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 376
    .line 377
    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 378
    .line 379
    .line 380
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mu:Landroid/graphics/PorterDuffXfermode;

    .line 381
    .line 382
    new-array v0, v1, [F

    .line 383
    .line 384
    fill-array-data v0, :array_0

    .line 385
    .line 386
    .line 387
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 392
    .line 393
    const-wide/16 v1, 0x44c

    .line 394
    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 396
    .line 397
    .line 398
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 399
    .line 400
    new-instance v1, Lcom/kwad/components/ad/splashscreen/widget/d$1;

    .line 401
    .line 402
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/splashscreen/widget/d$1;-><init>(Lcom/kwad/components/ad/splashscreen/widget/d;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 409
    .line 410
    const/4 v1, -0x1

    .line 411
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :array_0
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x41300000    # 11.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kwad/components/ad/splashscreen/widget/d;->getIntrinsicWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {p0}, Lcom/kwad/components/ad/splashscreen/widget/d;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    div-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MH:F

    .line 33
    .line 34
    const/high16 v1, 0x40c00000    # 6.0f

    .line 35
    .line 36
    cmpg-float v2, v0, v1

    .line 37
    .line 38
    const/high16 v3, 0x437f0000    # 255.0f

    .line 39
    .line 40
    if-gtz v2, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 43
    .line 44
    mul-float/2addr v0, v3

    .line 45
    div-float/2addr v0, v1

    .line 46
    float-to-int v0, v0

    .line 47
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 51
    .line 52
    const/16 v1, 0xff

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sub-float/2addr v0, v1

    .line 59
    const/high16 v1, 0x40a00000    # 5.0f

    .line 60
    .line 61
    div-float/2addr v0, v1

    .line 62
    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    .line 64
    sub-float/2addr v1, v0

    .line 65
    mul-float/2addr v1, v3

    .line 66
    float-to-int v0, v1

    .line 67
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 84
    .line 85
    const/16 v3, 0x1f

    .line 86
    .line 87
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x0

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 95
    .line 96
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :catchall_0
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 102
    .line 103
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 116
    .line 117
    .line 118
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 119
    .line 120
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mu:Landroid/graphics/PorterDuffXfermode;

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    .line 124
    .line 125
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 126
    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    const/4 v4, 0x1

    .line 130
    if-eq v3, v4, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ml:Landroid/graphics/Bitmap;

    .line 134
    .line 135
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 136
    .line 137
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 138
    .line 139
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mm:Landroid/graphics/Bitmap;

    .line 143
    .line 144
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 145
    .line 146
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 147
    .line 148
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mn:Landroid/graphics/Bitmap;

    .line 153
    .line 154
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 155
    .line 156
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 157
    .line 158
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mo:Landroid/graphics/Bitmap;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 164
    .line 165
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 166
    .line 167
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    :goto_1
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mk:Landroid/graphics/Bitmap;

    .line 171
    .line 172
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 173
    .line 174
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 175
    .line 176
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 180
    .line 181
    .line 182
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 183
    .line 184
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 185
    .line 186
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mk:Landroid/graphics/Bitmap;

    .line 200
    .line 201
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 202
    .line 203
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 204
    .line 205
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mq:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
