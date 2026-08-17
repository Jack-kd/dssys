.class public Lcom/meishu/sdk/core/view/FeedAdOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;,
        Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;,
        Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;
    }
.end annotation


# static fields
.field public static final EXTEND_DOWN_RATIO:F = 0.1f

.field public static final EXTEND_LEFT_RATIO:F = 0.55f

.field public static final EXTEND_RIGHT_RATIO:F = 0.5f

.field public static final EXTEND_UP_RATIO:F = 0.15f

.field private static final TAG:Ljava/lang/String; = "FeedAdOverlayView"


# instance fields
.field private adContainerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private attachListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;

.field private clickListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;

.field private contentViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private downEventTime:J

.field private downInAdArea:Z

.field private downRawX:F

.field private downRawY:F

.field private downX:F

.field private downY:F

.field private extendDownRatio:F

.field private extendLeftRatio:F

.field private extendRightRatio:F

.field private extendUpRatio:F

.field private interceptAllEvents:Z

.field private invalidityChecker:Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;

.field private isSliding:Z

.field private layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

.field private minSlideDistanceDp:I

.field private overlayUniqueId:Ljava/lang/String;

.field private scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

.field private slideClickEnabled:Z

.field private slideScrollDistance:I

.field private slidingTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private upRawX:F

.field private upRawY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x3e19999a    # 0.15f

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendUpRatio:F

    .line 8
    .line 9
    const p1, 0x3dcccccd    # 0.1f

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendDownRatio:F

    .line 13
    .line 14
    const p1, 0x3f0ccccd    # 0.55f

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendLeftRatio:F

    .line 18
    .line 19
    const/high16 p1, 0x3f000000    # 0.5f

    .line 20
    .line 21
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendRightRatio:F

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->interceptAllEvents:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideClickEnabled:Z

    .line 27
    .line 28
    const/16 v0, 0xfa

    .line 29
    .line 30
    iput v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->minSlideDistanceDp:I

    .line 31
    .line 32
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downInAdArea:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->isSliding:Z

    .line 35
    .line 36
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideScrollDistance:I

    .line 37
    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->clickListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/view/FeedAdOverlayView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->updatePosition(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private dispatchToView(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 17
    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    aget v2, v0, p3

    .line 21
    .line 22
    aget p3, v1, p3

    .line 23
    .line 24
    sub-int/2addr v2, p3

    .line 25
    int-to-float p3, v2

    .line 26
    const/4 v2, 0x1

    .line 27
    aget v0, v0, v2

    .line 28
    .line 29
    aget v1, v1, v2

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p2, p3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private findUnderlyingView(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v2, p0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v3, 0x2

    .line 17
    new-array v3, v3, [I

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Landroid/graphics/Rect;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aget v5, v3, v5

    .line 26
    .line 27
    aget v6, v3, v1

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    add-int/2addr v7, v5

    .line 34
    aget v3, v3, v1

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    add-int/2addr v8, v3

    .line 41
    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .line 43
    .line 44
    float-to-int v3, p2

    .line 45
    float-to-int v5, p3

    .line 46
    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    instance-of v3, v2, Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 53
    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p1, 0x0

    .line 61
    return-object p1
.end method

.method private forwardEventToUnderlying(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->contentViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    invoke-direct {p0, v0, v2, v3}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->findUnderlyingView(Landroid/view/ViewGroup;FF)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    sget-object p1, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "forwardEventToUnderlying: no underlying view at ("

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ","

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ")"

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slidingTargetRef:Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slidingTargetRef:Ljava/lang/ref/WeakReference;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v1, v0

    .line 88
    check-cast v1, Landroid/view/View;

    .line 89
    .line 90
    :cond_4
    if-nez v1, :cond_5

    .line 91
    .line 92
    :goto_1
    return-void

    .line 93
    :cond_5
    move-object v0, v1

    .line 94
    :goto_2
    invoke-direct {p0, v0, p1, p2}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->dispatchToView(Landroid/view/View;Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private toAdContainerCoords(FF)[F
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

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
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-float v4, v4

    .line 32
    mul-float/2addr p1, v4

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    int-to-float v4, v4

    .line 38
    div-float/2addr p1, v4

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    mul-float/2addr p2, v0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    int-to-float v0, v0

    .line 50
    div-float/2addr p2, v0

    .line 51
    new-array v0, v3, [F

    .line 52
    .line 53
    aput p1, v0, v2

    .line 54
    .line 55
    aput p2, v0, v1

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_1
    :goto_0
    new-array v0, v3, [F

    .line 59
    .line 60
    aput p1, v0, v2

    .line 61
    .line 62
    aput p2, v0, v1

    .line 63
    .line 64
    return-object v0
.end method

.method private updatePosition(Landroid/view/ViewGroup;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_7

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_7

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x4

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eq p1, v2, :cond_7

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    .line 60
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    .line 62
    const/4 v4, 0x2

    .line 63
    new-array v5, v4, [I

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 66
    .line 67
    .line 68
    const/4 v6, 0x1

    .line 69
    aget v7, v5, v6

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    if-lez v8, :cond_6

    .line 77
    .line 78
    aget v7, v5, v6

    .line 79
    .line 80
    if-ge v7, v1, :cond_6

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    aget v8, v5, v7

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    add-int/2addr v9, v8

    .line 90
    if-lez v9, :cond_6

    .line 91
    .line 92
    aget v8, v5, v7

    .line 93
    .line 94
    if-ge v8, v3, :cond_6

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_3
    aget v2, v5, v7

    .line 106
    .line 107
    int-to-float v3, v3

    .line 108
    iget v8, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendLeftRatio:F

    .line 109
    .line 110
    mul-float/2addr v8, v3

    .line 111
    float-to-int v8, v8

    .line 112
    sub-int v8, v2, v8

    .line 113
    .line 114
    aget v9, v5, v6

    .line 115
    .line 116
    int-to-float v1, v1

    .line 117
    iget v10, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendUpRatio:F

    .line 118
    .line 119
    mul-float/2addr v10, v1

    .line 120
    float-to-int v10, v10

    .line 121
    sub-int/2addr v9, v10

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    add-int/2addr v10, v2

    .line 127
    iget v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendRightRatio:F

    .line 128
    .line 129
    mul-float/2addr v3, v2

    .line 130
    float-to-int v2, v3

    .line 131
    add-int/2addr v10, v2

    .line 132
    aget v2, v5, v6

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    add-int/2addr v0, v2

    .line 139
    iget v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendDownRatio:F

    .line 140
    .line 141
    mul-float/2addr v1, v2

    .line 142
    float-to-int v1, v1

    .line 143
    add-int/2addr v0, v1

    .line 144
    new-array v1, v4, [I

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 147
    .line 148
    .line 149
    aget p1, v1, v7

    .line 150
    .line 151
    sub-int p1, v8, p1

    .line 152
    .line 153
    aget v1, v1, v6

    .line 154
    .line 155
    sub-int v1, v9, v1

    .line 156
    .line 157
    sub-int/2addr v10, v8

    .line 158
    sub-int/2addr v0, v9

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    .line 165
    if-nez v2, :cond_4

    .line 166
    .line 167
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 168
    .line 169
    invoke-direct {v2, v10, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 170
    .line 171
    .line 172
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 173
    .line 174
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 175
    .line 176
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_4
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 181
    .line 182
    if-ne v3, v10, :cond_5

    .line 183
    .line 184
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 185
    .line 186
    if-ne v3, v0, :cond_5

    .line 187
    .line 188
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 189
    .line 190
    if-ne v3, p1, :cond_5

    .line 191
    .line 192
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 193
    .line 194
    if-eq v3, v1, :cond_7

    .line 195
    .line 196
    :cond_5
    iput v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 197
    .line 198
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 199
    .line 200
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 201
    .line 202
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 203
    .line 204
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eq p1, v2, :cond_7

    .line 213
    .line 214
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public attachToContent(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->contentViewRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$1;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$1;-><init>(Lcom/meishu/sdk/core/view/FeedAdOverlayView;Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 23
    .line 24
    new-instance v0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$2;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$2;-><init>(Lcom/meishu/sdk/core/view/FeedAdOverlayView;Landroid/view/ViewGroup;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/View;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    new-instance v0, Lcom/meishu/sdk/core/view/FeedAdOverlayView$3;

    .line 59
    .line 60
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$3;-><init>(Lcom/meishu/sdk/core/view/FeedAdOverlayView;Landroid/view/ViewGroup;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public detach()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->clickListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->attachListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->invalidityChecker:Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catch_1
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->attachListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;->onOverlayAttached()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->attachListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;->onOverlayDetached()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v0, v4, :cond_2

    .line 14
    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->forwardEventToUnderlying(Landroid/view/MotionEvent;I)V

    .line 20
    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->isSliding:Z

    .line 23
    .line 24
    iget-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->invalidityChecker:Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->overlayUniqueId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;->onInvalid(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->interceptAllEvents:Z

    .line 39
    .line 40
    return p1

    .line 41
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget v3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawX:F

    .line 50
    .line 51
    sub-float v3, v0, v3

    .line 52
    .line 53
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget v5, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawY:F

    .line 58
    .line 59
    sub-float v5, v1, v5

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    float-to-int v3, v3

    .line 70
    iput v3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideScrollDistance:I

    .line 71
    .line 72
    iget-boolean v3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->isSliding:Z

    .line 73
    .line 74
    if-nez v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget v5, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideScrollDistance:I

    .line 89
    .line 90
    if-le v5, v3, :cond_3

    .line 91
    .line 92
    iput-boolean v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->isSliding:Z

    .line 93
    .line 94
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->forwardEventToUnderlying(Landroid/view/MotionEvent;I)V

    .line 95
    .line 96
    .line 97
    iput v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawX:F

    .line 98
    .line 99
    iput v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawY:F

    .line 100
    .line 101
    return v2

    .line 102
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawX:F

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawY:F

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 127
    .line 128
    iget-boolean v4, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->isSliding:Z

    .line 129
    .line 130
    iget-boolean v5, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideClickEnabled:Z

    .line 131
    .line 132
    if-eqz v5, :cond_5

    .line 133
    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    iget v5, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideScrollDistance:I

    .line 137
    .line 138
    int-to-float v5, v5

    .line 139
    div-float/2addr v5, v0

    .line 140
    iget v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->minSlideDistanceDp:I

    .line 141
    .line 142
    int-to-float v0, v0

    .line 143
    cmpl-float v0, v5, v0

    .line 144
    .line 145
    if-ltz v0, :cond_5

    .line 146
    .line 147
    move v0, v1

    .line 148
    move v1, v2

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    move v0, v1

    .line 151
    :goto_1
    if-nez v4, :cond_6

    .line 152
    .line 153
    invoke-direct {p0, p1, v3}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->forwardEventToUnderlying(Landroid/view/MotionEvent;I)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->forwardEventToUnderlying(Landroid/view/MotionEvent;I)V

    .line 158
    .line 159
    .line 160
    :goto_2
    if-eqz v4, :cond_7

    .line 161
    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    :cond_7
    iget-object v3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->clickListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;

    .line 165
    .line 166
    if-eqz v3, :cond_8

    .line 167
    .line 168
    iget v3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downX:F

    .line 169
    .line 170
    iget v4, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downY:F

    .line 171
    .line 172
    invoke-direct {p0, v3, v4}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->toAdContainerCoords(FF)[F

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-direct {p0, v4, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->toAdContainerCoords(FF)[F

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide v11

    .line 192
    new-instance v4, Lcom/meishu/sdk/core/view/TouchPoint;

    .line 193
    .line 194
    iget v5, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawX:F

    .line 195
    .line 196
    iget v6, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawY:F

    .line 197
    .line 198
    iget-wide v7, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downEventTime:J

    .line 199
    .line 200
    iget v9, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawX:F

    .line 201
    .line 202
    iget v10, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawY:F

    .line 203
    .line 204
    invoke-direct/range {v4 .. v12}, Lcom/meishu/sdk/core/view/TouchPoint;-><init>(FFJFFJ)V

    .line 205
    .line 206
    .line 207
    move-object v13, v4

    .line 208
    move-object v4, v3

    .line 209
    move-object v3, v13

    .line 210
    move-object v5, v4

    .line 211
    new-instance v4, Lcom/meishu/sdk/core/view/TouchPoint;

    .line 212
    .line 213
    move-object v6, v5

    .line 214
    aget v5, v6, v0

    .line 215
    .line 216
    aget v6, v6, v2

    .line 217
    .line 218
    iget-wide v7, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downEventTime:J

    .line 219
    .line 220
    aget v9, p1, v0

    .line 221
    .line 222
    aget v10, p1, v2

    .line 223
    .line 224
    invoke-direct/range {v4 .. v12}, Lcom/meishu/sdk/core/view/TouchPoint;-><init>(FFJFFJ)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->clickListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;

    .line 228
    .line 229
    iget-boolean v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downInAdArea:Z

    .line 230
    .line 231
    iget v5, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideScrollDistance:I

    .line 232
    .line 233
    iget-object v6, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->overlayUniqueId:Ljava/lang/String;

    .line 234
    .line 235
    invoke-interface/range {v0 .. v6}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;->onOverlayClick(ZZLcom/meishu/sdk/core/view/TouchPoint;Lcom/meishu/sdk/core/view/TouchPoint;ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_8
    iget-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->invalidityChecker:Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;

    .line 240
    .line 241
    if-eqz p1, :cond_9

    .line 242
    .line 243
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->overlayUniqueId:Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;->onInvalid(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :cond_9
    :goto_3
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->interceptAllEvents:Z

    .line 249
    .line 250
    return p1

    .line 251
    :cond_a
    move v0, v1

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    iput v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawX:F

    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    iput v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawY:F

    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    iput v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downX:F

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    iput v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downY:F

    .line 275
    .line 276
    iget v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawX:F

    .line 277
    .line 278
    iput v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawX:F

    .line 279
    .line 280
    iget v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawY:F

    .line 281
    .line 282
    iput v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->upRawY:F

    .line 283
    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 285
    .line 286
    .line 287
    move-result-wide v3

    .line 288
    iput-wide v3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downEventTime:J

    .line 289
    .line 290
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->isSliding:Z

    .line 291
    .line 292
    iput v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideScrollDistance:I

    .line 293
    .line 294
    const/4 v1, 0x0

    .line 295
    iput-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slidingTargetRef:Ljava/lang/ref/WeakReference;

    .line 296
    .line 297
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Landroid/view/View;

    .line 304
    .line 305
    iget v3, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawX:F

    .line 306
    .line 307
    iget v4, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downRawY:F

    .line 308
    .line 309
    invoke-static {v1, v3, v4}, Lcom/meishu/sdk/core/utils/t1;->a(Landroid/view/View;FF)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    iput-boolean v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->downInAdArea:Z

    .line 314
    .line 315
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->forwardEventToUnderlying(Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .line 317
    .line 318
    return v2

    .line 319
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 320
    .line 321
    .line 322
    :goto_5
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->interceptAllEvents:Z

    .line 323
    .line 324
    return p1
.end method

.method public releaseAdContainerRef()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x4

    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public requestPositionUpdate()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->contentViewRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->updatePosition(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setAttachListener(Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->attachListener:Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;

    .line 2
    .line 3
    return-void
.end method

.method public setExtendRatios(IIII)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    .line 4
    div-float/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendUpRatio:F

    .line 6
    .line 7
    int-to-float p1, p2

    .line 8
    div-float/2addr p1, v0

    .line 9
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendDownRatio:F

    .line 10
    .line 11
    int-to-float p1, p3

    .line 12
    div-float/2addr p1, v0

    .line 13
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendLeftRatio:F

    .line 14
    .line 15
    int-to-float p1, p4

    .line 16
    div-float/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->extendRightRatio:F

    .line 18
    .line 19
    return-void
.end method

.method public setInvalidityChecker(Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->invalidityChecker:Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMinSlideDistanceDp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->minSlideDistanceDp:I

    .line 2
    .line 3
    return-void
.end method

.method public setOverlayUniqueId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->overlayUniqueId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSlideClickEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->slideClickEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public updateAdContainer(Landroid/view/View;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->scrollChangedListener:Lcom/meishu/sdk/core/safe/j;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_2
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->layoutChangeListener:Lcom/meishu/sdk/core/safe/i;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :catch_3
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_3
    return-void
.end method
