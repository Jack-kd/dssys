.class public final Lcom/kwad/components/ad/fullscreen/c/b;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/reward/e/g;
.implements Lcom/kwad/components/core/e/e/f;


# instance fields
.field private ki:Lcom/kwad/components/ad/fullscreen/b;

.field private kj:Lcom/kwad/components/core/n/b;

.field private kk:Lcom/kwad/components/ad/reward/presenter/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private kl:Landroid/widget/FrameLayout;

.field private km:Lcom/kwad/components/ad/reward/presenter/f/b;

.field private kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

.field private ko:Lcom/kwad/components/ad/reward/presenter/e/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private kp:Lcom/kwad/components/ad/reward/presenter/f/f;

.field private kq:Z

.field private mRootContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/n/b;Landroid/view/ViewGroup;Lcom/kwad/components/ad/fullscreen/b;Lcom/kwad/components/ad/reward/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kq:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kj:Lcom/kwad/components/core/n/b;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/kwad/components/ad/fullscreen/c/b;->mRootContainer:Landroid/view/ViewGroup;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dh()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private a(Lcom/kwad/components/ad/reward/e/g;)I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/kwad/components/ad/reward/e/g;->getPriority()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private a(Lcom/kwad/components/ad/fullscreen/c/b;)V
    .locals 2

    .line 10
    iget-boolean v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kq:Z

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/a;

    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-direct {v0, v1}, Lcom/kwad/components/ad/reward/presenter/a;-><init>(Lcom/kwad/components/ad/reward/g;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 12
    iput-boolean v1, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kq:Z

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/fullscreen/c/b;Lcom/kwad/components/ad/fullscreen/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/fullscreen/c/b;->a(Lcom/kwad/components/ad/fullscreen/c/b;)V

    return-void
.end method

.method private static a(Lcom/kwad/components/ad/reward/g;)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->JM()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    sget-object v0, Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;->SWITCH_CLOSE:Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;

    invoke-static {p0, v0}, Lcom/kwad/components/ad/reward/monitor/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dV(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$FullScreenInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$BaseMatrixTemplate;->renderType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    sget-object v0, Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;->TK_FILE_LOAD_ERROR:Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;

    invoke-static {p0, v0}, Lcom/kwad/components/ad/reward/monitor/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/webview/tachikoma/TKRenderFailReason;)V

    return v1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private dh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dm()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kwad/components/ad/fullscreen/b;->da()Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->dj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->eM(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 26
    .line 27
    sget-object v1, Lcom/kwad/components/ad/reward/RewardRenderResult;->LIVE_TK:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dn()Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dj()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dn()Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 61
    .line 62
    sget-object v1, Lcom/kwad/components/ad/reward/RewardRenderResult;->TK_IMAGE:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dk()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/kwad/components/ad/fullscreen/c/b;->a(Lcom/kwad/components/ad/reward/g;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 80
    .line 81
    sget-object v1, Lcom/kwad/components/ad/reward/RewardRenderResult;->FULLSCREEN_TK:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dl()V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->dn()Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->a(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 102
    .line 103
    sget-object v1, Lcom/kwad/components/ad/reward/RewardRenderResult;->DEFAULT:Lcom/kwad/components/ad/reward/RewardRenderResult;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/ad/reward/RewardRenderResult;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->di()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private di()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->b(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/kwad/components/core/e/e/g;->qK()Lcom/kwad/components/core/e/e/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/e/e/g;->a(Lcom/kwad/components/core/e/e/f;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/kwad/components/ad/fullscreen/b;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/kwad/components/ad/fullscreen/b;->da()Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/kwad/components/ad/fullscreen/b;->db()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lcom/kwad/sdk/utils/as;->isOrientationPortrait()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v2, v3

    .line 48
    :goto_0
    iget-object v5, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 49
    .line 50
    iget-boolean v5, v5, Lcom/kwad/components/ad/fullscreen/b;->jM:Z

    .line 51
    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    invoke-direct {p0, p0}, Lcom/kwad/components/ad/fullscreen/c/b;->a(Lcom/kwad/components/ad/fullscreen/c/b;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    new-instance v5, Lcom/kwad/components/ad/reward/presenter/v;

    .line 58
    .line 59
    invoke-direct {v5}, Lcom/kwad/components/ad/reward/presenter/v;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v5, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aV(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    new-instance v5, Lcom/kwad/components/ad/reward/presenter/d;

    .line 72
    .line 73
    invoke-direct {v5}, Lcom/kwad/components/ad/reward/presenter/d;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v5, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 77
    .line 78
    .line 79
    :cond_2
    new-instance v5, Lcom/kwad/components/ad/reward/presenter/m;

    .line 80
    .line 81
    invoke-direct {v5}, Lcom/kwad/components/ad/reward/presenter/m;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v5, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Lcom/kwad/components/ad/reward/presenter/platdetail/c;

    .line 88
    .line 89
    invoke-direct {v5}, Lcom/kwad/components/ad/reward/presenter/platdetail/c;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v5, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dN(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_3

    .line 100
    .line 101
    new-instance v5, Lcom/kwad/components/ad/reward/presenter/f/h;

    .line 102
    .line 103
    invoke-direct {v5}, Lcom/kwad/components/ad/reward/presenter/f/h;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v5, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 107
    .line 108
    .line 109
    :cond_3
    if-nez v2, :cond_4

    .line 110
    .line 111
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/c;

    .line 112
    .line 113
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/platdetail/actionbar/c;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 117
    .line 118
    .line 119
    :cond_4
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/c/a;

    .line 120
    .line 121
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/c/a;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ea(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    new-instance v2, Lcom/kwad/components/ad/fullscreen/c/a/f;

    .line 134
    .line 135
    invoke-direct {v2}, Lcom/kwad/components/ad/fullscreen/c/a/f;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/platdetail/b;

    .line 148
    .line 149
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/platdetail/b;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 153
    .line 154
    .line 155
    :cond_6
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/l;

    .line 156
    .line 157
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/l;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/b/c;

    .line 170
    .line 171
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/b/c;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 175
    .line 176
    .line 177
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/b/b;

    .line 178
    .line 179
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/b/b;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 183
    .line 184
    .line 185
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/k;

    .line 186
    .line 187
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/k;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/b/a;

    .line 194
    .line 195
    invoke-direct {v2}, Lcom/kwad/components/ad/reward/presenter/b/a;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 199
    .line 200
    .line 201
    :cond_7
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/r;

    .line 202
    .line 203
    invoke-direct {v2, v0, v3, v3}, Lcom/kwad/components/ad/reward/presenter/r;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ZZ)V

    .line 204
    .line 205
    .line 206
    iput-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kk:Lcom/kwad/components/ad/reward/presenter/r;

    .line 207
    .line 208
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 209
    .line 210
    .line 211
    new-instance v2, Lcom/kwad/components/ad/fullscreen/c/c;

    .line 212
    .line 213
    invoke-direct {v2}, Lcom/kwad/components/ad/fullscreen/c/c;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 217
    .line 218
    .line 219
    new-instance v2, Lcom/kwad/components/ad/fullscreen/c/a;

    .line 220
    .line 221
    invoke-direct {v2}, Lcom/kwad/components/ad/fullscreen/c/a;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Lcom/kwad/components/ad/reward/presenter/d/b;

    .line 228
    .line 229
    invoke-direct {v2, v0, v3}, Lcom/kwad/components/ad/reward/presenter/d/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v2, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/e;

    .line 236
    .line 237
    iget-object v2, p0, Lcom/kwad/components/ad/fullscreen/c/b;->mRootContainer:Landroid/view/ViewGroup;

    .line 238
    .line 239
    invoke-direct {v0, v1, v2}, Lcom/kwad/components/ad/reward/presenter/e;-><init>(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/view/ViewGroup;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v0, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/j;

    .line 246
    .line 247
    invoke-direct {v0}, Lcom/kwad/components/ad/reward/presenter/j;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v0, v4}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 251
    .line 252
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 254
    .line 255
    iget-wide v1, v0, Lcom/kwad/components/ad/reward/g;->mStartRenderTime:J

    .line 256
    .line 257
    const-wide/16 v5, 0x0

    .line 258
    .line 259
    cmp-long v1, v1, v5

    .line 260
    .line 261
    if-lez v1, :cond_8

    .line 262
    .line 263
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 264
    .line 265
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 270
    .line 271
    .line 272
    move-result-wide v1

    .line 273
    iget-object v3, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 274
    .line 275
    iget-wide v5, v3, Lcom/kwad/components/ad/reward/g;->mStartRenderTime:J

    .line 276
    .line 277
    sub-long/2addr v1, v5

    .line 278
    invoke-static {v0, v4, v1, v2}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    goto :goto_1

    .line 284
    :cond_8
    return-void

    .line 285
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method private dj()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/fullscreen/c/c/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/fullscreen/c/c/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->km:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private dk()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/fullscreen/c/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/fullscreen/c/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kp:Lcom/kwad/components/ad/reward/presenter/f/f;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private dl()V
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/ad/fullscreen/c/c/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/fullscreen/c/c/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private dm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/ad/fullscreen/b;->da()Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ki:Lcom/kwad/components/ad/fullscreen/b;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/kwad/components/ad/fullscreen/b;->jM:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p0}, Lcom/kwad/components/ad/fullscreen/c/b;->a(Lcom/kwad/components/ad/fullscreen/c/b;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->eJ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/sdk/utils/as;->isOrientationPortrait()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/e/a;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/kwad/components/ad/reward/presenter/e/a;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ko:Lcom/kwad/components/ad/reward/presenter/e/a;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private dn()Lcom/kwad/components/core/webview/tachikoma/f/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/ad/fullscreen/c/b$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/fullscreen/c/b$1;-><init>(Lcom/kwad/components/ad/fullscreen/c/b;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 13
    .line 14
    return-object v0
.end method

.method private do()Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kl:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->mRootContainer:Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget v1, Lcom/kwad/sdk/R$id;->ksad_reward_play_layout:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kl:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kl:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    return-object v0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/fullscreen/c/b;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/fullscreen/c/b;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->do()Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/fullscreen/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/fullscreen/c/b;->di()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/kwad/components/ad/fullscreen/c/b;)Lcom/kwad/components/ad/reward/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final ay()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kwad/components/ad/reward/g;->b(Lcom/kwad/components/ad/reward/e/g;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/ad/reward/e/g;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/fullscreen/c/b;->a(Lcom/kwad/components/ad/reward/e/g;)I

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
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->D(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->E(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->gP()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onBackPressed()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kk:Lcom/kwad/components/ad/reward/presenter/r;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/r;->onBackPressed()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->ko:Lcom/kwad/components/ad/reward/presenter/e/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/e/a;->hJ()Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lcom/kwad/components/ad/reward/page/BackPressHandleResult;->HANDLED:Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->km:Lcom/kwad/components/ad/reward/presenter/f/b;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/presenter/f/b;->hJ()Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v3, Lcom/kwad/components/ad/reward/page/BackPressHandleResult;->HANDLED:Lcom/kwad/components/ad/reward/page/BackPressHandleResult;

    .line 36
    .line 37
    if-ne v0, v3, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    return v2
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->mRootContainer:Landroid/view/ViewGroup;

    .line 5
    .line 6
    sget v1, Lcom/kwad/sdk/R$id;->ksad_reward_play_layout:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kl:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    return-void
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
    invoke-static {}, Lcom/kwad/components/core/e/e/g;->qK()Lcom/kwad/components/core/e/e/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/e/e/g;->b(Lcom/kwad/components/core/e/e/f;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/c;->zG()Lcom/kwad/components/core/webview/tachikoma/e/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/kwad/components/ad/fullscreen/c/b;->kn:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/webview/tachikoma/e/c;->b(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->gQ()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->E(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
