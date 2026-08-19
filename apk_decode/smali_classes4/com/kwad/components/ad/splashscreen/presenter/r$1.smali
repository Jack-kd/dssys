.class final Lcom/kwad/components/ad/splashscreen/presenter/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/r;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$1;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

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
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$1;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/kwad/components/ad/splashscreen/presenter/r;->a(Lcom/kwad/components/ad/splashscreen/presenter/r;)Landroid/content/Context;

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
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$1;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

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
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$1;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 47
    .line 48
    iget-object v1, p1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/r;->b(Lcom/kwad/components/ad/splashscreen/presenter/r;)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-instance v6, Lcom/kwad/components/ad/splashscreen/presenter/r$1$1;

    .line 57
    .line 58
    invoke-direct {v6, p0, v0}, Lcom/kwad/components/ad/splashscreen/presenter/r$1$1;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/r$1;F)V

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
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$1;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/r;->d(Lcom/kwad/components/ad/splashscreen/presenter/r;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/h;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/r$1;->Jf:Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/r;->e(Lcom/kwad/components/ad/splashscreen/presenter/r;)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 v1, 0x35

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/kwad/components/ad/splashscreen/h;->c(ILandroid/content/Context;II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
