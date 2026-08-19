.class final Lcom/kwad/sdk/core/g/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private aUi:Ljava/util/Random;

.field aXS:Z

.field aXT:Z

.field aXU:Z

.field final synthetic aYh:Lcom/kwad/sdk/core/g/d;

.field private final aYi:[F

.field private aYj:Z

.field private final aYk:[F

.field aYl:Z

.field aYm:Z

.field aYn:Z

.field private aYo:I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/g/d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array v0, p1, [F

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYi:[F

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYj:Z

    .line 16
    .line 17
    new-array p1, p1, [F

    .line 18
    .line 19
    fill-array-data p1, :array_1

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYk:[F

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aXS:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aXT:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aXU:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYl:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYm:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYn:Z

    .line 35
    .line 36
    iput v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYo:I

    .line 37
    .line 38
    const-class p1, Lcom/kwad/sdk/components/DevelopMangerComponents;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/kwad/sdk/components/DevelopMangerComponents;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYj:Z

    .line 49
    .line 50
    :cond_0
    return-void

    .line 51
    :array_0
    .array-data 4
        0x0
        0x0
        0x411ccccd    # 9.8f
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private NN()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aXS:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aXT:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aXU:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYl:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYm:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYn:Z

    .line 13
    .line 14
    return-void
.end method

.method private NQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$a;->aUi:Ljava/util/Random;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Random;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/core/g/d$a;->aUi:Ljava/util/Random;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$a;->aUi:Ljava/util/Random;

    .line 13
    .line 14
    const/16 v1, 0x64

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYi:[F

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/g/d$a;->a([F)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private a([F)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/g/d$a;->c([F)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget v1, p1, v0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget v3, p1, v2

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    aget v4, p1, v4

    .line 12
    .line 13
    mul-float v5, v1, v1

    .line 14
    .line 15
    mul-float v6, v3, v3

    .line 16
    .line 17
    add-float/2addr v5, v6

    .line 18
    mul-float v6, v4, v4

    .line 19
    .line 20
    add-float/2addr v5, v6

    .line 21
    float-to-double v5, v5

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-static {p1}, Lcom/kwad/sdk/core/g/d$a;->b([F)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->NO()F

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    float-to-double v7, v7

    .line 41
    sub-double/2addr v5, v7

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    :cond_0
    iget-object v7, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 47
    .line 48
    invoke-static {v7}, Lcom/kwad/sdk/core/g/d;->b(Lcom/kwad/sdk/core/g/d;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    float-to-double v5, v1

    .line 75
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/g/d$a;->d([F)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/kwad/sdk/core/g/d;->c(Lcom/kwad/sdk/core/g/d;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/kwad/sdk/core/g/d;->d(Lcom/kwad/sdk/core/g/d;)F

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    float-to-double v1, p1

    .line 96
    cmpl-double p1, v5, v1

    .line 97
    .line 98
    if-ltz p1, :cond_2

    .line 99
    .line 100
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/d;)Lcom/kwad/sdk/core/g/b;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 109
    .line 110
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/d;Z)Z

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/kwad/sdk/core/g/d;->a(Lcom/kwad/sdk/core/g/d;)Lcom/kwad/sdk/core/g/b;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1, v5, v6}, Lcom/kwad/sdk/core/g/b;->a(D)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-void
.end method

.method private static b([F)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    mul-float/2addr v1, v1

    .line 5
    const/4 v2, 0x1

    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    mul-float/2addr v3, v3

    .line 9
    add-float/2addr v1, v3

    .line 10
    const/4 v3, 0x2

    .line 11
    aget p0, p0, v3

    .line 12
    .line 13
    mul-float/2addr p0, p0

    .line 14
    add-float/2addr v1, p0

    .line 15
    float-to-double v3, v1

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->NO()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    float-to-double v5, p0

    .line 29
    sub-double/2addr v3, v5

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->NP()D

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    cmpg-double p0, v3, v5

    .line 39
    .line 40
    if-gtz p0, :cond_0

    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    return v0
.end method

.method private c([F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYk:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    cmpl-float v4, v2, v3

    .line 8
    .line 9
    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x1

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    aget v4, v0, v7

    .line 16
    .line 17
    cmpl-float v4, v4, v3

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    aget v4, v0, v6

    .line 22
    .line 23
    cmpl-float v3, v4, v3

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    move v3, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const v3, 0x3f19999a    # 0.6f

    .line 30
    .line 31
    .line 32
    :goto_0
    aget v4, p1, v1

    .line 33
    .line 34
    mul-float/2addr v4, v3

    .line 35
    sub-float/2addr v5, v3

    .line 36
    mul-float/2addr v2, v5

    .line 37
    add-float/2addr v4, v2

    .line 38
    aput v4, p1, v1

    .line 39
    .line 40
    aget v2, p1, v7

    .line 41
    .line 42
    mul-float/2addr v2, v3

    .line 43
    aget v4, v0, v7

    .line 44
    .line 45
    mul-float/2addr v4, v5

    .line 46
    add-float/2addr v2, v4

    .line 47
    aput v2, p1, v7

    .line 48
    .line 49
    aget v2, p1, v6

    .line 50
    .line 51
    mul-float/2addr v3, v2

    .line 52
    aget v2, v0, v6

    .line 53
    .line 54
    mul-float/2addr v5, v2

    .line 55
    add-float/2addr v3, v5

    .line 56
    aput v3, p1, v6

    .line 57
    .line 58
    const/4 v2, 0x3

    .line 59
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private d([F)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    cmpl-float v3, v1, v2

    .line 6
    .line 7
    if-lez v3, :cond_0

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/kwad/sdk/core/g/d$a;->aXS:Z

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/g/d$a;->n(F)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput-boolean v1, p0, Lcom/kwad/sdk/core/g/d$a;->aXS:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    cmpg-float v3, v1, v2

    .line 21
    .line 22
    if-gez v3, :cond_1

    .line 23
    .line 24
    iget-boolean v3, p0, Lcom/kwad/sdk/core/g/d$a;->aYl:Z

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/g/d$a;->n(F)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput-boolean v1, p0, Lcom/kwad/sdk/core/g/d$a;->aYl:Z

    .line 33
    .line 34
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 35
    aget v3, p1, v1

    .line 36
    .line 37
    cmpl-float v4, v3, v2

    .line 38
    .line 39
    if-lez v4, :cond_2

    .line 40
    .line 41
    iget-boolean v4, p0, Lcom/kwad/sdk/core/g/d$a;->aXT:Z

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/g/d$a;->n(F)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput-boolean v3, p0, Lcom/kwad/sdk/core/g/d$a;->aXT:Z

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    cmpg-float v4, v3, v2

    .line 53
    .line 54
    if-gez v4, :cond_3

    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/kwad/sdk/core/g/d$a;->aYm:Z

    .line 57
    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    invoke-direct {p0, v3}, Lcom/kwad/sdk/core/g/d$a;->n(F)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iput-boolean v3, p0, Lcom/kwad/sdk/core/g/d$a;->aYm:Z

    .line 65
    .line 66
    :cond_3
    :goto_1
    const/4 v3, 0x2

    .line 67
    aget p1, p1, v3

    .line 68
    .line 69
    cmpl-float v4, p1, v2

    .line 70
    .line 71
    if-lez v4, :cond_4

    .line 72
    .line 73
    iget-boolean v4, p0, Lcom/kwad/sdk/core/g/d$a;->aXU:Z

    .line 74
    .line 75
    if-nez v4, :cond_4

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/g/d$a;->n(F)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/d$a;->aXU:Z

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    cmpg-float v2, p1, v2

    .line 85
    .line 86
    if-gez v2, :cond_5

    .line 87
    .line 88
    iget-boolean v2, p0, Lcom/kwad/sdk/core/g/d$a;->aYn:Z

    .line 89
    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/g/d$a;->n(F)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iput-boolean p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYn:Z

    .line 97
    .line 98
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/kwad/sdk/core/g/d$a;->aXS:Z

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iget-boolean p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYl:Z

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    move p1, v1

    .line 107
    goto :goto_3

    .line 108
    :cond_6
    move p1, v0

    .line 109
    :goto_3
    iget-boolean v2, p0, Lcom/kwad/sdk/core/g/d$a;->aXT:Z

    .line 110
    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    iget-boolean v2, p0, Lcom/kwad/sdk/core/g/d$a;->aYm:Z

    .line 114
    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    move v2, v1

    .line 118
    goto :goto_4

    .line 119
    :cond_7
    move v2, v0

    .line 120
    :goto_4
    iget-boolean v4, p0, Lcom/kwad/sdk/core/g/d$a;->aXU:Z

    .line 121
    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    iget-boolean v4, p0, Lcom/kwad/sdk/core/g/d$a;->aYn:Z

    .line 125
    .line 126
    if-eqz v4, :cond_8

    .line 127
    .line 128
    move v4, v1

    .line 129
    goto :goto_5

    .line 130
    :cond_8
    move v4, v0

    .line 131
    :goto_5
    if-nez p1, :cond_9

    .line 132
    .line 133
    if-nez v2, :cond_9

    .line 134
    .line 135
    if-eqz v4, :cond_a

    .line 136
    .line 137
    :cond_9
    iget p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYo:I

    .line 138
    .line 139
    add-int/2addr p1, v1

    .line 140
    iput p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYo:I

    .line 141
    .line 142
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/d$a;->NN()V

    .line 143
    .line 144
    .line 145
    :cond_a
    iget p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYo:I

    .line 146
    .line 147
    if-le p1, v3, :cond_b

    .line 148
    .line 149
    iput v0, p0, Lcom/kwad/sdk/core/g/d$a;->aYo:I

    .line 150
    .line 151
    return v1

    .line 152
    :cond_b
    return v0
.end method

.method private n(F)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->NO()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float v0, p1, v0

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v1, p0, Lcom/kwad/sdk/core/g/d$a;->aYh:Lcom/kwad/sdk/core/g/d;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kwad/sdk/core/g/d;->d(Lcom/kwad/sdk/core/g/d;)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    cmpl-float p1, p1, v1

    .line 22
    .line 23
    if-ltz p1, :cond_0

    .line 24
    .line 25
    float-to-double v0, v0

    .line 26
    invoke-static {}, Lcom/kwad/sdk/core/g/d;->NP()D

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    cmpl-double p1, v0, v2

    .line 31
    .line 32
    if-ltz p1, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    return p1
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/g/d$a;->a([F)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/kwad/sdk/core/g/d$a;->aYj:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/kwad/sdk/core/g/d$a;->NQ()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
