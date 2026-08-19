.class public final Lcom/kwad/components/ad/nativead/f;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"


# instance fields
.field private eW:Lcom/kwad/sdk/widget/l;

.field private fx:Lcom/kwad/components/core/widget/a/c;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

.field private mDetailVideoView:Lcom/kwad/components/core/video/DetailVideoView;

.field private mPresenter:Lcom/kwad/sdk/mvp/Presenter;

.field private pD:Lcom/kwad/components/ad/nativead/d$a;

.field private pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

.field private pW:Lcom/kwad/components/ad/nativead/a/b;

.field public pX:Lcom/kwad/components/ad/nativead/d/a;

.field private pY:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field private pZ:Z

.field private pv:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

.field private qa:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/nativead/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/components/ad/nativead/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-boolean p3, p0, Lcom/kwad/components/ad/nativead/f;->pZ:Z

    .line 5
    iput-boolean p3, p0, Lcom/kwad/components/ad/nativead/f;->qa:Z

    .line 6
    new-instance p2, Lcom/kwad/components/ad/nativead/f$1;

    invoke-direct {p2, p0}, Lcom/kwad/components/ad/nativead/f$1;-><init>(Lcom/kwad/components/ad/nativead/f;)V

    iput-object p2, p0, Lcom/kwad/components/ad/nativead/f;->eW:Lcom/kwad/sdk/widget/l;

    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/nativead/f;->B(Landroid/content/Context;)V

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_native_video_layout:I

    .line 2
    .line 3
    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/kwad/sdk/R$id;->ksad_root_container:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/f;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 15
    .line 16
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_player:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/kwad/components/core/video/DetailVideoView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/f;->mDetailVideoView:Lcom/kwad/components/core/video/DetailVideoView;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/video/DetailVideoView;->setAd(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    move-object p1, p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/view/View;

    .line 43
    .line 44
    :goto_0
    new-instance v0, Lcom/kwad/components/ad/nativead/g;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Lcom/kwad/components/ad/nativead/g;-><init>(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/f;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/f;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/nativead/f;)Lcom/kwad/components/core/widget/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/f;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private bJ()Lcom/kwad/sdk/mvp/Presenter;
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/ad/nativead/b/e;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/e;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/kwad/components/ad/nativead/b/c;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/c;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/kwad/components/ad/nativead/b/i;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/i;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/kwad/components/ad/nativead/b/j;

    .line 31
    .line 32
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/j;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/kwad/components/ad/nativead/b/d;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/d;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/kwad/components/ad/nativead/b/b;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/b;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/kwad/components/ad/nativead/b/k;

    .line 55
    .line 56
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/k;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/kwad/components/ad/nativead/b/a;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/f;->pY:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 65
    .line 66
    invoke-direct {v1, v2}, Lcom/kwad/components/ad/nativead/b/a;-><init>(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/kwad/components/ad/nativead/b/g;

    .line 73
    .line 74
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/g;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    new-instance v1, Lcom/kwad/components/ad/nativead/b/f;

    .line 93
    .line 94
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/f;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_0
    new-instance v1, Lcom/kwad/components/ad/nativead/b/h;

    .line 102
    .line 103
    invoke-direct {v1}, Lcom/kwad/components/ad/nativead/b/h;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/nativead/f;)Lcom/kwad/components/ad/nativead/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/f;->pW:Lcom/kwad/components/ad/nativead/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/nativead/f;)Lcom/kwad/sdk/mvp/Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/f;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 2
    .line 3
    return-object p0
.end method

.method private fC()Lcom/kwad/components/ad/nativead/a/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/ad/nativead/a/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/nativead/a/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/kwad/components/ad/nativead/a/b;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/f;->pD:Lcom/kwad/components/ad/nativead/d$a;

    .line 15
    .line 16
    iput-object v2, v0, Lcom/kwad/components/ad/nativead/a/b;->pD:Lcom/kwad/components/ad/nativead/d$a;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/f;->pv:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    .line 19
    .line 20
    iput-object v2, v0, Lcom/kwad/components/ad/nativead/a/b;->pv:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Lcom/kwad/components/core/e/d/d;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/kwad/components/ad/nativead/a/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/kwad/components/core/e/d/d;->ql()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/kwad/components/ad/nativead/a/b;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 52
    .line 53
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/kwad/components/ad/nativead/f;->qa:Z

    .line 54
    .line 55
    iput-boolean v1, v0, Lcom/kwad/components/ad/nativead/a/b;->qd:Z

    .line 56
    .line 57
    iget-boolean v1, p0, Lcom/kwad/components/ad/nativead/f;->pZ:Z

    .line 58
    .line 59
    iput-boolean v1, v0, Lcom/kwad/components/ad/nativead/a/b;->qc:Z

    .line 60
    .line 61
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->pX:Lcom/kwad/components/ad/nativead/d/a;

    .line 62
    .line 63
    iput-object v1, v0, Lcom/kwad/components/ad/nativead/a/b;->pX:Lcom/kwad/components/ad/nativead/d/a;

    .line 64
    .line 65
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/components/core/e/d/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/f;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 4
    iput-object p3, p0, Lcom/kwad/components/ad/nativead/f;->pY:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 5
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/f;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    iget-object p2, p0, Lcom/kwad/components/ad/nativead/f;->eW:Lcom/kwad/sdk/widget/l;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;->setVisibleListener(Lcom/kwad/sdk/widget/l;)V

    return-void
.end method

.method public final ae()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->ae()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/f;->pX:Lcom/kwad/components/ad/nativead/d/a;

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/f;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move-object v0, p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    :goto_0
    new-instance v1, Lcom/kwad/components/ad/nativead/g;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lcom/kwad/components/ad/nativead/g;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/kwad/components/ad/nativead/f;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 32
    .line 33
    :cond_1
    new-instance v0, Lcom/kwad/components/ad/nativead/d/a;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/f;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/kwad/components/ad/nativead/f;->mDetailVideoView:Lcom/kwad/components/core/video/DetailVideoView;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/kwad/components/ad/nativead/f;->pY:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/components/ad/nativead/d/a;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/widget/a/c;Lcom/kwad/components/core/video/DetailVideoView;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/f;->pX:Lcom/kwad/components/ad/nativead/d/a;

    .line 47
    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/f;->fC()Lcom/kwad/components/ad/nativead/a/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/f;->pW:Lcom/kwad/components/ad/nativead/a/b;

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/f;->bJ()Lcom/kwad/sdk/mvp/Presenter;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/f;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->pR:Lcom/kwad/sdk/core/view/AdBasePvFrameLayout;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->N(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/f;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/f;->pW:Lcom/kwad/components/ad/nativead/a/b;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->q(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/f;->fx:Lcom/kwad/components/core/widget/a/c;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/f;->pX:Lcom/kwad/components/ad/nativead/d/a;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/kwad/components/ad/nativead/d/a;->bu()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final af()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->af()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/ad/nativead/f$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/nativead/f$2;-><init>(Lcom/kwad/components/ad/nativead/f;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final g(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/kwad/components/ad/nativead/f;->qa:Z

    .line 5
    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/kwad/components/ad/nativead/f;->pZ:Z

    .line 9
    .line 10
    :cond_1
    return-void
.end method

.method public final setInnerAdInteractionListener(Lcom/kwad/components/ad/nativead/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/f;->pD:Lcom/kwad/components/ad/nativead/d$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/f;->pX:Lcom/kwad/components/ad/nativead/d/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/nativead/d/a;->af(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/f;->pv:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    .line 2
    .line 3
    return-void
.end method
