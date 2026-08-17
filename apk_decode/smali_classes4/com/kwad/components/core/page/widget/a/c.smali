.class public final Lcom/kwad/components/core/page/widget/a/c;
.super Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/page/widget/a/c$b;,
        Lcom/kwad/components/core/page/widget/a/c$c;,
        Lcom/kwad/components/core/page/widget/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private agK:Z

.field private agL:F

.field private agM:I

.field private agN:Z

.field private agO:I

.field protected agP:I

.field private agQ:I

.field private agR:I

.field protected agS:I

.field private agT:F

.field private agU:Z

.field private agV:Z

.field protected agW:Lcom/kwad/components/core/page/widget/a/i;

.field private agX:Z

.field private agY:Z

.field private agZ:I

.field private aha:Z

.field private ahb:I

.field private ahc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected ahd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ahe:Lcom/kwad/components/core/page/widget/a/c$a;

.field protected ahf:I

.field private ahg:Z

.field private ahh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected ahi:F

.field protected ahj:F

.field protected ahk:F

.field protected ahl:F

.field protected ahm:Z

.field private ahn:Lcom/kwad/components/core/page/widget/a/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kwad/components/core/page/widget/a/c<",
            "TV;>.c;"
        }
    .end annotation
.end field

.field private final aho:Lcom/kwad/components/core/page/widget/a/i$a;

.field private mActivePointerId:I

