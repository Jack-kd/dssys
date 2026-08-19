.class final Lcom/kwad/components/ad/splashscreen/presenter/u$2;
.super Lcom/kwad/components/core/video/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/splashscreen/presenter/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private JA:Z

.field private JB:Ljava/lang/String;

.field final synthetic Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/video/m;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->JA:Z

    .line 8
    .line 9
    sget-object p1, Lcom/kwad/components/ad/splashscreen/b/a;->Hk:Lcom/kwad/sdk/core/config/item/s;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/s;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->JB:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onMediaPlayCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->JA:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kwad/components/ad/splashscreen/h;->mm()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->JA:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onMediaPlayError(II)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/kwad/components/ad/splashscreen/h;->GN:Lcom/kwad/components/ad/splashscreen/d/a;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/h;->GN:Lcom/kwad/components/ad/splashscreen/d/a;

    .line 25
    .line 26
    iget v3, v0, Lcom/kwad/components/ad/splashscreen/d/a;->HI:I

    .line 27
    .line 28
    iget-wide v4, v0, Lcom/kwad/components/ad/splashscreen/d/a;->KO:J

    .line 29
    .line 30
    sub-long v5, p1, v4

    .line 31
    .line 32
    iget-wide v7, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->showTime:J

    .line 33
    .line 34
    sub-long v7, p1, v7

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-static/range {v1 .. v8}, Lcom/kwad/components/ad/splashscreen/monitor/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;IIIJJ)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->g(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    const-string v0, "onMediaPlayError"

    .line 57
    .line 58
    invoke-virtual {p1, p2, v0}, Lcom/kwad/components/ad/splashscreen/h;->c(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final onMediaPlayPaused()V
    .locals 0

    return-void
.end method

.method public final onMediaPlayProgress(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 4
    .line 5
    long-to-int v1, p3

    .line 6
    div-int/lit16 v1, v1, 0x3e8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/splashscreen/h;->ax(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->d(Lcom/kwad/components/ad/splashscreen/presenter/u;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    .line 18
    .line 19
    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->videoDisplaySecond:I

    .line 20
    .line 21
    long-to-int p1, p1

    .line 22
    div-int/lit16 p1, p1, 0x3e8

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-object v6, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->JB:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->d(Lcom/kwad/components/ad/splashscreen/presenter/u;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->e(Lcom/kwad/components/ad/splashscreen/presenter/u;)Lcom/kwad/components/ad/splashscreen/widget/SkipView;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/u$2$1;

    .line 49
    .line 50
    move-object v2, p0

    .line 51
    move-wide v4, p3

    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/kwad/components/ad/splashscreen/presenter/u$2$1;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/u$2;IJLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v2, p0

    .line 60
    move-wide v4, p3

    .line 61
    :goto_0
    long-to-float p1, v4

    .line 62
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 63
    .line 64
    div-float/2addr p1, p2

    .line 65
    if-lez v3, :cond_1

    .line 66
    .line 67
    float-to-double p1, p1

    .line 68
    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    .line 69
    .line 70
    add-double/2addr p1, p3

    .line 71
    const/4 p3, 0x1

    .line 72
    sub-int/2addr v3, p3

    .line 73
    int-to-double v0, v3

    .line 74
    cmpl-double p1, p1, v0

    .line 75
    .line 76
    if-lez p1, :cond_1

    .line 77
    .line 78
    iget-boolean p1, v2, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->JA:Z

    .line 79
    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    iget-object p1, v2, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->d(Lcom/kwad/components/ad/splashscreen/presenter/u;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p1, p2}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    iget-object p1, v2, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/kwad/components/ad/splashscreen/h;->mm()V

    .line 99
    .line 100
    .line 101
    iput-boolean p3, v2, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->JA:Z

    .line 102
    .line 103
    :cond_1
    return-void
.end method

.method public final onMediaPlayStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/kwad/components/ad/splashscreen/h;->GN:Lcom/kwad/components/ad/splashscreen/d/a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->b(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/kwad/components/ad/splashscreen/d/a;->setAudioEnabled(ZZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onMediaPlaying()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->f(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/splashscreen/h;->ag(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/h;->GN:Lcom/kwad/components/ad/splashscreen/d/a;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/splashscreen/d/a;->ah(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/kwad/components/ad/splashscreen/h;->GN:Lcom/kwad/components/ad/splashscreen/d/a;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->b(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v2, v0, v1}, Lcom/kwad/components/ad/splashscreen/d/a;->setAudioEnabled(ZZ)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$2;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->b(Lcom/kwad/components/ad/splashscreen/presenter/u;Z)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final onVideoPlayBufferingPaused()V
    .locals 0

    return-void
.end method

.method public final onVideoPlayBufferingPlaying()V
    .locals 0

    return-void
.end method
