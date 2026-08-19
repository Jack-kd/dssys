.class public final Lcom/kwad/components/ad/draw/view/b;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"


# instance fields
.field private dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dH:Lcom/kwad/sdk/core/j/b;

.field private dQ:Lcom/kwad/components/ad/draw/b/b;

.field private dR:Z

.field private dS:Lcom/kwad/components/ad/draw/c/a;

.field private eU:Z

.field private fY:Z

.field private fZ:Z

.field private fx:Lcom/kwad/components/core/widget/a/c;

.field private ga:Z

.field private gf:Landroid/widget/ImageView;

.field private gg:J

.field private gh:Landroid/view/View$OnClickListener;

.field private gi:Lcom/kwad/components/core/video/l;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDetailVideoView:Lcom/kwad/components/core/video/DetailVideoView;

.field private mPresenter:Lcom/kwad/sdk/mvp/Presenter;

.field private mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->dR:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->fY:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->fZ:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->ga:Z

    .line 12
    .line 13
    new-instance v0, Lcom/kwad/components/ad/draw/view/b$2;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/draw/view/b$2;-><init>(Lcom/kwad/components/ad/draw/view/b;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->gh:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    new-instance v0, Lcom/kwad/components/ad/draw/view/b$3;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/draw/view/b$3;-><init>(Lcom/kwad/components/ad/draw/view/b;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->gi:Lcom/kwad/components/core/video/l;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->initView()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/draw/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->bP()V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/draw/view/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/draw/view/b;->fY:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/draw/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->notifyAdClick()V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/draw/view/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/draw/view/b;->ga:Z

    return p1
.end method

.method private bI()Lcom/kwad/components/ad/draw/b/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/ad/draw/b/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/draw/b/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/kwad/components/ad/draw/b/b;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lcom/kwad/components/core/e/d/d;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lcom/kwad/components/ad/draw/b/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/kwad/components/ad/draw/b/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 38
    .line 39
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/b/a;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/kwad/components/ad/draw/presenter/b/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/kwad/components/ad/draw/b/b;->dV:Lcom/kwad/components/ad/draw/presenter/b/a;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dk(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/kwad/components/ad/l/b;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/kwad/components/ad/l/b;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, v0, Lcom/kwad/components/ad/draw/b/b;->dW:Lcom/kwad/components/ad/l/b;

    .line 62
    .line 63
    :cond_1
    return-object v0
.end method

.method private bJ()Lcom/kwad/sdk/mvp/Presenter;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/a/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/a/a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/b;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/b;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/d;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/d;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/c;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/c;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/b/b;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/b/b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->cX(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/b/c;

    .line 55
    .line 56
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/b/c;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/c/a;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/c/a;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/b;->dk(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/c/b;

    .line 79
    .line 80
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/c/b;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aV(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    new-instance v1, Lcom/kwad/components/ad/draw/presenter/a;

    .line 95
    .line 96
    invoke-direct {v1}, Lcom/kwad/components/ad/draw/presenter/a;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-object v0
.end method

.method private bM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bE(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne v1, v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->bN()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bE(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne v1, v0, :cond_1

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->bN()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private bN()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/kwad/components/ad/draw/view/b;->eU:Z

    .line 4
    .line 5
    xor-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/draw/c/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->eU:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/kwad/components/ad/k/b;->pause()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/kwad/components/ad/draw/c/a;->resume()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->eU:Z

    .line 26
    .line 27
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->eU:Z

    .line 30
    .line 31
    return-void
.end method

.method private bO()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->bI()Lcom/kwad/components/ad/draw/b/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->bJ()Lcom/kwad/sdk/mvp/Presenter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->N(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->q(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->dH:Lcom/kwad/sdk/core/j/b;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/a/a;->a(Lcom/kwad/sdk/core/j/c;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/kwad/components/ad/draw/c/a;->bu()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->gi:Lcom/kwad/components/core/video/l;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/k/b;->a(Lcom/kwad/components/core/video/l;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private bP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kwad/components/ad/draw/c/a;->bw()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->gi:Lcom/kwad/components/core/video/l;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/k/b;->b(Lcom/kwad/components/core/video/l;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/kwad/components/ad/draw/b/b;->release()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->destroy()V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-void
.end method

.method public static synthetic c(Lcom/kwad/components/ad/draw/view/b;)Lcom/kwad/components/ad/draw/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/draw/view/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/ad/draw/view/b;->fZ:Z

    return p1
.end method

.method public static synthetic d(Lcom/kwad/components/ad/draw/view/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->bM()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/kwad/components/ad/draw/view/b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/b;->gf:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/draw/view/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/draw/view/b;->fY:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/draw/view/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/draw/view/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/draw/view/b;->ga:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/draw/view/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/draw/view/b;->fZ:Z

    .line 2
    .line 3
    return p0
.end method

.method private initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget v1, Lcom/kwad/sdk/R$layout;->ksad_draw_layout:I

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/kwad/sdk/R$id;->ksad_root_container:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 17
    .line 18
    sget v1, Lcom/kwad/sdk/R$id;->ksad_video_control_button:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->gf:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 29
    .line 30
    sget v1, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/kwad/components/core/video/DetailVideoView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mDetailVideoView:Lcom/kwad/components/core/video/DetailVideoView;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ky()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/kwad/components/core/video/DetailVideoView;->g(ZI)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mDetailVideoView:Lcom/kwad/components/core/video/DetailVideoView;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->gh:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->gf:Landroid/widget/ImageView;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->gh:Landroid/view/View$OnClickListener;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/kwad/sdk/wrapper/m;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/kwad/components/ad/draw/view/b$1;

    .line 77
    .line 78
    invoke-direct {v1, p0, v0}, Lcom/kwad/components/ad/draw/view/b$1;-><init>(Lcom/kwad/components/ad/draw/view/b;Ljava/lang/ref/WeakReference;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lcom/kwad/sdk/core/c/b;->a(Lcom/kwad/sdk/core/c/c;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static synthetic j(Lcom/kwad/components/ad/draw/view/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/draw/view/b;->gg:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private notifyAdClick()V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/kwad/components/ad/draw/b/b;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/al$a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->f(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x55

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->ec(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/adlog/c/b;Lorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dQ:Lcom/kwad/components/ad/draw/b/b;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/kwad/components/ad/draw/b/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdClicked()V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/kwad/components/ad/draw/view/b;->dR:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dF(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move v1, v2

    .line 56
    :goto_0
    invoke-static {v0, v2, v1}, Lcom/kwad/components/ad/draw/a/d;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 60
    .line 61
    invoke-static {v0, v2}, Lcom/kwad/components/ad/draw/a/d;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 62
    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/kwad/components/ad/draw/view/b;->dR:Z

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final bQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/kwad/components/ad/draw/c/a;->fC:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final o(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    new-instance p1, Lcom/kwad/components/ad/draw/b;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/draw/b;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/kwad/components/ad/draw/a/c;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lcom/kwad/components/ad/draw/view/b;->gg:J

    .line 26
    .line 27
    new-instance p1, Lcom/kwad/components/ad/draw/c/a;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/b;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/b;->mDetailVideoView:Lcom/kwad/components/core/video/DetailVideoView;

    .line 34
    .line 35
    invoke-direct {p1, v0, v1, v2}, Lcom/kwad/components/ad/draw/c/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/widget/a/c;Lcom/kwad/components/core/video/DetailVideoView;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/b;->bO()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/draw/c/a;->bx()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iput v1, v0, Lcom/kwad/components/ad/draw/c/a;->fD:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/draw/c/a;->g(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/kwad/components/ad/k/b;->pause()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final play()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/draw/c/a;->bx()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput v1, v0, Lcom/kwad/components/ad/draw/c/a;->fD:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/draw/c/a;->g(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/kwad/components/ad/draw/c/a;->resume()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setPageExitListener(Lcom/kwad/sdk/core/j/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/b;->dH:Lcom/kwad/sdk/core/j/b;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoSound(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/b;->dS:Lcom/kwad/components/ad/draw/c/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/draw/c/a;->setVideoSound(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
