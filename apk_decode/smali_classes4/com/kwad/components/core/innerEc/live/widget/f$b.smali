.class final Lcom/kwad/components/core/innerEc/live/widget/f$b;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/widget/f$b$a;
    }
.end annotation


# instance fields
.field final synthetic YR:Lcom/kwad/components/core/innerEc/live/widget/f;

.field private final YW:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/f;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p0, p2}, Lcom/kwad/components/core/innerEc/live/widget/f$b$a;-><init>(Lcom/kwad/components/core/innerEc/live/widget/f$b;B)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YW:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/f$b;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method private bd(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    const/16 v0, 0x2710

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    const/16 p1, 0xfa0

    .line 25
    .line 26
    return p1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->d(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    int-to-float p1, p1

    .line 34
    invoke-static {v0, p1}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    int-to-float p1, p1

    .line 39
    const/high16 v0, 0x41d00000    # 26.0f

    .line 40
    .line 41
    div-float/2addr p1, v0

    .line 42
    const v0, 0x4059999a    # 3.4f

    .line 43
    .line 44
    .line 45
    cmpg-float v1, p1, v0

    .line 46
    .line 47
    if-gez v1, :cond_3

    .line 48
    .line 49
    :goto_0
    move p1, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/high16 v0, 0x41200000    # 10.0f

    .line 52
    .line 53
    cmpl-float v1, p1, v0

    .line 54
    .line 55
    if-lez v1, :cond_4

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    :goto_1
    const/high16 v0, 0x41f00000    # 30.0f

    .line 59
    .line 60
    mul-float/2addr p1, v0

    .line 61
    float-to-int p1, p1

    .line 62
    return p1
.end method

.method private be(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->c(Lcom/kwad/components/core/innerEc/live/widget/g;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bh(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    check-cast v0, Lcom/kwad/components/core/innerEc/live/widget/g$d;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/widget/g$d;->bi(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bh(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    return v0
.end method

.method private bf(I)I
    .locals 5

    .line 1
    const-string v0, "LiveCommentLinearLayoutManager"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "updateComments, calculateTimeForScrollingForNewStrategy, dx == 0"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    instance-of v1, v1, Lcom/kwad/components/core/innerEc/live/widget/g$b;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    mul-int/lit16 v1, p1, 0x3e8

    .line 23
    .line 24
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/widget/f;->d(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 31
    .line 32
    invoke-static {v2, v3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    div-int/2addr v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    instance-of v1, v1, Lcom/kwad/components/core/innerEc/live/widget/g$e;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->e(Lcom/kwad/components/core/innerEc/live/widget/f;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    mul-int/lit16 v1, p1, 0x3e8

    .line 62
    .line 63
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/widget/f;->e(Lcom/kwad/components/core/innerEc/live/widget/f;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    div-int/2addr v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    instance-of v1, v1, Lcom/kwad/components/core/innerEc/live/widget/g$c;

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->f(Lcom/kwad/components/core/innerEc/live/widget/f;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    mul-int/lit16 v1, p1, 0x3e8

    .line 95
    .line 96
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 97
    .line 98
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/widget/f;->f(Lcom/kwad/components/core/innerEc/live/widget/f;)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    div-int/2addr v1, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_5
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bh(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :goto_0
    const/16 v2, 0xa

    .line 109
    .line 110
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v4, "updateComments, calculateTimeForScrollingForNewStrategydx"

    .line 117
    .line 118
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, "adjustTime"

    .line 125
    .line 126
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, "time"

    .line 133
    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return v2
.end method

.method private bg(I)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "LiveCommentLinearLayoutManager"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "updateComments, calculateTimeForScrollingForOptimalStrategy, dx == 0"

    .line 7
    .line 8
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    instance-of v2, v2, Lcom/kwad/components/core/innerEc/live/widget/g$f;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/kwad/components/core/innerEc/live/widget/g$f;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/g$f;->sW()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :cond_1
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bh(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    mul-int/lit16 v2, p1, 0x3e8

    .line 42
    .line 43
    div-int v0, v2, v0

    .line 44
    .line 45
    :goto_0
    const/16 v2, 0xa

    .line 46
    .line 47
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v4, "updateComments, calculateTimeForScrollingForNewStrategydx"

    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, "adjustTime"

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, "time"

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v2
.end method

.method private bh(I)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method private static c(Lcom/kwad/components/core/innerEc/live/widget/g;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/high16 v0, 0x41000000    # 8.0f

    .line 12
    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    div-float/2addr v0, p1

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final calculateTimeForDeceleration(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$d;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->be(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$f;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bg(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->c(Lcom/kwad/components/core/innerEc/live/widget/f;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bf(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public final calculateTimeForScrolling(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/kwad/components/core/innerEc/live/widget/g$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/widget/g$a;->sU()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$d;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->be(I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$f;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bg(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->c(Lcom/kwad/components/core/innerEc/live/widget/f;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bf(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1

    .line 67
    :cond_3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->bd(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getHorizontalSnapPreference()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->getVerticalSnapPreference()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v0, v0, Lcom/kwad/components/core/innerEc/live/widget/g$a;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/kwad/components/core/innerEc/live/widget/g$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/g$a;->sU()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x1

    .line 40
    if-gt v0, v1, :cond_0

    .line 41
    .line 42
    const/16 v0, 0x12c

    .line 43
    .line 44
    :cond_0
    neg-int p2, p2

    .line 45
    neg-int p1, p1

    .line 46
    new-instance v1, Lcom/kwad/components/core/innerEc/live/widget/b;

    .line 47
    .line 48
    const v2, 0x3f147ae1    # 0.58f

    .line 49
    .line 50
    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    .line 53
    const v4, 0x3ed70a3d    # 0.42f

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/kwad/components/core/innerEc/live/widget/b;-><init>(FFFF)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    mul-int v0, p2, p2

    .line 65
    .line 66
    mul-int v1, p1, p1

    .line 67
    .line 68
    add-int/2addr v0, v1

    .line 69
    int-to-double v0, v0

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    double-to-int v0, v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->calculateTimeForDeceleration(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-lez v0, :cond_3

    .line 80
    .line 81
    neg-int p2, p2

    .line 82
    neg-int p1, p1

    .line 83
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;->c(Lcom/kwad/components/core/innerEc/live/widget/g;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$b;->YW:Landroid/view/animation/Interpolator;

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 99
    .line 100
    :goto_0
    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method
