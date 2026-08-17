.class public Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;
    }
.end annotation


# instance fields
.field private ahL:I

.field private btN:Lcom/kwad/sdk/widget/swipe/a;

.field private btO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;",
            ">;"
        }
    .end annotation
.end field

.field private hQ:F

.field private hR:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 4
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->init(Landroid/content/Context;)V

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 7
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 8
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->init(Landroid/content/Context;)V

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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 11
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 12
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized XP()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;->si()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method private declared-synchronized XQ()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;->sh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->mTouchSlop:I

    .line 10
    .line 11
    return-void
.end method

.method private k(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "HorizontalSwipeLayout"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    if-eq v0, v2, :cond_4

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v0, v4, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    iput v3, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v5, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hQ:F

    .line 29
    .line 30
    sub-float/2addr v0, v5

    .line 31
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget v6, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hR:F

    .line 40
    .line 41
    sub-float/2addr p1, v6

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget v6, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->mTouchSlop:I

    .line 47
    .line 48
    int-to-float v6, v6

    .line 49
    cmpl-float v6, v5, v6

    .line 50
    .line 51
    if-lez v6, :cond_3

    .line 52
    .line 53
    cmpl-float p1, v5, p1

    .line 54
    .line 55
    if-lez p1, :cond_3

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    cmpl-float p1, v0, p1

    .line 59
    .line 60
    if-lez p1, :cond_2

    .line 61
    .line 62
    iput v2, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iput v4, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 66
    .line 67
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v4, "onInterceptTouchEvent ACTION_MOVE mDragState="

    .line 70
    .line 71
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v4, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, "--dx="

    .line 80
    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iput v3, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 96
    .line 97
    const-string p1, "onInterceptTouchEvent ACTION_UP"

    .line 98
    .line 99
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hQ:F

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hR:F

    .line 114
    .line 115
    iput v3, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v0, "onInterceptTouchEvent ACTION_DOWN mInitialMotionX="

    .line 120
    .line 121
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hQ:F

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    iget p1, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    return v2

    .line 141
    :cond_6
    return v3
.end method

.method private l(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "HorizontalSwipeLayout"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    if-eq v0, v3, :cond_4

    .line 13
    .line 14
    if-eq v0, v4, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iput v2, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v5, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hQ:F

    .line 30
    .line 31
    sub-float/2addr v0, v5

    .line 32
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget v6, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hR:F

    .line 41
    .line 42
    sub-float/2addr p1, v6

    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget v6, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 48
    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    iget v6, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->mTouchSlop:I

    .line 52
    .line 53
    int-to-float v6, v6

    .line 54
    cmpl-float v6, v5, v6

    .line 55
    .line 56
    if-lez v6, :cond_3

    .line 57
    .line 58
    cmpl-float p1, v5, p1

    .line 59
    .line 60
    if-lez p1, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    cmpl-float p1, v0, p1

    .line 64
    .line 65
    if-lez p1, :cond_2

    .line 66
    .line 67
    iput v3, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iput v4, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 71
    .line 72
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v4, "onTouchEvent ACTION_MOVE mDragState="

    .line 75
    .line 76
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v4, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 80
    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, "--dx="

    .line 85
    .line 86
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v0, "onTouchEvent ACTION_UP mDragState="

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_6

    .line 128
    .line 129
    iget p1, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    if-ne p1, v3, :cond_5

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->XQ()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    if-ne p1, v4, :cond_6

    .line 140
    .line 141
    invoke-direct {p0}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->XP()V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_1
    iput v2, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v0, "onTouchEvent ACTION_DOWN mInitialMotionX="

    .line 150
    .line 151
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->hQ:F

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    iget p1, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->ahL:I

    .line 167
    .line 168
    if-eqz p1, :cond_8

    .line 169
    .line 170
    return v3

    .line 171
    :cond_8
    return v2
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public final declared-synchronized b(Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public declared-synchronized getOnSwipedListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btN:Lcom/kwad/sdk/widget/swipe/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/kwad/sdk/widget/swipe/a;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, "HorizontalSwipeLayout"

    .line 13
    .line 14
    const-string v0, "onInterceptTouchEvent true"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->k(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btN:Lcom/kwad/sdk/widget/swipe/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/kwad/sdk/widget/swipe/a;->c(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, "HorizontalSwipeLayout"

    .line 13
    .line 14
    const-string v0, "handlerTouchEvent true"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btO:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->l(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public setTouchDetector(Lcom/kwad/sdk/widget/swipe/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->btN:Lcom/kwad/sdk/widget/swipe/a;

    .line 2
    .line 3
    return-void
.end method
