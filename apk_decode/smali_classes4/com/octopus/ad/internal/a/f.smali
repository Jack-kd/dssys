.class public Lcom/octopus/ad/internal/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/a/g;


# static fields
.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F


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
    sput-object v1, Lcom/octopus/ad/internal/a/f;->c:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/octopus/ad/internal/a/f;->d:[F

    .line 15
    .line 16
    new-array v1, v0, [F

    .line 17
    .line 18
    fill-array-data v1, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/octopus/ad/internal/a/f;->e:[F

    .line 22
    .line 23
    new-array v0, v0, [F

    .line 24
    .line 25
    fill-array-data v0, :array_3

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/octopus/ad/internal/a/f;->f:[F

    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_3
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(JLcom/octopus/ad/internal/a/h;)V
    .locals 1

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
    invoke-direct {p0, v0, p1, p2}, Lcom/octopus/ad/internal/a/f;->a(Landroid/view/animation/Interpolator;J)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p3}, Lcom/octopus/ad/internal/a/f;->a(Lcom/octopus/ad/internal/a/h;)[F

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/octopus/ad/internal/a/f;->a([FLandroid/view/animation/Interpolator;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private a(Landroid/view/animation/Interpolator;J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/octopus/ad/internal/a/f;->a:Landroid/view/animation/Animation;

    .line 2
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object p2, p0, Lcom/octopus/ad/internal/a/f;->a:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private a([FLandroid/view/animation/Interpolator;J)V
    .locals 10

    .line 4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    aget v2, p1, v9

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

    .line 5
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 8
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 10
    new-instance p2, Landroid/view/animation/AnimationSet;

    invoke-direct {p2, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 13
    iput-object p2, p0, Lcom/octopus/ad/internal/a/f;->b:Landroid/view/animation/Animation;

    return-void
.end method

.method private a(Lcom/octopus/ad/internal/a/h;)[F
    .locals 1

    .line 14
    sget-object v0, Lcom/octopus/ad/internal/a/f$1;->a:[I

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

    .line 15
    sget-object p1, Lcom/octopus/ad/internal/a/f;->c:[F

    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/a/f;->f:[F

    return-object p1

    .line 17
    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/a/f;->e:[F

    return-object p1

    .line 18
    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/a/f;->d:[F

    return-object p1

    .line 19
    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/a/f;->c:[F

    return-object p1
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/octopus/ad/internal/a/f;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/a/f;->b:Landroid/view/animation/Animation;

    .line 2
    .line 3
    return-object v0
.end method
