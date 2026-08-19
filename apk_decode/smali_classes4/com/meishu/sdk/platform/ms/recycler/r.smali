.class public Lcom/meishu/sdk/platform/ms/recycler/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final m:Ljava/lang/String; = "r"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:J

.field public final k:I

.field public volatile l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/meishu/sdk/platform/ms/recycler/r;-><init>(Landroid/view/View;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->c:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->l:Z

    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->a:Landroid/view/View;

    .line 7
    iput p2, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->k:I

    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(FFJFFI)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    .line 2
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->l:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->e:F

    .line 6
    .line 7
    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->f:F

    .line 8
    .line 9
    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->g:F

    .line 10
    .line 11
    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->h:F

    .line 12
    .line 13
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->i:I

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->d:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->a:Landroid/view/View;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->b:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_5

    .line 42
    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->b:Ljava/util/List;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Landroid/view/View;

    .line 77
    .line 78
    invoke-static {v4, v2, v3}, Lcom/meishu/sdk/core/utils/t1;->a(Landroid/view/View;FF)Z

    .line 79
    .line 80
    .line 81
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_0
    return-void

    .line 90
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->e:F

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->f:F

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iput v1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->g:F

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->h:F

    .line 113
    .line 114
    iput v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->i:I

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    iput-wide v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->j:J

    .line 121
    .line 122
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->a:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->k:I

    .line 7
    .line 8
    if-gtz p1, :cond_1

    .line 9
    .line 10
    :cond_0
    move-object v2, p0

    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/platform/ms/recycler/r;->a(Landroid/view/MotionEvent;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/platform/ms/recycler/r;->b(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    :cond_2
    move-object v2, p0

    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p1, v0

    .line 30
    move-object v2, p0

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    const/4 v0, 0x1

    .line 38
    if-eq p1, v0, :cond_4

    .line 39
    .line 40
    :try_start_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    const/4 v2, 0x3

    .line 45
    if-ne p1, v2, :cond_2

    .line 46
    .line 47
    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->a:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 62
    .line 63
    iget v2, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->g:F

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    sub-float/2addr v2, v3

    .line 70
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget v3, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->h:F

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    sub-float/2addr v3, v4

    .line 81
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    float-to-int v2, v2

    .line 90
    iput v2, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->i:I

    .line 91
    .line 92
    int-to-float v2, v2

    .line 93
    div-float/2addr v2, p1

    .line 94
    iget p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->k:I

    .line 95
    .line 96
    int-to-float p1, p1

    .line 97
    cmpl-float p1, v2, p1

    .line 98
    .line 99
    if-lez p1, :cond_2

    .line 100
    .line 101
    iget p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->e:F

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    cmpl-float p1, p1, v2

    .line 105
    .line 106
    if-lez p1, :cond_2

    .line 107
    .line 108
    iget p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->f:F

    .line 109
    .line 110
    cmpl-float p1, p1, v2

    .line 111
    .line 112
    if-lez p1, :cond_2

    .line 113
    .line 114
    iget-boolean p1, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->l:Z

    .line 115
    .line 116
    if-nez p1, :cond_2

    .line 117
    .line 118
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->l:Z

    .line 119
    .line 120
    iget v3, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->e:F

    .line 121
    .line 122
    iget v4, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->f:F

    .line 123
    .line 124
    iget-wide v5, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->j:J

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    iget v9, p0, Lcom/meishu/sdk/platform/ms/recycler/r;->i:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    .line 136
    move-object v2, p0

    .line 137
    :try_start_5
    invoke-virtual/range {v2 .. v9}, Lcom/meishu/sdk/platform/ms/recycler/r;->a(FFJFFI)V

    .line 138
    .line 139
    .line 140
    iget-boolean p1, v2, Lcom/meishu/sdk/platform/ms/recycler/r;->c:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    .line 142
    return p1

    .line 143
    :catchall_1
    move-exception v0

    .line 144
    :goto_0
    move-object p1, v0

    .line 145
    goto :goto_1

    .line 146
    :catchall_2
    move-exception v0

    .line 147
    move-object v2, p0

    .line 148
    goto :goto_0

    .line 149
    :goto_1
    sget-object v0, Lcom/meishu/sdk/platform/ms/recycler/r;->m:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    :try_start_6
    iget-boolean p1, v2, Lcom/meishu/sdk/platform/ms/recycler/r;->d:Z

    .line 155
    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    iget-object p1, v2, Lcom/meishu/sdk/platform/ms/recycler/r;->a:Landroid/view/View;

    .line 159
    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_5

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    iget-object p1, v2, Lcom/meishu/sdk/platform/ms/recycler/r;->a:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    int-to-float v3, v3

    .line 180
    sub-float v9, v0, v3

    .line 181
    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    int-to-float p1, p1

    .line 191
    sub-float v10, v0, p1

    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 198
    .line 199
    .line 200
    move-result-wide v6

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object p2, v2, Lcom/meishu/sdk/platform/ms/recycler/r;->a:Landroid/view/View;

    .line 214
    .line 215
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 216
    .line 217
    .line 218
    :goto_3
    iget-boolean p1, v2, Lcom/meishu/sdk/platform/ms/recycler/r;->c:Z

    .line 219
    .line 220
    return p1

    .line 221
    :catchall_3
    :goto_4
    return v1
.end method
