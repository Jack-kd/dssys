.class public Lcom/kwad/components/core/video/DetailVideoView;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/video/DetailVideoView$a;
    }
.end annotation


# instance fields
.field public amY:Lcom/kwad/components/core/page/widget/b;

.field private amZ:Lcom/kwad/components/core/video/b;

.field private ana:Landroid/graphics/SurfaceTexture;

.field private anb:Landroid/widget/TextView;

.field public anc:Landroid/view/Surface;

.field private and:Lcom/kwad/components/core/video/DetailVideoView$a;

.field private ane:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

.field private anf:Z

.field private final ang:Landroid/graphics/RectF;

.field private anh:I

.field private ani:I

.field private anj:J

.field private final ank:Lcom/kwad/components/core/video/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anf:Z

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/kwad/components/core/video/DetailVideoView;->ang:Landroid/graphics/RectF;

    .line 4
    iput v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anh:I

    .line 5
    iput v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ani:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anj:J

    .line 7
    new-instance v0, Lcom/kwad/components/core/video/d;

    invoke-direct {v0}, Lcom/kwad/components/core/video/d;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 8
    invoke-direct {p0, p1}, Lcom/kwad/components/core/video/DetailVideoView;->B(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/kwad/components/core/video/DetailVideoView;->anf:Z

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ang:Landroid/graphics/RectF;

    .line 12
    iput p2, p0, Lcom/kwad/components/core/video/DetailVideoView;->anh:I

    .line 13
    iput p2, p0, Lcom/kwad/components/core/video/DetailVideoView;->ani:I

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anj:J

    .line 15
    new-instance p2, Lcom/kwad/components/core/video/d;

    invoke-direct {p2}, Lcom/kwad/components/core/video/d;-><init>()V

    iput-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 16
    invoke-direct {p0, p1}, Lcom/kwad/components/core/video/DetailVideoView;->B(Landroid/content/Context;)V

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->mMatrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    new-instance v0, Lcom/kwad/components/core/page/widget/b;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/kwad/components/core/page/widget/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 14
    .line 15
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    invoke-direct {p1, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/kwad/components/core/video/DetailVideoView;->xu()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/video/DetailVideoView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->anj:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/video/DetailVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->ana:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method private a(Landroid/view/View;JJ)V
    .locals 3

    if-eqz p1, :cond_6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_6

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v1, :cond_6

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    int-to-float p3, v0

    mul-float/2addr p3, p2

    int-to-float p4, v1

    cmpl-float p5, p3, p4

    if-lez p5, :cond_3

    div-float/2addr p4, p2

    float-to-int v0, p4

    goto :goto_0

    :cond_3
    float-to-int v1, p3

    :goto_0
    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, -0x1

    move v1, v0

    .line 7
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 8
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    iget-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/core/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ana:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/video/DetailVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/video/DetailVideoView;->xv()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amZ:Lcom/kwad/components/core/video/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/video/DetailVideoView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private xu()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anf:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 14
    .line 15
    new-instance v1, Lcom/kwad/components/core/video/DetailVideoView$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/kwad/components/core/video/DetailVideoView$1;-><init>(Lcom/kwad/components/core/video/DetailVideoView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private xv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anc:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anc:Landroid/view/Surface;

    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 8

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 13
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->Z(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v4

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    float-to-int p1, v0

    .line 16
    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 18
    new-instance v2, Lcom/kwad/components/core/video/DetailVideoView$2;

    move-object v3, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/kwad/components/core/video/DetailVideoView$2;-><init>(Lcom/kwad/components/core/video/DetailVideoView;ZFLandroid/view/ViewGroup$LayoutParams;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const p2, 0x3f147ae1    # 0.58f

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 19
    invoke-static {v0, v0, p2, p3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public final adaptVideoSize(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "DetailVideoView"

    .line 6
    .line 7
    const-string p2, "adaptVideoSize mTextureView is null"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput p2, p0, Lcom/kwad/components/core/video/DetailVideoView;->ani:I

    .line 14
    .line 15
    iput p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->anh:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/kwad/components/core/video/d;->xw()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/kwad/components/core/video/d;->xx()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/kwad/components/core/video/VideoAdapters$b;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/kwad/components/core/video/VideoAdapters$b;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Lcom/kwad/components/core/video/VideoAdapters$c;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/kwad/components/core/video/VideoAdapters$c;-><init>()V

    .line 48
    .line 49
    .line 50
    :goto_0
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/view/View;

    .line 59
    .line 60
    invoke-interface {v0, v1, v2, p1, p2}, Lcom/kwad/components/core/video/c;->a(Landroid/view/View;Landroid/view/View;II)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    move-object v1, p0

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_4
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/kwad/components/core/video/d;->xC()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/kwad/sdk/c/a/a;->K(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/kwad/components/core/video/d;->xy()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 90
    .line 91
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/c/a/a;->e(Landroid/view/View;II)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/kwad/components/core/video/d;->xA()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 104
    .line 105
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/c/a/a;->f(Landroid/view/View;II)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_7
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/kwad/components/core/video/d;->xz()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 118
    .line 119
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/c/a/a;->d(Landroid/view/View;II)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_8
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/kwad/components/core/video/d;->xB()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    iget-object v2, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 132
    .line 133
    int-to-long v3, p1

    .line 134
    int-to-long v5, p2

    .line 135
    move-object v1, p0

    .line 136
    invoke-direct/range {v1 .. v6}, Lcom/kwad/components/core/video/DetailVideoView;->a(Landroid/view/View;JJ)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_9
    move-object v1, p0

    .line 141
    iget-object v0, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/view/View;

    .line 148
    .line 149
    if-nez v0, :cond_a

    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v2, :cond_d

    .line 162
    .line 163
    if-nez v0, :cond_b

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_b
    iget-object v3, v1, Lcom/kwad/components/core/video/DetailVideoView;->ane:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    .line 167
    .line 168
    if-eqz v3, :cond_c

    .line 169
    .line 170
    iget-object v4, v1, Lcom/kwad/components/core/video/DetailVideoView;->mMatrix:Landroid/graphics/Matrix;

    .line 171
    .line 172
    invoke-static {v4, v2, v0, v3}, Lcom/kwad/sdk/core/response/helper/h;->a(Landroid/graphics/Matrix;IILcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    iget-object p1, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    const/4 p2, -0x1

    .line 185
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    .line 187
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    .line 189
    iget-object p2, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 190
    .line 191
    iget-object v0, v1, Lcom/kwad/components/core/video/DetailVideoView;->mMatrix:Landroid/graphics/Matrix;

    .line 192
    .line 193
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 194
    .line 195
    .line 196
    iget-object p2, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 197
    .line 198
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_c
    iget-object v0, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 209
    .line 210
    int-to-float p2, p2

    .line 211
    int-to-float p1, p1

    .line 212
    const/high16 v3, 0x3f800000    # 1.0f

    .line 213
    .line 214
    mul-float/2addr p1, v3

    .line 215
    div-float/2addr p2, p1

    .line 216
    int-to-float p1, v2

    .line 217
    mul-float/2addr p2, p1

    .line 218
    float-to-int p1, p2

    .line 219
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    .line 221
    iget-object p1, v1, Lcom/kwad/components/core/video/DetailVideoView;->mMatrix:Landroid/graphics/Matrix;

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 224
    .line 225
    .line 226
    iget-object p1, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 227
    .line 228
    iget-object p2, v1, Lcom/kwad/components/core/video/DetailVideoView;->mMatrix:Landroid/graphics/Matrix;

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    :goto_1
    iget-object p1, v1, Lcom/kwad/components/core/video/DetailVideoView;->ang:Landroid/graphics/RectF;

    .line 239
    .line 240
    iget-object p2, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    int-to-float p2, p2

    .line 247
    iget-object v0, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    int-to-float v0, v0

    .line 254
    iget-object v2, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 255
    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    int-to-float v2, v2

    .line 261
    iget-object v3, v1, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    int-to-float v3, v3

    .line 268
    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 269
    .line 270
    .line 271
    :cond_d
    :goto_2
    return-void
.end method

.method public final ca(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/components/core/a;->pe:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anb:Landroid/widget/TextView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anb:Landroid/widget/TextView;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anb:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anb:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->anb:Landroid/widget/TextView;

    .line 45
    .line 46
    const/high16 v0, -0x10000

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .line 53
    const/4 v0, -0x2

    .line 54
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x35

    .line 58
    .line 59
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anb:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p0, v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public final fixWidth(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/video/d;->bh(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(ZI)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/video/d;->setAd(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/video/d;->cb(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getTextureViewGravity()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    .line 18
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->and:Lcom/kwad/components/core/video/DetailVideoView$a;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/kwad/components/core/video/DetailVideoView$a;->onClickVideoView()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->and:Lcom/kwad/components/core/video/DetailVideoView$a;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/kwad/components/core/video/DetailVideoView$a;->onClickRootView()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kwad/components/core/video/DetailVideoView;->xv()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ana:Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ana:Landroid/graphics/SurfaceTexture;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/sdk/widget/KSFrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->anh:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    iget p2, p0, Lcom/kwad/components/core/video/DetailVideoView;->ani:I

    .line 9
    .line 10
    if-lez p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/kwad/components/core/video/DetailVideoView;->adaptVideoSize(II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setAd(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/video/d;->setAd(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setClickListener(Lcom/kwad/components/core/video/DetailVideoView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->and:Lcom/kwad/components/core/video/DetailVideoView$a;

    .line 2
    .line 3
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFillXY(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/video/d;->setFillXY(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setForce(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/video/d;->setForce(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHorizontalVideo(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->ank:Lcom/kwad/components/core/video/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/video/d;->setHorizontalVideo(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIsAlphaVideoView(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->anf:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setMediaPlayer(Lcom/kwad/components/core/video/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->amZ:Lcom/kwad/components/core/video/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->anc:Landroid/view/Surface;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/video/b;->setSurface(Landroid/view/Surface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kwad/components/core/widget/h;->f(Landroid/view/View;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVideoInfo(Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->ane:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final updateTextureViewGravity(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView;->amY:Lcom/kwad/components/core/page/widget/b;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
