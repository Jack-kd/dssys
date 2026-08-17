.class public final Lcom/kwad/components/core/video/VideoAdapters$c;
.super Lcom/kwad/components/core/video/VideoAdapters$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/video/VideoAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/video/VideoAdapters$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/video/VideoAdapters$AdaptType;Landroid/view/ViewGroup$LayoutParams;Lcom/kwad/components/core/video/VideoAdapters$d;Lcom/kwad/components/core/video/VideoAdapters$d;)V
    .locals 4
    .param p1    # Lcom/kwad/components/core/video/VideoAdapters$AdaptType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/components/core/video/VideoAdapters$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kwad/components/core/video/VideoAdapters$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xP()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p4}, Lcom/kwad/components/core/video/VideoAdapters$d;->xP()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v2, Lcom/kwad/components/core/video/VideoAdapters$1;->anJ:[I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget p1, v2, p1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/high16 v3, -0x31000000

    .line 19
    .line 20
    if-eq p1, v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    move p3, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xO()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    :goto_0
    div-float p3, p1, v1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    cmpl-float p1, v0, v1

    .line 42
    .line 43
    if-ltz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xO()F

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    mul-float p1, p3, v1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xN()F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :goto_1
    cmpl-float v0, p3, v3

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    cmpl-float v0, p1, v3

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p4}, Lcom/kwad/components/core/video/VideoAdapters$d;->getHeight()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p4}, Lcom/kwad/components/core/video/VideoAdapters$d;->getWidth()F

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    cmpl-float p4, v0, p4

    .line 74
    .line 75
    if-lez p4, :cond_3

    .line 76
    .line 77
    float-to-int p3, p3

    .line 78
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 79
    .line 80
    float-to-int p1, p1

    .line 81
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    float-to-int p3, p3

    .line 85
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    .line 87
    float-to-int p1, p1

    .line 88
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    .line 90
    :cond_4
    return-void
.end method
