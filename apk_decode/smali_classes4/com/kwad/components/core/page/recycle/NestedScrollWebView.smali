.class public Lcom/kwad/components/core/page/recycle/NestedScrollWebView;
.super Lcom/kwad/sdk/core/webview/KsAdWebView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild;


# instance fields
.field private afi:I

.field private final afj:[I

.field private final afk:[I

.field private afl:I

.field private afm:Z

.field private afn:I

.field private afo:I

.field private afp:Landroidx/core/view/NestedScrollingChildHelper;

.field private afq:I

.field private mLastMotionY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 2
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 3
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afk:[I

    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->uL()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/webview/KsAdWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 6
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 7
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afk:[I

    .line 8
    invoke-direct {p0}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->uL()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/webview/KsAdWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 10
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 11
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afk:[I

    .line 12
    invoke-direct {p0}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->uL()V

    return-void
.end method

.method private uL()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afq:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/core/view/NestedScrollingChildHelper;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v1}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->setNestedScrollingEnabled(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afo:I

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afn:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afq:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/components/core/t/d;->wJ()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/kwad/sdk/c/a/a;->getStatusBarHeight(Landroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Landroid/app/Activity;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/app/Activity;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->k(Landroid/app/Activity;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->getScreenHeight(Landroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    :goto_1
    sub-int/2addr v0, p2

    .line 49
    iget p2, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afq:I

    .line 50
    .line 51
    sub-int/2addr v0, p2

    .line 52
    const/high16 p2, 0x40000000    # 2.0f

    .line 53
    .line 54
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/core/webview/KsAdWebView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    invoke-static {v6}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    invoke-static {v6}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v8, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iput v8, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afl:I

    .line 17
    .line 18
    :cond_0
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 27
    .line 28
    :cond_1
    invoke-static {v6}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    iget v4, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afl:I

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-virtual {v6, v9, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    const/4 v10, 0x1

    .line 46
    if-eqz v1, :cond_c

    .line 47
    .line 48
    if-eq v1, v10, :cond_9

    .line 49
    .line 50
    const/4 v11, 0x5

    .line 51
    if-eq v1, v4, :cond_3

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    if-eq v1, v3, :cond_9

    .line 55
    .line 56
    if-eq v1, v11, :cond_2

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_2
    invoke-virtual {v0}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->stopNestedScroll()V

    .line 61
    .line 62
    .line 63
    invoke-super/range {p0 .. p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_3
    iget v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mLastMotionY:I

    .line 70
    .line 71
    sub-int/2addr v1, v3

    .line 72
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afk:[I

    .line 73
    .line 74
    iget-object v4, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 75
    .line 76
    invoke-virtual {v0, v8, v1, v2, v4}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->dispatchNestedPreScroll(II[I[I)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afk:[I

    .line 83
    .line 84
    aget v2, v2, v10

    .line 85
    .line 86
    sub-int/2addr v1, v2

    .line 87
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 88
    .line 89
    aget v2, v2, v10

    .line 90
    .line 91
    int-to-float v2, v2

    .line 92
    invoke-virtual {v7, v9, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 93
    .line 94
    .line 95
    iget v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afl:I

    .line 96
    .line 97
    iget-object v4, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 98
    .line 99
    aget v4, v4, v10

    .line 100
    .line 101
    add-int/2addr v2, v4

    .line 102
    iput v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afl:I

    .line 103
    .line 104
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iget-object v4, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 109
    .line 110
    aget v4, v4, v10

    .line 111
    .line 112
    sub-int/2addr v3, v4

    .line 113
    iput v3, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mLastMotionY:I

    .line 114
    .line 115
    add-int v3, v2, v1

    .line 116
    .line 117
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    sub-int v2, v3, v2

    .line 122
    .line 123
    sub-int v4, v1, v2

    .line 124
    .line 125
    sub-int v2, v3, v4

    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    iget-object v5, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->dispatchNestedScroll(IIII[I)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    iget v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mLastMotionY:I

    .line 138
    .line 139
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 140
    .line 141
    aget v2, v2, v10

    .line 142
    .line 143
    sub-int/2addr v1, v2

    .line 144
    iput v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mLastMotionY:I

    .line 145
    .line 146
    int-to-float v1, v2

    .line 147
    invoke-virtual {v7, v9, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 148
    .line 149
    .line 150
    iget v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afl:I

    .line 151
    .line 152
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 153
    .line 154
    aget v2, v2, v10

    .line 155
    .line 156
    add-int/2addr v1, v2

    .line 157
    iput v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afl:I

    .line 158
    .line 159
    :cond_5
    iget-object v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afk:[I

    .line 160
    .line 161
    aget v1, v1, v10

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-ge v1, v11, :cond_7

    .line 168
    .line 169
    iget-object v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 170
    .line 171
    aget v1, v1, v10

    .line 172
    .line 173
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-ge v1, v11, :cond_7

    .line 178
    .line 179
    iget-boolean v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afm:Z

    .line 180
    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    iput-boolean v8, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afm:Z

    .line 184
    .line 185
    move v1, v8

    .line 186
    goto :goto_0

    .line 187
    :cond_6
    invoke-super {v0, v7}, Lcom/kwad/sdk/core/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    :goto_0
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_7
    iget-boolean v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afm:Z

    .line 197
    .line 198
    if-nez v1, :cond_8

    .line 199
    .line 200
    iput-boolean v10, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afm:Z

    .line 201
    .line 202
    const/16 v17, 0x0

    .line 203
    .line 204
    const/16 v18, 0x0

    .line 205
    .line 206
    const-wide/16 v11, 0x0

    .line 207
    .line 208
    const-wide/16 v13, 0x0

    .line 209
    .line 210
    const/4 v15, 0x3

    .line 211
    const/16 v16, 0x0

    .line 212
    .line 213
    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-super {v0, v1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 218
    .line 219
    .line 220
    :cond_8
    :goto_1
    move v1, v8

    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :cond_9
    iget-object v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 224
    .line 225
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 229
    .line 230
    iget v3, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afo:I

    .line 231
    .line 232
    int-to-float v3, v3

    .line 233
    const/16 v4, 0x3e8

    .line 234
    .line 235
    invoke-virtual {v1, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 236
    .line 237
    .line 238
    invoke-static {v6, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 243
    .line 244
    invoke-static {v2, v1}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    neg-float v1, v1

    .line 249
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    iget v3, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afn:I

    .line 254
    .line 255
    int-to-float v3, v3

    .line 256
    cmpl-float v2, v2, v3

    .line 257
    .line 258
    if-lez v2, :cond_a

    .line 259
    .line 260
    invoke-virtual {v0, v9, v1}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->dispatchNestedPreFling(FF)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_a

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->hasNestedScrollingParent()Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_a

    .line 271
    .line 272
    invoke-virtual {v0, v9, v1, v10}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->dispatchNestedFling(FFZ)Z

    .line 273
    .line 274
    .line 275
    :cond_a
    invoke-super/range {p0 .. p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    invoke-virtual {v0}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->stopNestedScroll()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    iget v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mLastMotionY:I

    .line 287
    .line 288
    int-to-float v2, v2

    .line 289
    sub-float/2addr v1, v2

    .line 290
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    const/high16 v2, 0x41200000    # 10.0f

    .line 295
    .line 296
    cmpg-float v1, v1, v2

    .line 297
    .line 298
    if-gez v1, :cond_b

    .line 299
    .line 300
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    iget v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afi:I

    .line 305
    .line 306
    int-to-float v2, v2

    .line 307
    sub-float/2addr v1, v2

    .line 308
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 309
    .line 310
    .line 311
    :cond_b
    move v1, v8

    .line 312
    move v8, v10

    .line 313
    goto :goto_2

    .line 314
    :cond_c
    iput v3, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mLastMotionY:I

    .line 315
    .line 316
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    float-to-int v1, v1

    .line 321
    iput v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afi:I

    .line 322
    .line 323
    invoke-virtual {v0, v4}, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->startNestedScroll(I)Z

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afk:[I

    .line 327
    .line 328
    aput v8, v1, v8

    .line 329
    .line 330
    aput v8, v1, v10

    .line 331
    .line 332
    iget-object v1, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afj:[I

    .line 333
    .line 334
    aput v8, v1, v8

    .line 335
    .line 336
    aput v8, v1, v10

    .line 337
    .line 338
    invoke-super/range {p0 .. p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    iput-boolean v8, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afm:Z

    .line 343
    .line 344
    :goto_2
    if-nez v8, :cond_d

    .line 345
    .line 346
    iget-object v2, v0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 347
    .line 348
    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 349
    .line 350
    .line 351
    :cond_d
    return v1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/recycle/NestedScrollWebView;->afp:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
