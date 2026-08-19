.class public final Lcom/kwad/components/ad/reward/presenter/p;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"


# instance fields
.field private sA:Lcom/kwad/components/core/playable/a;

.field private xc:Lcom/kwad/components/core/playable/PlayableSource;

.field private final xd:Lcom/kwad/components/ad/reward/e/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/p$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/p$1;-><init>(Lcom/kwad/components/ad/reward/presenter/p;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->xd:Lcom/kwad/components/ad/reward/e/j;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/p;Lcom/kwad/components/core/playable/PlayableSource;)Lcom/kwad/components/core/playable/PlayableSource;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p;->xc:Lcom/kwad/components/core/playable/PlayableSource;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/p;)Lcom/kwad/components/core/playable/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    return-object p0
.end method


# virtual methods
.method public final ay()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/kwad/components/ad/reward/g;->sA:Lcom/kwad/components/core/playable/a;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/kwad/components/ad/reward/g;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v0}, Lcom/kwad/components/core/playable/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/view/AdBaseFrameLayout;Lcom/kwad/components/core/e/d/d;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/kwad/components/ad/reward/g;->sO:Z

    .line 27
    .line 28
    const-string v2, "playable"

    .line 29
    .line 30
    invoke-static {v1, v0, v2}, Lcom/kwad/components/ad/reward/monitor/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 42
    .line 43
    iget-object v3, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 44
    .line 45
    iget-boolean v1, v1, Lcom/kwad/components/ad/reward/g;->sO:Z

    .line 46
    .line 47
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bX(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v3, v1, v2, v0}, Lcom/kwad/components/ad/reward/monitor/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/kwad/components/core/playable/a;->vy()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 60
    .line 61
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/p$2;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/reward/presenter/p$2;-><init>(Lcom/kwad/components/ad/reward/presenter/p;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/playable/a;->a(Lcom/kwad/components/core/webview/jshandler/as$b;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 70
    .line 71
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/p$3;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/reward/presenter/p$3;-><init>(Lcom/kwad/components/ad/reward/presenter/p;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/playable/a;->a(Lcom/kwad/sdk/core/webview/KsAdWebView$e;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/kwad/components/ad/reward/a;->gs()Lcom/kwad/components/ad/reward/a;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/p;->xd:Lcom/kwad/components/ad/reward/e/j;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/a;->a(Lcom/kwad/components/ad/reward/e/j;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final e(Lcom/kwad/components/core/playable/PlayableSource;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/playable/PlayableSource;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/playable/a;->e(Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p;->xc:Lcom/kwad/components/core/playable/PlayableSource;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/playable/a;->e(Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final iW()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/playable/a;->iW()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_playable_webview:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
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
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/kwad/components/core/playable/a;->vx()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p;->sA:Lcom/kwad/components/core/playable/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kwad/components/core/playable/a;->iW()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/components/ad/reward/a;->gs()Lcom/kwad/components/ad/reward/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/p;->xd:Lcom/kwad/components/ad/reward/e/j;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/a;->b(Lcom/kwad/components/ad/reward/e/j;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
