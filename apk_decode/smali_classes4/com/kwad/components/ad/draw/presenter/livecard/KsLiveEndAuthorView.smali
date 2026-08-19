.class public Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;
.super Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;
.source "SourceFile"


# instance fields
.field private eS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_draw_author_end_icon:I

    .line 2
    .line 3
    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/kwad/sdk/R$id;->ksad_author_icon_frame:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eA:Landroid/view/ViewGroup;

    .line 15
    .line 16
    sget p1, Lcom/kwad/sdk/R$id;->ksad_author_icon:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eC:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 25
    .line 26
    sget p1, Lcom/kwad/sdk/R$id;->ksad_author_icon_outer:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eB:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 35
    .line 36
    sget p1, Lcom/kwad/sdk/R$id;->ksad_author_animator:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eD:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 45
    .line 46
    sget p1, Lcom/kwad/sdk/R$id;->ksad_author_animator2:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eE:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 55
    .line 56
    sget p1, Lcom/kwad/sdk/R$id;->ksad_author_icon_layout:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eK:Landroid/view/View;

    .line 63
    .line 64
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "KsLiveEndAuthorView"

    .line 8
    .line 9
    const-string v1, "handleMsg MSG_CHECKING"

    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eD:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 15
    .line 16
    const-wide/16 v1, 0x384

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1, v2}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->a(Landroid/view/View;J)Landroid/animation/Animator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eE:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 23
    .line 24
    const-wide/16 v2, 0x3e8

    .line 25
    .line 26
    invoke-virtual {p0, v1, v2, v3}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->a(Landroid/view/View;J)Landroid/animation/Animator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eC:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v2, v3}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-boolean v3, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;->eS:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_1
    if-eqz p1, :cond_2

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 49
    .line 50
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 51
    .line 52
    .line 53
    filled-new-array {v2, p1, v1}, [Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 61
    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;->eS:Z

    .line 64
    .line 65
    new-instance v0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;-><init>(Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->ca:Lcom/kwad/sdk/utils/cc;

    .line 75
    .line 76
    const-wide/16 v1, 0x1f4

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public getWaveEndSize()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_draw_author_end_icon_width:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final n(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->eC:Lcom/kwad/components/core/widget/KSCornerImageView;

    .line 16
    .line 17
    invoke-static {v1, v0, p1}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveAuthorView;->ca:Lcom/kwad/sdk/utils/cc;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const-wide/16 v1, 0x1f4

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
