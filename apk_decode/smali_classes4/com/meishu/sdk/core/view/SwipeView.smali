.class public Lcom/meishu/sdk/core/view/SwipeView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwipeView"


# instance fields
.field private clkType:I

.field private distance:I

.field private downloadX:F

.field private downloadY:F

.field private endMoveX:F

.field private endMoveY:F

.field private isMoved:Z

.field private mListener:Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private maxMoveX:F

.field private maxMoveY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/view/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/meishu/sdk/core/view/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/SwipeView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Path;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->mPath:Landroid/graphics/Path;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->mPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/high16 v1, 0x40a00000    # 5.0f

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->downloadY:F

    .line 31
    .line 32
    sub-float p1, v2, p1

    .line 33
    .line 34
    cmpg-float v3, p1, v3

    .line 35
    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    iget v3, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveY:F

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    cmpg-float p1, v3, p1

    .line 45
    .line 46
    if-gez p1, :cond_1

    .line 47
    .line 48
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->downloadY:F

    .line 49
    .line 50
    sub-float p1, v2, p1

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveY:F

    .line 57
    .line 58
    :cond_1
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveX:F

    .line 59
    .line 60
    iget v3, p0, Lcom/meishu/sdk/core/view/SwipeView;->downloadX:F

    .line 61
    .line 62
    sub-float/2addr v0, v3

    .line 63
    cmpg-float p1, p1, v0

    .line 64
    .line 65
    if-gez p1, :cond_2

    .line 66
    .line 67
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveX:F

    .line 68
    .line 69
    :cond_2
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveX:F

    .line 70
    .line 71
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->downloadY:F

    .line 72
    .line 73
    sub-float/2addr v2, p1

    .line 74
    iput v2, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveY:F

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_3
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->clkType:I

    .line 79
    .line 80
    and-int/2addr p1, v2

    .line 81
    if-ne p1, v2, :cond_4

    .line 82
    .line 83
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveX:F

    .line 84
    .line 85
    const/high16 v0, 0x41200000    # 10.0f

    .line 86
    .line 87
    cmpg-float p1, p1, v0

    .line 88
    .line 89
    if-gez p1, :cond_4

    .line 90
    .line 91
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveY:F

    .line 92
    .line 93
    cmpg-float p1, p1, v0

    .line 94
    .line 95
    if-gez p1, :cond_4

    .line 96
    .line 97
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveX:F

    .line 98
    .line 99
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    cmpg-float p1, p1, v0

    .line 104
    .line 105
    if-gez p1, :cond_4

    .line 106
    .line 107
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveY:F

    .line 108
    .line 109
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    cmpg-float p1, p1, v0

    .line 114
    .line 115
    if-gez p1, :cond_4

    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    return p1

    .line 119
    :cond_4
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->clkType:I

    .line 120
    .line 121
    const/16 v0, 0x20

    .line 122
    .line 123
    and-int/2addr p1, v0

    .line 124
    if-ne p1, v0, :cond_5

    .line 125
    .line 126
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveY:F

    .line 127
    .line 128
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->distance:I

    .line 129
    .line 130
    int-to-float v0, v0

    .line 131
    cmpl-float p1, p1, v0

    .line 132
    .line 133
    if-lez p1, :cond_5

    .line 134
    .line 135
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveY:F

    .line 136
    .line 137
    cmpg-float p1, p1, v3

    .line 138
    .line 139
    if-gez p1, :cond_5

    .line 140
    .line 141
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveX:F

    .line 142
    .line 143
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveY:F

    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    div-float/2addr p1, v0

    .line 154
    const/high16 v0, 0x3f800000    # 1.0f

    .line 155
    .line 156
    cmpg-float p1, p1, v0

    .line 157
    .line 158
    if-gez p1, :cond_5

    .line 159
    .line 160
    iget-object p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->mListener:Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;

    .line 161
    .line 162
    invoke-interface {p1}, Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;->onSwipe()V

    .line 163
    .line 164
    .line 165
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveX:F

    .line 166
    .line 167
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveY:F

    .line 168
    .line 169
    iput-boolean v1, p0, Lcom/meishu/sdk/core/view/SwipeView;->isMoved:Z

    .line 170
    .line 171
    return v1

    .line 172
    :cond_5
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->clkType:I

    .line 173
    .line 174
    const/16 v0, 0x80

    .line 175
    .line 176
    and-int/2addr p1, v0

    .line 177
    if-ne p1, v0, :cond_8

    .line 178
    .line 179
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveX:F

    .line 180
    .line 181
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 182
    .line 183
    .line 184
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveY:F

    .line 185
    .line 186
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 187
    .line 188
    .line 189
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveX:F

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->distance:I

    .line 196
    .line 197
    int-to-float v0, v0

    .line 198
    cmpl-float p1, p1, v0

    .line 199
    .line 200
    if-gtz p1, :cond_6

    .line 201
    .line 202
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->endMoveY:F

    .line 203
    .line 204
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->distance:I

    .line 209
    .line 210
    int-to-float v0, v0

    .line 211
    cmpl-float p1, p1, v0

    .line 212
    .line 213
    if-lez p1, :cond_8

    .line 214
    .line 215
    :cond_6
    iget-object p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->mListener:Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;

    .line 216
    .line 217
    invoke-interface {p1}, Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;->onSwipe()V

    .line 218
    .line 219
    .line 220
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveX:F

    .line 221
    .line 222
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipeView;->maxMoveY:F

    .line 223
    .line 224
    iput-boolean v1, p0, Lcom/meishu/sdk/core/view/SwipeView;->isMoved:Z

    .line 225
    .line 226
    return v1

    .line 227
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->downloadX:F

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->downloadY:F

    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 243
    .line 244
    .line 245
    :cond_8
    :goto_0
    return v1
.end method

.method public setMoveDistance(II)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->clkType:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    .line 13
    int-to-float v1, v0

    .line 14
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    const/high16 v2, 0x43b40000    # 360.0f

    .line 17
    .line 18
    mul-float/2addr p1, v2

    .line 19
    cmpl-float v1, v1, p1

    .line 20
    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    float-to-int v0, p1

    .line 24
    :cond_0
    mul-int/2addr v0, p2

    .line 25
    div-int/lit8 v0, v0, 0x64

    .line 26
    .line 27
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipeView;->distance:I

    .line 28
    .line 29
    return-void
.end method

.method public setOnSwipeListener(Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/SwipeView;->mListener:Lcom/meishu/sdk/core/view/SwipeView$OnSwipeListener;

    .line 2
    .line 3
    return-void
.end method
