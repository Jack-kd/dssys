.class public final Lcom/kwad/components/core/innerEc/live/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/widget/j$a;
    }
.end annotation


# instance fields
.field private MT:Landroid/view/GestureDetector;

.field private ZA:I

.field private ZB:F

.field private ZC:F

.field private final ZD:Ljava/lang/Runnable;

.field private final Zq:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final Zr:Lcom/kwad/components/core/innerEc/live/widget/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final Zs:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Zt:F

.field private Zu:Z

.field private Zv:Z

.field private Zw:Z

.field private Zx:Lcom/kwad/components/core/innerEc/live/widget/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Zy:Ljava/lang/Runnable;

.field private final Zz:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/i;Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/widget/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zv:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zw:Z

    .line 15
    .line 16
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/j$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/widget/j$1;-><init>(Lcom/kwad/components/core/innerEc/live/widget/j;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zy:Ljava/lang/Runnable;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zz:[I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZA:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZB:F

    .line 33
    .line 34
    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZC:F

    .line 35
    .line 36
    new-instance v0, Lcom/kwad/components/core/innerEc/live/widget/j$2;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/widget/j$2;-><init>(Lcom/kwad/components/core/innerEc/live/widget/j;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZD:Ljava/lang/Runnable;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zr:Lcom/kwad/components/core/innerEc/live/widget/i;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->mActivity:Landroid/app/Activity;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zq:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 48
    .line 49
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroid/view/GestureDetector;

    .line 53
    .line 54
    new-instance p2, Lcom/kwad/components/core/innerEc/live/widget/j$3;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lcom/kwad/components/core/innerEc/live/widget/j$3;-><init>(Lcom/kwad/components/core/innerEc/live/widget/j;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p3, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->MT:Landroid/view/GestureDetector;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/j;F)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZA:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZA:I

    return p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/j;)Ljava/util/Set;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/j;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zw:Z

    return p1
.end method

.method private aM(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->MT:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private aN(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZD:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->b(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zu:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZD:Ljava/lang/Runnable;

    .line 13
    .line 14
    const-wide/16 v0, 0x3e8

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/widget/j;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zy:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/widget/j;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zu:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/widget/j;)Landroid/view/GestureDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->MT:Landroid/view/GestureDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/widget/j;)Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zq:Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/innerEc/live/widget/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zv:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/innerEc/live/widget/j;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method private h(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zr:Lcom/kwad/components/core/innerEc/live/widget/i;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/kwad/components/core/innerEc/live/widget/i;->Zm:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZC:F

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    cmpl-float v1, p1, v0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    cmpg-float p1, p1, v0

    .line 24
    .line 25
    if-gez p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_2
    return-void
.end method

.method private ta()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZA:I

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    cmpg-float v0, v1, v0

    .line 26
    .line 27
    if-gtz v0, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZA:I

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zz:[I

    .line 37
    .line 38
    aget v3, v0, v1

    .line 39
    .line 40
    add-int/2addr v3, v2

    .line 41
    aput v3, v0, v1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zz:[I

    .line 45
    .line 46
    aget v3, v0, v2

    .line 47
    .line 48
    add-int/2addr v3, v2

    .line 49
    aput v3, v0, v2

    .line 50
    .line 51
    :goto_1
    iput v1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZA:I

    .line 52
    .line 53
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zt:F

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->aN(Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->aM(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZB:F

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eq p1, v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v2, 0x3

    .line 55
    if-ne p1, v2, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 v0, 0x2

    .line 63
    if-ne p1, v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zt:F

    .line 70
    .line 71
    sub-float/2addr p1, v0

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/high16 v0, 0x41200000    # 10.0f

    .line 77
    .line 78
    cmpl-float p1, p1, v0

    .line 79
    .line 80
    if-lez p1, :cond_3

    .line 81
    .line 82
    invoke-direct {p0, v1}, Lcom/kwad/components/core/innerEc/live/widget/j;->aM(Z)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZB:F

    .line 90
    .line 91
    sub-float/2addr p1, v0

    .line 92
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->ZC:F

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/kwad/components/core/innerEc/live/widget/j;->aN(Z)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v1}, Lcom/kwad/components/core/innerEc/live/widget/j;->aM(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-ne p1, v0, :cond_6

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/j;->ta()V

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-direct {p0, p2}, Lcom/kwad/components/core/innerEc/live/widget/j;->h(Landroid/view/MotionEvent;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->MT:Landroid/view/GestureDetector;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    return p1
.end method

.method public final sX()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zx:Lcom/kwad/components/core/innerEc/live/widget/j$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zx:Lcom/kwad/components/core/innerEc/live/widget/j$a;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final sY()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zw:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zx:Lcom/kwad/components/core/innerEc/live/widget/j$a;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zs:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zx:Lcom/kwad/components/core/innerEc/live/widget/j$a;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final sZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j;->Zu:Z

    .line 2
    .line 3
    return v0
.end method
