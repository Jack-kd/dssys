.class public final Lcom/kwad/components/ad/reward/presenter/r;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/reward/e/g;
.implements Lcom/kwad/components/ad/reward/e/j;
.implements Lcom/kwad/components/core/webview/jshandler/as$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/reward/presenter/r$a;
    }
.end annotation


# instance fields
.field private kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

.field private wW:F

.field private xl:Z

.field private xm:Lcom/kwad/components/ad/reward/presenter/r$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private xn:Lcom/kwad/components/ad/reward/presenter/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private xo:Lcom/kwad/components/ad/reward/presenter/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private xp:Lcom/kwad/components/ad/reward/presenter/p;

.field private xq:I

.field private xr:Z

.field private xs:Z

.field private xt:Z


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0, v0}, Lcom/kwad/components/ad/reward/presenter/r;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xq:I

    .line 3
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xr:Z

    .line 4
    iput-boolean p2, p0, Lcom/kwad/components/ad/reward/presenter/r;->xs:Z

    .line 5
    iput-boolean p3, p0, Lcom/kwad/components/ad/reward/presenter/r;->xt:Z

    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bQ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lcom/kwad/components/ad/reward/presenter/p;

    invoke-direct {p1}, Lcom/kwad/components/ad/reward/presenter/p;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xp:Lcom/kwad/components/ad/reward/presenter/p;

    .line 9
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/kwad/components/ad/reward/e/g;)I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/kwad/components/ad/reward/presenter/r;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/kwad/components/ad/reward/e/g;->getPriority()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/r;->jb()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/r;JJZ)V
    .locals 0

    const/4 p5, 0x0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/kwad/components/ad/reward/presenter/r;->b(JJZ)V

    return-void
.end method

