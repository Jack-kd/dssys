.class public Lcom/octopus/ad/internal/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/e/h$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private final f:Z

.field private final g:Lcom/octopus/ad/internal/e/h$a;

.field private final h:Lcom/octopus/ad/a/d;


# direct methods
.method public constructor <init>(Landroid/view/View;ZLcom/octopus/ad/internal/e/h$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/h;->e:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/octopus/ad/internal/e/h;->f:Z

    .line 8
    .line 9
    iput-object p3, p0, Lcom/octopus/ad/internal/e/h;->g:Lcom/octopus/ad/internal/e/h$a;

    .line 10
    .line 11
    new-instance p2, Lcom/octopus/ad/a/d;

    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    invoke-direct {p2, p3}, Lcom/octopus/ad/a/d;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-lez p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-lez p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-virtual {p2, p3}, Lcom/octopus/ad/a/d;->e(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p2, p1}, Lcom/octopus/ad/a/d;->f(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p2, p1}, Lcom/octopus/ad/a/d;->e(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p2, p1}, Lcom/octopus/ad/a/d;->f(I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private static a(F)F
    .locals 1

    .line 5
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static a(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    .line 4
    invoke-static {p0}, Lcom/octopus/ad/internal/e/h;->a(F)F

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->g:Lcom/octopus/ad/internal/e/h$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    invoke-interface {v0, p1, v1}, Lcom/octopus/ad/internal/e/h$a;->a(Landroid/view/View;Lcom/octopus/ad/a/d;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-boolean p1, p0, Lcom/octopus/ad/internal/e/h;->d:Z

    .line 18
    .line 19
    if-eqz p1, :cond_4

    .line 20
    .line 21
    iget p1, p0, Lcom/octopus/ad/internal/e/h;->b:F

    .line 22
    .line 23
    iget v0, p0, Lcom/octopus/ad/internal/e/h;->c:F

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p1, v0, v1, p2}, Lcom/octopus/ad/internal/e/h;->a(FFFF)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 p2, 0x41700000    # 15.0f

    .line 38
    .line 39
    cmpl-float p1, p1, p2

    .line 40
    .line 41
    if-lez p1, :cond_4

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/h;->d:Z

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    iget-wide v6, p0, Lcom/octopus/ad/internal/e/h;->a:J

    .line 53
    .line 54
    sub-long/2addr v4, v6

    .line 55
    cmp-long v0, v4, v1

    .line 56
    .line 57
    if-gez v0, :cond_4

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/h;->d:Z

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/h;->f:Z

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/h;->e:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    float-to-int v1, v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/octopus/ad/a/d;->c(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    float-to-int p2, p2

    .line 88
    invoke-virtual {v0, p2}, Lcom/octopus/ad/a/d;->d(I)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p2, v0}, Lcom/octopus/ad/a/d;->b(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/e/h;->a(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v4

    .line 113
    iput-wide v4, p0, Lcom/octopus/ad/internal/e/h;->a:J

    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Lcom/octopus/ad/internal/e/h;->b:F

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lcom/octopus/ad/internal/e/h;->c:F

    .line 126
    .line 127
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    float-to-int v4, v4

    .line 134
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/d;->a(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    float-to-int v4, v4

    .line 144
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/d;->b(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 148
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/d;->a(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 161
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v0, v4}, Lcom/octopus/ad/a/d;->d(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 174
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    div-long/2addr v4, v1

    .line 180
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/octopus/ad/a/d;->c(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iput-boolean v3, p0, Lcom/octopus/ad/internal/e/h;->d:Z

    .line 188
    .line 189
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/h;->f:Z

    .line 190
    .line 191
    if-eqz v0, :cond_4

    .line 192
    .line 193
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/h;->e:Z

    .line 194
    .line 195
    if-nez v0, :cond_4

    .line 196
    .line 197
    const/16 v0, 0x96

    .line 198
    .line 199
    invoke-static {v0}, Lcom/octopus/ad/d/i;->a(I)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    add-int/lit8 v0, v0, 0x32

    .line 204
    .line 205
    iget-object v1, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    float-to-int v2, v2

    .line 212
    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/d;->c(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 216
    .line 217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    float-to-int p2, p2

    .line 222
    invoke-virtual {v1, p2}, Lcom/octopus/ad/a/d;->d(I)V

    .line 223
    .line 224
    .line 225
    iget-object p2, p0, Lcom/octopus/ad/internal/e/h;->h:Lcom/octopus/ad/a/d;

    .line 226
    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v1

    .line 231
    int-to-long v4, v0

    .line 232
    add-long/2addr v1, v4

    .line 233
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p2, v0}, Lcom/octopus/ad/a/d;->b(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/e/h;->a(Landroid/view/View;)V

    .line 241
    .line 242
    .line 243
    iput-boolean v3, p0, Lcom/octopus/ad/internal/e/h;->e:Z

    .line 244
    .line 245
    :cond_4
    :goto_0
    return v3
.end method
