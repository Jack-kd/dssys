.class public Lcom/octopus/ad/internal/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/a/g;


# static fields
.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F

.field private static final g:[F

.field private static final h:[F

.field private static final i:[F

.field private static final j:[F


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/octopus/ad/internal/a/e;->c:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/octopus/ad/internal/a/e;->d:[F

    .line 15
    .line 16
    new-array v1, v0, [F

    .line 17
    .line 18
    fill-array-data v1, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/octopus/ad/internal/a/e;->e:[F

    .line 22
    .line 23
    new-array v1, v0, [F

    .line 24
    .line 25
    fill-array-data v1, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v1, Lcom/octopus/ad/internal/a/e;->f:[F

    .line 29
    .line 30
    new-array v1, v0, [F

    .line 31
    .line 32
    fill-array-data v1, :array_4

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/octopus/ad/internal/a/e;->g:[F

    .line 36
    .line 37
    new-array v1, v0, [F

    .line 38
    .line 39
    fill-array-data v1, :array_5

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/octopus/ad/internal/a/e;->h:[F

    .line 43
    .line 44
    new-array v1, v0, [F

    .line 45
    .line 46
    fill-array-data v1, :array_6

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/octopus/ad/internal/a/e;->i:[F

    .line 50
    .line 51
    new-array v0, v0, [F

    .line 52
    .line 53
    fill-array-data v0, :array_7

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/octopus/ad/internal/a/e;->j:[F

    .line 57
    .line 58
    return-void

    .line 59
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(JLcom/octopus/ad/internal/a/h;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/a/e;->a(Lcom/octopus/ad/internal/a/h;)[F

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/octopus/ad/internal/a/e;->a([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, p0, Lcom/octopus/ad/internal/a/e;->a:Landroid/view/animation/Animation;

    .line 18
    .line 19
    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/a/e;->b(Lcom/octopus/ad/internal/a/h;)[F

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/octopus/ad/internal/a/e;->a([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/octopus/ad/internal/a/e;->b:Landroid/view/animation/Animation;

    .line 28
    .line 29
    return-void
.end method

.method private a([FLandroid/view/animation/Interpolator;J)Landroid/view/animation/Animation;
    .locals 9

    .line 7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v1, 0x1

    aget v4, p1, v1

    const/4 v1, 0x2

    aget v6, p1, v1

    const/4 v1, 0x3

    aget v8, p1, v1

    const/4 v1, 0x2

    const/4 v3, 0x2

    const/4 v5, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method private a(Lcom/octopus/ad/internal/a/h;)[F
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/a/e$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/octopus/ad/internal/a/e;->c:[F

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/a/e;->f:[F

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/a/e;->e:[F

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/a/e;->d:[F

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/a/e;->c:[F

    return-object p1
.end method

.method private b(Lcom/octopus/ad/internal/a/h;)[F
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/a/e$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/octopus/ad/internal/a/e;->g:[F

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/a/e;->j:[F

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/a/e;->i:[F

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/a/e;->h:[F

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/a/e;->g:[F

    return-object p1
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/internal/a/e;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/a/e;->b:Landroid/view/animation/Animation;

    return-object v0
.end method