.field private mState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agK:Z

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahi:F

    .line 13
    .line 14
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahj:F

    .line 15
    .line 16
    const/high16 v0, 0x3f000000    # 0.5f

    .line 17
    .line 18
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahk:F

    .line 19
    .line 20
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahl:F

    .line 21
    .line 22
    new-instance v0, Lcom/kwad/components/core/page/widget/a/c$2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/kwad/components/core/page/widget/a/c$2;-><init>(Lcom/kwad/components/core/page/widget/a/c;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->aho:Lcom/kwad/components/core/page/widget/a/i$a;

    .line 28
    .line 29
    return-void
.end method

.method private D(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    return-object v1

    .line 16
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {p0, v3}, Lcom/kwad/components/core/page/widget/a/c;->D(Landroid/view/View;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    return-object v3

    .line 40
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-object v1
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/widget/a/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/page/widget/a/c;Lcom/kwad/components/core/page/widget/a/c$c;)Lcom/kwad/components/core/page/widget/a/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahn:Lcom/kwad/components/core/page/widget/a/c$c;

    return-object p1
.end method

.method private aX(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    check-cast v0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahh:Ljava/util/Map;

    .line 30
    .line 31
    if-nez v2, :cond_6

    .line 32
    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahh:Ljava/util/Map;

    .line 39
    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eq v3, v4, :cond_4

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    iget-object v4, p0, Lcom/kwad/components/core/page/widget/a/c;->ahh:Ljava/util/Map;

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    iget-object v4, p0, Lcom/kwad/components/core/page/widget/a/c;->ahh:Ljava/util/Map;

    .line 68
    .line 69
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/kwad/components/core/page/widget/a/c;->ahh:Ljava/util/Map;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x4

    .line 97
    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    if-nez p1, :cond_6

    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahh:Ljava/util/Map;

    .line 107
    .line 108
    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/page/widget/a/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahg:Z

    .line 2
    .line 3
    return p0
.end method

.method private bF(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahm:Z

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahm:Z

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/core/page/widget/a/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/page/widget/a/c;->mActivePointerId:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/page/widget/a/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/page/widget/a/c;)Lcom/kwad/components/core/page/widget/a/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahn:Lcom/kwad/components/core/page/widget/a/c$c;

    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/page/widget/a/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/page/widget/a/c;->agK:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/kwad/components/core/page/widget/a/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/page/widget/a/c;->agQ:I

    .line 2
    .line 3
    return p0
.end method

.method private getYVelocity()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/16 v1, 0x3e8

    .line 8
    .line 9
    iget v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agL:F

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->mActivePointerId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public static synthetic h(Lcom/kwad/components/core/page/widget/a/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/page/widget/a/c;->agR:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/kwad/components/core/page/widget/a/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/page/widget/a/c;->agU:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/kwad/components/core/page/widget/a/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 2
    .line 3
    return p0
.end method

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mActivePointerId:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private vk()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 6
    .line 7
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agP:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agQ:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 20
    .line 21
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agP:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/page/widget/a/c$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahe:Lcom/kwad/components/core/page/widget/a/c$a;

    return-void
.end method

.method public final aW(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agU:Z

    .line 3
    .line 4
    return-void
.end method

.method public final bD(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agN:Z

    .line 5
    .line 6
    if-nez p1, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agN:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agN:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agM:I

    .line 17
    .line 18
    if-eq v0, p1, :cond_2

    .line 19
    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agN:Z

    .line 22
    .line 23
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agM:I

    .line 28
    .line 29
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 30
    .line 31
    sub-int/2addr v0, p1

    .line 32
    iput v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 33
    .line 34
    :goto_0
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/view/View;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final bE(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/kwad/components/core/page/widget/a/c;->bF(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x5

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    if-ne p1, v0, :cond_4

    .line 23
    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/kwad/components/core/page/widget/a/c;->aX(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, v0}, Lcom/kwad/components/core/page/widget/a/c;->aX(Z)V

    .line 31
    .line 32
    .line 33
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/View;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahe:Lcom/kwad/components/core/page/widget/a/c$a;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lcom/kwad/components/core/page/widget/a/c$a;->bA(I)V

    .line 48
    .line 49
    .line 50
    :cond_5
    :goto_2
    return-void
.end method

.method public final bG(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahe:Lcom/kwad/components/core/page/widget/a/c$a;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 16
    .line 17
    if-le p1, v0, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 20
    .line 21
    sub-int/2addr v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sub-int v1, v0, v1

    .line 28
    .line 29
    :goto_0
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 32
    .line 33
    sub-int/2addr v0, p1

    .line 34
    int-to-float p1, v0

    .line 35
    int-to-float v0, v1

    .line 36
    div-float/2addr p1, v0

    .line 37
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agT:F

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahe:Lcom/kwad/components/core/page/widget/a/c$a;

    .line 40
    .line 41
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agT:F

    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/kwad/components/core/page/widget/a/c$a;->i(F)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final d(Landroid/view/View;F)Z
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agV:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 5
    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agM:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahl:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public final e(Landroid/view/View;F)Z
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahm:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahj:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahi:F

    :goto_0
    int-to-float v3, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p2, p1, v3

    const/4 v1, 0x1

    if-nez p2, :cond_2

    return v1

    .line 6
    :cond_2
    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    sub-int v0, p2, v0

    .line 7
    iget-boolean v4, p0, Lcom/kwad/components/core/page/widget/a/c;->ahm:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v3, p2

    :goto_1
    sub-float/2addr p1, v3

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    .line 9
    iget-boolean p2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahm:Z

    if-eqz p2, :cond_5

    .line 10
    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahl:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_4

    return v1

    :cond_4
    return v2

    .line 11
    :cond_5
    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahk:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method public final k(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
            to = 1.0
            toInclusive = false
        .end annotation
    .end param

    .line 1
    const p1, 0x3f4ccccd    # 0.8f

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahl:F

    .line 5
    .line 6
    return-void
.end method

.method public final l(Landroid/view/View;I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x6

    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agR:I

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agK:Z

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agQ:I

    .line 18
    .line 19
    if-gt v0, v2, :cond_3

    .line 20
    .line 21
    move p2, v1

    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-ne p2, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agU:Z

    .line 32
    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    if-ne p2, v0, :cond_5

    .line 37
    .line 38
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 39
    .line 40
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, p1, v2, v0}, Lcom/kwad/components/core/page/widget/a/i;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/kwad/components/core/page/widget/a/c$c;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/core/page/widget/a/c$c;-><init>(Lcom/kwad/components/core/page/widget/a/c;Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    invoke-virtual {p0, p2}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "Illegal mState argument: "

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method public final onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/c;->reset()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 30
    .line 31
    :cond_2
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 32
    .line 33
    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, -0x1

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    if-eq v0, v2, :cond_3

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    if-eq v0, p2, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iput-boolean v1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahg:Z

    .line 47
    .line 48
    iput v4, p0, Lcom/kwad/components/core/page/widget/a/c;->mActivePointerId:I

    .line 49
    .line 50
    iget-boolean p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 51
    .line 52
    if-eqz p2, :cond_8

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 55
    .line 56
    return v1

    .line 57
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    float-to-int v5, v5

    .line 62
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    float-to-int v6, v6

    .line 67
    iput v6, p0, Lcom/kwad/components/core/page/widget/a/c;->ahf:I

    .line 68
    .line 69
    iget-object v6, p0, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Landroid/view/View;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    move-object v6, v3

    .line 81
    :goto_0
    if-eqz v6, :cond_6

    .line 82
    .line 83
    iget v7, p0, Lcom/kwad/components/core/page/widget/a/c;->ahf:I

    .line 84
    .line 85
    invoke-virtual {p1, v6, v5, v7}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_6

    .line 90
    .line 91
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iput v6, p0, Lcom/kwad/components/core/page/widget/a/c;->mActivePointerId:I

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahg:Z

    .line 102
    .line 103
    :cond_6
    iget-boolean v6, p0, Lcom/kwad/components/core/page/widget/a/c;->agY:Z

    .line 104
    .line 105
    if-nez v6, :cond_7

    .line 106
    .line 107
    iget v6, p0, Lcom/kwad/components/core/page/widget/a/c;->mActivePointerId:I

    .line 108
    .line 109
    if-ne v6, v4, :cond_7

    .line 110
    .line 111
    iget v4, p0, Lcom/kwad/components/core/page/widget/a/c;->ahf:I

    .line 112
    .line 113
    invoke-virtual {p1, p2, v5, v4}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_7

    .line 118
    .line 119
    move p2, v2

    .line 120
    goto :goto_1

    .line 121
    :cond_7
    move p2, v1

    .line 122
    :goto_1
    iput-boolean p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 123
    .line 124
    :cond_8
    :goto_2
    iget-boolean p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 125
    .line 126
    if-nez p2, :cond_9

    .line 127
    .line 128
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 129
    .line 130
    if-eqz p2, :cond_9

    .line 131
    .line 132
    invoke-virtual {p2, p3}, Lcom/kwad/components/core/page/widget/a/i;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_9

    .line 137
    .line 138
    return v2

    .line 139
    :cond_9
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 140
    .line 141
    if-eqz p2, :cond_a

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    move-object v3, p2

    .line 148
    check-cast v3, Landroid/view/View;

    .line 149
    .line 150
    :cond_a
    const/4 p2, 0x2

    .line 151
    if-ne v0, p2, :cond_b

    .line 152
    .line 153
    if-eqz v3, :cond_b

    .line 154
    .line 155
    iget-boolean p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 156
    .line 157
    if-nez p2, :cond_b

    .line 158
    .line 159
    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 160
    .line 161
    if-eq p2, v2, :cond_b

    .line 162
    .line 163
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    float-to-int p2, p2

    .line 168
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    float-to-int v0, v0

    .line 173
    invoke-virtual {p1, v3, p2, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-nez p1, :cond_b

    .line 178
    .line 179
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 180
    .line 181
    if-eqz p1, :cond_b

    .line 182
    .line 183
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahf:I

    .line 184
    .line 185
    int-to-float p1, p1

    .line 186
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    sub-float/2addr p1, p2

    .line 191
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iget-object p2, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/kwad/components/core/page/widget/a/i;->getTouchSlop()I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    int-to-float p2, p2

    .line 202
    cmpl-float p1, p1, p2

    .line 203
    .line 204
    if-lez p1, :cond_b

    .line 205
    .line 206
    return v2

    .line 207
    :cond_b
    return v1
.end method

.method public final onLayoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    iput p3, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agN:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agO:I

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const/16 v2, 0x40

    .line 39
    .line 40
    iput v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agO:I

    .line 41
    .line 42
    :cond_1
    iget v2, p0, Lcom/kwad/components/core/page/widget/a/c;->agO:I

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    mul-int/lit8 v3, v3, 0x9

    .line 49
    .line 50
    div-int/lit8 v3, v3, 0x10

    .line 51
    .line 52
    sub-int/2addr p3, v3

    .line 53
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    iput p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agP:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agM:I

    .line 61
    .line 62
    iput p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agP:I

    .line 63
    .line 64
    :goto_0
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    sub-int/2addr p3, v2

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    iput p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agQ:I

    .line 77
    .line 78
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 79
    .line 80
    const/4 v2, 0x2

    .line 81
    div-int/2addr p3, v2

    .line 82
    iput p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agR:I

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/c;->vk()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 88
    .line 89
    .line 90
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 91
    .line 92
    const/4 v3, 0x3

    .line 93
    if-ne p3, v3, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const/4 v3, 0x6

    .line 104
    if-ne p3, v3, :cond_4

    .line 105
    .line 106
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agR:I

    .line 107
    .line 108
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    iget-boolean v3, p0, Lcom/kwad/components/core/page/widget/a/c;->agU:Z

    .line 113
    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    const/4 v3, 0x5

    .line 117
    if-ne p3, v3, :cond_5

    .line 118
    .line 119
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 120
    .line 121
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    const/4 v3, 0x4

    .line 126
    if-ne p3, v3, :cond_6

    .line 127
    .line 128
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 129
    .line 130
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    if-eq p3, v1, :cond_7

    .line 135
    .line 136
    if-ne p3, v2, :cond_8

    .line 137
    .line 138
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    sub-int/2addr v0, p3

    .line 143
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 144
    .line 145
    .line 146
    :cond_8
    :goto_1
    iget-object p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 147
    .line 148
    if-nez p3, :cond_9

    .line 149
    .line 150
    iget-object p3, p0, Lcom/kwad/components/core/page/widget/a/c;->aho:Lcom/kwad/components/core/page/widget/a/i$a;

    .line 151
    .line 152
    invoke-static {p1, p3}, Lcom/kwad/components/core/page/widget/a/i;->a(Landroid/view/ViewGroup;Lcom/kwad/components/core/page/widget/a/i$a;)Lcom/kwad/components/core/page/widget/a/i;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 157
    .line 158
    :cond_9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 159
    .line 160
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    .line 164
    .line 165
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 166
    .line 167
    invoke-direct {p0, p2}, Lcom/kwad/components/core/page/widget/a/c;->D(Landroid/view/View;)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 175
    .line 176
    return v1
.end method

.method public final onNestedPreFling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .param p1    # Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p3, v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-super/range {p0 .. p5}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;->onNestedPreFling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final onNestedPreScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p7, p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    check-cast p4, Landroid/view/View;

    .line 12
    .line 13
    if-eq p3, p4, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    sub-int p7, p4, p5

    .line 21
    .line 22
    if-lez p5, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-ge p7, p3, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    sub-int/2addr p4, p3

    .line 35
    aput p4, p6, p1

    .line 36
    .line 37
    neg-int p3, p4

    .line 38
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    const/4 p3, 0x3

    .line 42
    invoke-virtual {p0, p3}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    aput p5, p6, p1

    .line 47
    .line 48
    neg-int p3, p5

    .line 49
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    if-gez p5, :cond_6

    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-nez p3, :cond_6

    .line 64
    .line 65
    iget p3, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 66
    .line 67
    if-le p7, p3, :cond_5

    .line 68
    .line 69
    iget-boolean p7, p0, Lcom/kwad/components/core/page/widget/a/c;->agU:Z

    .line 70
    .line 71
    if-eqz p7, :cond_4

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    sub-int/2addr p4, p3

    .line 75
    aput p4, p6, p1

    .line 76
    .line 77
    neg-int p3, p4

    .line 78
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 79
    .line 80
    .line 81
    const/4 p3, 0x4

    .line 82
    invoke-virtual {p0, p3}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    :goto_1
    aput p5, p6, p1

    .line 87
    .line 88
    neg-int p3, p5

    .line 89
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p0, p2}, Lcom/kwad/components/core/page/widget/a/c;->bG(I)V

    .line 100
    .line 101
    .line 102
    iput p5, p0, Lcom/kwad/components/core/page/widget/a/c;->agZ:I

    .line 103
    .line 104
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->aha:Z

    .line 105
    .line 106
    return-void
.end method

.method public final onRestoreInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 1
    check-cast p3, Lcom/kwad/components/core/page/widget/a/c$b;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, p1, p2, v0}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;->onRestoreInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget p1, p3, Lcom/kwad/components/core/page/widget/a/c$b;->mState:I

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x2

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x4

    .line 23
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 24
    .line 25
    :goto_1
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/kwad/components/core/page/widget/a/c;->bF(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSaveInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/core/page/widget/a/c$b;

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;->onSaveInstanceState(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget p2, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lcom/kwad/components/core/page/widget/a/c$b;-><init>(Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final onStartNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agZ:I

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->aha:Z

    .line 5
    .line 6
    and-int/lit8 p2, p5, 0x2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    :cond_0
    return p1
.end method

.method public final onStopNestedScroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3
    .param p1    # Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, p4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahe:Lcom/kwad/components/core/page/widget/a/c$a;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahd:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-ne p3, p1, :cond_e

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->aha:Z

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_2
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agZ:I

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    const/4 p4, 0x4

    .line 43
    if-lez p1, :cond_4

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/c;->getYVelocity()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/core/page/widget/a/c;->e(Landroid/view/View;F)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_3
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 62
    .line 63
    :goto_0
    move v0, p4

    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_4
    iget-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agU:Z

    .line 67
    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/c;->getYVelocity()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/core/page/widget/a/c;->d(Landroid/view/View;F)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahb:I

    .line 81
    .line 82
    const/4 v0, 0x5

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agZ:I

    .line 85
    .line 86
    if-nez p1, :cond_b

    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iget-boolean v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agK:Z

    .line 93
    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/c;->getYVelocity()F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/core/page/widget/a/c;->e(Landroid/view/View;F)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agQ:I

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agR:I

    .line 113
    .line 114
    const/4 v2, 0x6

    .line 115
    if-ge p1, v1, :cond_9

    .line 116
    .line 117
    iget p4, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 118
    .line 119
    sub-int p4, p1, p4

    .line 120
    .line 121
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    if-ge p1, p4, :cond_8

    .line 126
    .line 127
    move p1, p3

    .line 128
    goto :goto_2

    .line 129
    :cond_8
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agR:I

    .line 130
    .line 131
    :goto_1
    move v0, v2

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    sub-int v0, p1, v1

    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 140
    .line 141
    sub-int/2addr p1, v1

    .line 142
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-ge v0, p1, :cond_a

    .line 147
    .line 148
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agR:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_a
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_b
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/c;->getYVelocity()F

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/core/page/widget/a/c;->e(Landroid/view/View;F)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_c

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/kwad/components/core/page/widget/a/c;->vl()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    goto :goto_2

    .line 169
    :cond_c
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agS:I

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :goto_2
    iget-object p4, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {p4, p2, v1, p1}, Lcom/kwad/components/core/page/widget/a/i;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_d

    .line 183
    .line 184
    const/4 p1, 0x2

    .line 185
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 186
    .line 187
    .line 188
    new-instance p1, Lcom/kwad/components/core/page/widget/a/c$c;

    .line 189
    .line 190
    invoke-direct {p1, p0, p2, v0}, Lcom/kwad/components/core/page/widget/a/c$c;-><init>(Lcom/kwad/components/core/page/widget/a/c;Landroid/view/View;I)V

    .line 191
    .line 192
    .line 193
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_d
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/page/widget/a/c;->bE(I)V

    .line 198
    .line 199
    .line 200
    :goto_3
    iput-boolean p3, p0, Lcom/kwad/components/core/page/widget/a/c;->aha:Z

    .line 201
    .line 202
    :cond_e
    :goto_4
    return-void
.end method

.method public final onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v1, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, p3}, Lcom/kwad/components/core/page/widget/a/i;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    if-nez p1, :cond_3

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/a/c;->reset()V

    .line 31
    .line 32
    .line 33
    :cond_3
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 34
    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 42
    .line 43
    :cond_4
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 44
    .line 45
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-ne p1, v1, :cond_5

    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 52
    .line 53
    if-nez p1, :cond_5

    .line 54
    .line 55
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    iget p1, p0, Lcom/kwad/components/core/page/widget/a/c;->ahf:I

    .line 60
    .line 61
    int-to-float p1, p1

    .line 62
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    sub-float/2addr p1, v1

    .line 67
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/kwad/components/core/page/widget/a/i;->getTouchSlop()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    int-to-float v1, v1

    .line 78
    cmpl-float p1, p1, v1

    .line 79
    .line 80
    if-lez p1, :cond_5

    .line 81
    .line 82
    iget-object p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agW:Lcom/kwad/components/core/page/widget/a/i;

    .line 83
    .line 84
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    invoke-virtual {p1, p2, p3}, Lcom/kwad/components/core/page/widget/a/i;->captureChildView(Landroid/view/View;I)V

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-boolean p1, p0, Lcom/kwad/components/core/page/widget/a/c;->agX:Z

    .line 96
    .line 97
    if-nez p1, :cond_6

    .line 98
    .line 99
    return v2

    .line 100
    :cond_6
    return v0
.end method

.method public final setState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c;->ahc:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agU:Z

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    :cond_1
    iput p1, p0, Lcom/kwad/components/core/page/widget/a/c;->mState:I

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/kwad/components/core/page/widget/a/c;->bF(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/View;

    .line 37
    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    :cond_3
    :goto_0
    return-void

    .line 41
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    new-instance v1, Lcom/kwad/components/core/page/widget/a/c$1;

    .line 60
    .line 61
    invoke-direct {v1, p0, v0, p1}, Lcom/kwad/components/core/page/widget/a/c$1;-><init>(Lcom/kwad/components/core/page/widget/a/c;Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/kwad/components/core/page/widget/a/c;->l(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final vl()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/kwad/components/core/page/widget/a/c;->agQ:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method
