.class final Lcom/kwad/components/ad/splashscreen/presenter/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/q;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 7

    .line 1
    sub-float v0, p3, p1

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 5
    .line 6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sub-float v4, p4, p2

    .line 11
    .line 12
    float-to-double v4, v4

    .line 13
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-double/2addr v0, v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/kwad/components/ad/splashscreen/presenter/q;->mS()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    double-to-float v0, v0

    .line 29
    invoke-static {v2, v0}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 39
    .line 40
    invoke-static {v1, p1, p2, p3, p4}, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;FFFF)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 47
    .line 48
    iget-object v1, p1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->mS()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-instance v6, Lcom/kwad/components/ad/splashscreen/presenter/q$1$1;

    .line 57
    .line 58
    invoke-direct {v6, p0, v0}, Lcom/kwad/components/ad/splashscreen/presenter/q$1$1;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/q$1;F)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    const/16 v4, 0x99

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-virtual/range {v1 .. v6}, Lcom/kwad/components/ad/splashscreen/h;->a(ILandroid/content/Context;IILcom/kwad/components/ad/splashscreen/h$a;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/q;->b(Lcom/kwad/components/ad/splashscreen/presenter/q;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/q;->c(Lcom/kwad/components/ad/splashscreen/presenter/q;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->d(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-float/2addr v0, v1

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->e(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-float/2addr p1, v1

    .line 39
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->f(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    cmpl-float v1, v0, v1

    .line 46
    .line 47
    if-ltz v1, :cond_0

    .line 48
    .line 49
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->f(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/kwad/components/ad/splashscreen/presenter/q;->g(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-float/2addr v1, v2

    .line 62
    cmpg-float v0, v0, v1

    .line 63
    .line 64
    if-gtz v0, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/q;->h(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    cmpl-float v0, p1, v0

    .line 73
    .line 74
    if-ltz v0, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/q;->h(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->i(Lcom/kwad/components/ad/splashscreen/presenter/q;)F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-float/2addr v0, v1

    .line 89
    cmpg-float p1, p1, v0

    .line 90
    .line 91
    if-gtz p1, :cond_0

    .line 92
    .line 93
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->j(Lcom/kwad/components/ad/splashscreen/presenter/q;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->k(Lcom/kwad/components/ad/splashscreen/presenter/q;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/h;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_1

    .line 110
    .line 111
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/q$1;->Jb:Lcom/kwad/components/ad/splashscreen/presenter/q;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/q;->l(Lcom/kwad/components/ad/splashscreen/presenter/q;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void
.end method
