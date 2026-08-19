.class public Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

.field private en:Lcom/kwad/sdk/api/KsAppDownloadListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ev:Landroid/widget/TextView;

.field private gN:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

.field private gO:Landroid/widget/ImageView;

.field private gP:Landroid/view/ViewGroup;

.field private gQ:Landroid/widget/ImageView;

.field private gR:Lcom/kwad/components/ad/widget/AppScoreView;

.field private gS:Landroid/widget/TextView;

.field private gT:Landroid/widget/TextView;

.field private gU:Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;

.field private gV:Landroid/view/ViewGroup;

.field private gW:Landroid/widget/TextView;

.field private gX:Landroid/widget/TextView;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLogoView:Lcom/kwad/components/core/widget/KsLogoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->B(Landroid/content/Context;)V

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

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->B(Landroid/content/Context;)V

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->B(Landroid/content/Context;)V

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_draw_video_tailframe:I

    .line 2
    .line 3
    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/kwad/sdk/R$id;->ksad_video_cover:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gO:Landroid/widget/ImageView;

    .line 15
    .line 16
    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_container:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gP:Landroid/view/ViewGroup;

    .line 25
    .line 26
    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gQ:Landroid/widget/ImageView;

    .line 35
    .line 36
    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_name:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->ev:Landroid/widget/TextView;

    .line 45
    .line 46
    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_score:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/kwad/components/ad/widget/AppScoreView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gR:Lcom/kwad/components/ad/widget/AppScoreView;

    .line 55
    .line 56
    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_download_count:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gS:Landroid/widget/TextView;

    .line 65
    .line 66
    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_ad_desc:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gT:Landroid/widget/TextView;

    .line 75
    .line 76
    sget p1, Lcom/kwad/sdk/R$id;->ksad_app_download_btn:I

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gU:Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;

    .line 85
    .line 86
    const/16 v0, 0xf

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;->setTextSize(I)V

    .line 89
    .line 90
    .line 91
    sget p1, Lcom/kwad/sdk/R$id;->ksad_h5_container:I

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/view/ViewGroup;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gV:Landroid/view/ViewGroup;

    .line 100
    .line 101
    sget p1, Lcom/kwad/sdk/R$id;->ksad_h5_ad_desc:I

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gW:Landroid/widget/TextView;

    .line 110
    .line 111
    sget p1, Lcom/kwad/sdk/R$id;->ksad_h5_open_btn:I

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gX:Landroid/widget/TextView;

    .line 120
    .line 121
    sget p1, Lcom/kwad/sdk/R$id;->ksad_draw_tailframe_logo:I

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/kwad/components/core/widget/KsLogoView;

    .line 128
    .line 129
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mLogoView:Lcom/kwad/components/core/widget/KsLogoView;

    .line 130
    .line 131
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gU:Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;)Lcom/kwad/sdk/core/view/AdBaseFrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gN:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method private getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame$1;-><init>(Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final cc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->en:Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/d;->d(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->getAppDownloadListener()Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->en:Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/e/d/d;->b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final n(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bb(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->coverUrl:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mLogoView:Lcom/kwad/components/core/widget/KsLogoView;

    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lcom/kwad/components/core/widget/KsLogoView;->bl(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget p1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->width:I

    .line 27
    .line 28
    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->height:I

    .line 29
    .line 30
    if-lez p1, :cond_1

    .line 31
    .line 32
    if-le p1, v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/kwad/sdk/c/a/a;->getScreenWidth(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    :goto_0
    int-to-float v3, v2

    .line 54
    int-to-float v0, v0

    .line 55
    int-to-float p1, p1

    .line 56
    div-float/2addr v0, p1

    .line 57
    mul-float/2addr v3, v0

    .line 58
    float-to-int p1, v3

    .line 59
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gO:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    .line 67
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gO:Landroid/widget/ImageView;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 72
    .line 73
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/16 v0, 0x8

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gQ:Landroid/widget/ImageView;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->cv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 96
    .line 97
    const/16 v4, 0xb

    .line 98
    .line 99
    invoke-static {p1, v2, v3, v4}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadAppIcon(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->ev:Landroid/widget/TextView;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->aB(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aG(Lcom/kwad/sdk/core/response/model/AdInfo;)F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    const/high16 v2, 0x40400000    # 3.0f

    .line 120
    .line 121
    cmpl-float v2, p1, v2

    .line 122
    .line 123
    if-ltz v2, :cond_3

    .line 124
    .line 125
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gR:Lcom/kwad/components/ad/widget/AppScoreView;

    .line 126
    .line 127
    invoke-virtual {v2, p1}, Lcom/kwad/components/ad/widget/AppScoreView;->setScore(F)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gR:Lcom/kwad/components/ad/widget/AppScoreView;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gS:Landroid/widget/TextView;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 138
    .line 139
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->aF(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gT:Landroid/widget/TextView;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 149
    .line 150
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->aA(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gP:Landroid/view/ViewGroup;

    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gV:Landroid/view/ViewGroup;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gW:Landroid/widget/TextView;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 171
    .line 172
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->aA(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gX:Landroid/widget/TextView;

    .line 180
    .line 181
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 182
    .line 183
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->aK(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gP:Landroid/view/ViewGroup;

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gV:Landroid/view/ViewGroup;

    .line 196
    .line 197
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :goto_1
    iget-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gU:Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;

    .line 201
    .line 202
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gU:Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    :goto_0
    new-instance v2, Lcom/kwad/components/core/e/d/a$a;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v2, v3}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gU:Lcom/kwad/components/ad/draw/view/DrawDownloadProgressBar;

    .line 35
    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_1
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->as(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame$2;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame$2;-><init>(Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->en:Lcom/kwad/sdk/api/KsAppDownloadListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/d;->c(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setAdBaseFrameLayout(Lcom/kwad/sdk/core/view/AdBaseFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->gN:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 2
    .line 3
    return-void
.end method

.method public setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->dB:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setApkDownloadHelper(Lcom/kwad/components/core/e/d/d;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/e/d/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/view/playend/DrawVideoTailFrame;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 2
    .line 3
    return-void
.end method