.method private b(JJZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/r;->jc()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-wide/16 v0, 0x2710

    .line 8
    .line 9
    cmp-long v0, p3, v0

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    long-to-float p3, p3

    .line 14
    long-to-float p1, p1

    .line 15
    iget p2, p0, Lcom/kwad/components/ad/reward/presenter/r;->wW:F

    .line 16
    .line 17
    mul-float/2addr p1, p2

    .line 18
    cmpl-float p1, p3, p1

    .line 19
    .line 20
    if-ltz p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/components/ad/reward/a/b;->hT()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xr:Z

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xn:Lcom/kwad/components/ad/reward/presenter/q;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/presenter/q;->iX()V

    .line 38
    .line 39
    .line 40
    iput p2, p0, Lcom/kwad/components/ad/reward/presenter/r;->xq:I

    .line 41
    .line 42
    iput-boolean p2, p0, Lcom/kwad/components/ad/reward/presenter/r;->xr:Z

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xo:Lcom/kwad/components/ad/reward/presenter/o;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    xor-int/2addr p2, p5

    .line 50
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/reward/presenter/o;->J(Z)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    iput p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xq:I

    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method private dn()Lcom/kwad/components/core/webview/tachikoma/f/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/r$2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/r$2;-><init>(Lcom/kwad/components/ad/reward/presenter/r;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 13
    .line 14
    return-object v0
.end method

.method private jb()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xt:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/q;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/q;-><init>(Lcom/kwad/components/ad/reward/presenter/r;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xn:Lcom/kwad/components/ad/reward/presenter/q;

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xs:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/o;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/o;-><init>(Lcom/kwad/components/ad/reward/presenter/r;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xo:Lcom/kwad/components/ad/reward/presenter/o;

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private jc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xl:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/playable/PlayableSource;Lcom/kwad/components/ad/reward/e/n;)V
    .locals 0
    .param p2    # Lcom/kwad/components/ad/reward/e/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/reward/g;->A(Z)V

    .line 9
    iget p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xq:I

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/r;->xn:Lcom/kwad/components/ad/reward/presenter/q;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/presenter/q;->iY()V

    return-void

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 11
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xo:Lcom/kwad/components/ad/reward/presenter/o;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/presenter/o;->hide()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/as$a;)V
    .locals 6

    .line 3
    invoke-virtual {p1}, Lcom/kwad/components/core/webview/jshandler/as$a;->isSuccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xl:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xm:Lcom/kwad/components/ad/reward/presenter/r$a;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/r$a;->a(Lcom/kwad/components/ad/reward/presenter/r$a;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xm:Lcom/kwad/components/ad/reward/presenter/r$a;

    .line 6
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/r$a;->b(Lcom/kwad/components/ad/reward/presenter/r$a;)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/kwad/components/ad/reward/presenter/r;->b(JJZ)V

    :cond_0
    return-void
.end method

.method public final ay()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bQ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/kwad/components/ad/reward/g;->sP:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/r$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/r$1;-><init>(Lcom/kwad/components/ad/reward/presenter/r;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v1, 0x64

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/r;->dn()Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bU(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/p/a;->be(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/reward/g;->b(Lcom/kwad/components/ad/reward/e/g;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sA:Lcom/kwad/components/core/playable/a;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/playable/a;->a(Lcom/kwad/components/core/webview/jshandler/as$b;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-static {}, Lcom/kwad/components/ad/reward/a/b;->hS()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {}, Lcom/kwad/components/ad/reward/a/b;->hR()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput v1, p0, Lcom/kwad/components/ad/reward/presenter/r;->wW:F

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/r$a;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v0, p0, v1}, Lcom/kwad/components/ad/reward/presenter/r$a;-><init>(Lcom/kwad/components/ad/reward/presenter/r;B)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xm:Lcom/kwad/components/ad/reward/presenter/r$a;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/reward/m/e;->a(Lcom/kwad/components/core/video/m;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-static {}, Lcom/kwad/components/ad/reward/a;->gs()Lcom/kwad/components/ad/reward/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/reward/a;->a(Lcom/kwad/components/ad/reward/e/j;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/ad/reward/e/g;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/presenter/r;->a(Lcom/kwad/components/ad/reward/e/g;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sB:Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/RewardActionBarControl;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/RewardActionBarControl;->jD()Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/RewardActionBarControl$ShowActionBarResult;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/RewardActionBarControl$ShowActionBarResult;->SHOW_NATIVE_PLAYABLE_PORTRAIT:Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/RewardActionBarControl$ShowActionBarResult;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xp:Lcom/kwad/components/ad/reward/presenter/p;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->hc()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/r;->jc()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xp:Lcom/kwad/components/ad/reward/presenter/p;

    .line 36
    .line 37
    sget-object v1, Lcom/kwad/components/core/playable/PlayableSource;->PLAY_FINISHED_NORMAL:Lcom/kwad/components/core/playable/PlayableSource;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/presenter/p;->e(Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xp:Lcom/kwad/components/ad/reward/presenter/p;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/p;->iW()V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public final dq()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->A(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xm:Lcom/kwad/components/ad/reward/presenter/r$a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/kwad/components/ad/reward/presenter/r;->xq:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/r$a;->a(Lcom/kwad/components/ad/reward/presenter/r$a;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xm:Lcom/kwad/components/ad/reward/presenter/r$a;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/r$a;->b(Lcom/kwad/components/ad/reward/presenter/r$a;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    const/4 v8, 0x1

    .line 27
    move-object v3, p0

    .line 28
    invoke-direct/range {v3 .. v8}, Lcom/kwad/components/ad/reward/presenter/r;->b(JJZ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final dr()V
    .locals 0

    return-void
.end method

.method public final getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onBackPressed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->hg()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/kwad/components/ad/reward/g;->gS()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-static {}, Lcom/kwad/components/ad/reward/a;->gs()Lcom/kwad/components/ad/reward/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/a;->gt()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/kwad/components/ad/reward/g;->A(Z)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_1
    return v2
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/reward/g;->c(Lcom/kwad/components/ad/reward/e/g;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sA:Lcom/kwad/components/core/playable/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/playable/a;->b(Lcom/kwad/components/core/webview/jshandler/as$b;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/r;->xm:Lcom/kwad/components/ad/reward/presenter/r$a;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/reward/m/e;->b(Lcom/kwad/components/core/video/m;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {}, Lcom/kwad/components/ad/reward/a;->gs()Lcom/kwad/components/ad/reward/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/reward/a;->b(Lcom/kwad/components/ad/reward/e/j;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/r;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->b(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
