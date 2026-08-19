.class public Lcom/meishu/sdk/core/view/SwipImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwipImageView"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private clkType:I

.field private distance:I

.field private downloadX:F

.field private downloadY:F

.field private endMoveX:F

.field private endMoveY:F

.field private mListener:Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;

.field private maxMoveX:F

.field private maxMoveY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_9

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
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->downloadY:F

    .line 34
    .line 35
    sub-float p1, v2, p1

    .line 36
    .line 37
    cmpg-float v3, p1, v3

    .line 38
    .line 39
    if-gez v3, :cond_1

    .line 40
    .line 41
    iget v3, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveY:F

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    cmpg-float p1, v3, p1

    .line 48
    .line 49
    if-gez p1, :cond_1

    .line 50
    .line 51
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->downloadY:F

    .line 52
    .line 53
    sub-float p1, v2, p1

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveY:F

    .line 60
    .line 61
    :cond_1
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveX:F

    .line 62
    .line 63
    iget v3, p0, Lcom/meishu/sdk/core/view/SwipImageView;->downloadX:F

    .line 64
    .line 65
    sub-float/2addr v0, v3

    .line 66
    cmpg-float p1, p1, v0

    .line 67
    .line 68
    if-gez p1, :cond_2

    .line 69
    .line 70
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveX:F

    .line 71
    .line 72
    :cond_2
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveX:F

    .line 73
    .line 74
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->downloadY:F

    .line 75
    .line 76
    sub-float/2addr v2, p1

    .line 77
    iput v2, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveY:F

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_3
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->clkType:I

    .line 82
    .line 83
    and-int/2addr v0, v2

    .line 84
    if-ne v0, v2, :cond_5

    .line 85
    .line 86
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveY:F

    .line 87
    .line 88
    const/high16 v4, 0x41200000    # 10.0f

    .line 89
    .line 90
    cmpg-float v0, v0, v4

    .line 91
    .line 92
    if-gez v0, :cond_5

    .line 93
    .line 94
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveX:F

    .line 95
    .line 96
    cmpg-float v0, v0, v4

    .line 97
    .line 98
    if-gez v0, :cond_5

    .line 99
    .line 100
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveX:F

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    cmpg-float v0, v0, v4

    .line 107
    .line 108
    if-gez v0, :cond_5

    .line 109
    .line 110
    iget v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveY:F

    .line 111
    .line 112
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    cmpg-float v0, v0, v4

    .line 117
    .line 118
    if-gez v0, :cond_5

    .line 119
    .line 120
    iget-object v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->mListener:Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    invoke-interface {v0, v2}, Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;->onSwipe(I)V

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    return p1

    .line 132
    :cond_5
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->clkType:I

    .line 133
    .line 134
    const/16 v0, 0x20

    .line 135
    .line 136
    and-int/2addr p1, v0

    .line 137
    const/high16 v2, 0x3f800000    # 1.0f

    .line 138
    .line 139
    if-ne p1, v0, :cond_7

    .line 140
    .line 141
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveY:F

    .line 142
    .line 143
    iget v4, p0, Lcom/meishu/sdk/core/view/SwipImageView;->distance:I

    .line 144
    .line 145
    int-to-float v4, v4

    .line 146
    cmpl-float p1, p1, v4

    .line 147
    .line 148
    if-lez p1, :cond_7

    .line 149
    .line 150
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveX:F

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iget v4, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveY:F

    .line 157
    .line 158
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    div-float/2addr p1, v4

    .line 163
    cmpg-float p1, p1, v2

    .line 164
    .line 165
    if-gez p1, :cond_7

    .line 166
    .line 167
    iget-object p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->mListener:Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;

    .line 168
    .line 169
    if-eqz p1, :cond_6

    .line 170
    .line 171
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;->onSwipe(I)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveX:F

    .line 175
    .line 176
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveY:F

    .line 177
    .line 178
    return v1

    .line 179
    :cond_7
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->clkType:I

    .line 180
    .line 181
    const/16 v0, 0x80

    .line 182
    .line 183
    and-int/2addr p1, v0

    .line 184
    if-ne p1, v0, :cond_a

    .line 185
    .line 186
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveX:F

    .line 187
    .line 188
    iget v4, p0, Lcom/meishu/sdk/core/view/SwipImageView;->distance:I

    .line 189
    .line 190
    int-to-float v4, v4

    .line 191
    cmpl-float p1, p1, v4

    .line 192
    .line 193
    if-lez p1, :cond_a

    .line 194
    .line 195
    iget p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveX:F

    .line 196
    .line 197
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    iget v4, p0, Lcom/meishu/sdk/core/view/SwipImageView;->endMoveY:F

    .line 202
    .line 203
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    div-float/2addr p1, v4

    .line 208
    cmpl-float p1, p1, v2

    .line 209
    .line 210
    if-lez p1, :cond_a

    .line 211
    .line 212
    iget-object p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->mListener:Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;

    .line 213
    .line 214
    if-eqz p1, :cond_8

    .line 215
    .line 216
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;->onSwipe(I)V

    .line 217
    .line 218
    .line 219
    :cond_8
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveX:F

    .line 220
    .line 221
    iput v3, p0, Lcom/meishu/sdk/core/view/SwipImageView;->maxMoveY:F

    .line 222
    .line 223
    return v1

    .line 224
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->downloadX:F

    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iput v0, p0, Lcom/meishu/sdk/core/view/SwipImageView;->downloadY:F

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 240
    .line 241
    .line 242
    :cond_a
    :goto_0
    return v1
.end method

.method public setMoveDistance(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->clkType:I

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
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    .line 13
    mul-int/2addr p1, p2

    .line 14
    div-int/lit8 p1, p1, 0x64

    .line 15
    .line 16
    iput p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->distance:I

    .line 17
    .line 18
    return-void
.end method

.method public setOnSwipeListener(Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/SwipImageView;->mListener:Lcom/meishu/sdk/core/view/SwipImageView$OnSwipeListener;

    .line 2
    .line 3
    return-void
.end method
