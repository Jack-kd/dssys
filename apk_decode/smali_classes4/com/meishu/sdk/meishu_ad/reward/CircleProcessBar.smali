.class public Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Landroid/graphics/RectF;

.field public j:I

.field public k:I

.field public l:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x400ccccd    # 2.2f

    .line 2
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    const p1, 0x4141999a    # 12.1f

    .line 3
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->e:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 4
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->f:F

    const/high16 p1, 0x41780000    # 15.5f

    .line 5
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->g:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->j:I

    const/16 p1, 0x1388

    .line 7
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->k:I

    .line 8
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x400ccccd    # 2.2f

    .line 10
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    const p1, 0x4141999a    # 12.1f

    .line 11
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->e:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 12
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->f:F

    const/high16 p1, 0x41780000    # 15.5f

    .line 13
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->g:F

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->j:I

    const/16 p1, 0x1388

    .line 15
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->k:I

    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x400ccccd    # 2.2f

    .line 18
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    const p1, 0x4141999a    # 12.1f

    .line 19
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->e:F

    const/high16 p1, 0x41200000    # 10.0f

    .line 20
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->f:F

    const/high16 p1, 0x41780000    # 15.5f

    .line 21
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->g:F

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->j:I

    const/16 p1, 0x1388

    .line 23
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->k:I

    .line 24
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    .line 3
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->e:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->e:F

    .line 4
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->f:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->f:F

    .line 5
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->g:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->g:F

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    .line 7
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->e:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v0, v3

    const v3, -0x777778

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->b:Landroid/graphics/Paint;

    .line 12
    const-string v1, "#b7ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->c:Landroid/graphics/Paint;

    .line 17
    const-string v3, "#42c1f0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    const-string v1, "999"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 22
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->g:F

    .line 23
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->h:F

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    iget v5, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->h:F

    mul-float/2addr v5, v2

    sub-float/2addr v5, v1

    sub-float/2addr v5, v3

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->j:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    iget p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->j:I

    iget v0, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->k:I

    if-lt p1, v0, :cond_0

    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->l:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;->onSkip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->i:Landroid/graphics/RectF;

    .line 5
    .line 6
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->b:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/high16 v3, 0x43b40000    # 360.0f

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    .line 26
    div-float/2addr p1, v1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    div-float/2addr v2, v1

    .line 33
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 34
    .line 35
    invoke-virtual {v0, v3, p1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->j:I

    .line 39
    .line 40
    int-to-float p1, p1

    .line 41
    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    .line 43
    mul-float/2addr p1, v2

    .line 44
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->k:I

    .line 45
    .line 46
    int-to-float v2, v2

    .line 47
    div-float/2addr p1, v2

    .line 48
    const/high16 v2, 0x43b40000    # 360.0f

    .line 49
    .line 50
    mul-float v9, p1, v2

    .line 51
    .line 52
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->i:Landroid/graphics/RectF;

    .line 53
    .line 54
    iget-object v11, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->c:Landroid/graphics/Paint;

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    move-object v6, v0

    .line 59
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget v2, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 72
    .line 73
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    div-int/lit8 v3, v3, 0x2

    .line 80
    .line 81
    int-to-float v3, v3

    .line 82
    add-float/2addr v2, p1

    .line 83
    div-float/2addr v2, v1

    .line 84
    sub-float/2addr v3, v2

    .line 85
    float-to-int p1, v3

    .line 86
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->k:I

    .line 87
    .line 88
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->j:I

    .line 89
    .line 90
    sub-int/2addr v2, v3

    .line 91
    add-int/lit16 v2, v2, 0x3e7

    .line 92
    .line 93
    div-int/lit16 v2, v2, 0x3e8

    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    const/16 p1, 0x8

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->l:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;

    .line 108
    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;->onSkip()V

    .line 112
    .line 113
    .line 114
    :cond_0
    return-void

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v5, ""

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    div-int/lit8 v4, v4, 0x2

    .line 158
    .line 159
    int-to-float v4, v4

    .line 160
    div-float/2addr v3, v1

    .line 161
    sub-float/2addr v4, v3

    .line 162
    int-to-float p1, p1

    .line 163
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a:Landroid/graphics/Paint;

    .line 164
    .line 165
    invoke-virtual {v0, v2, v4, p1, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    const/high16 v2, -0x80000000

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->h:F

    .line 19
    .line 20
    mul-float/2addr p1, v1

    .line 21
    float-to-int p1, p1

    .line 22
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    iget p2, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->h:F

    .line 33
    .line 34
    mul-float/2addr p2, v1

    .line 35
    float-to-int p2, p2

    .line 36
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return v0
.end method

.method public setOnSkipListener(Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->l:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;

    .line 2
    .line 3
    return-void
.end method

.method public setmTotalTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->k:I

    .line 2
    .line 3
    return-void
.end method
