.class public Lcom/anythink/network/sigmob/SigmobATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/sigmob/windad/natives/WindNativeAdData;

.field c:Landroid/widget/FrameLayout;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

.field i:Lcom/anythink/nativead/api/ATNativePrepareInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/windad/natives/WindNativeAdData;Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->c:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->e:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->f:Landroid/widget/ImageView;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->g:Ljava/util/List;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->h:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 25
    .line 26
    invoke-direct {p0, p2}, Lcom/anythink/network/sigmob/SigmobATNativeAd;->a(Lcom/sigmob/windad/natives/WindNativeAdData;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private a(Lcom/sigmob/windad/natives/WindNativeAdData;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getDesc()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getIconUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getCTAText()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    const-string v0, "1"

    .line 37
    .line 38
    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Landroid/widget/FrameLayout;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->c:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "2"

    .line 51
    .line 52
    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v0, Landroid/widget/ImageView;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->d:Landroid/widget/ImageView;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->g:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->g:Ljava/util/List;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->d:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x3

    .line 82
    if-ne v0, v1, :cond_1

    .line 83
    .line 84
    new-instance v0, Landroid/widget/ImageView;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->a:Landroid/content/Context;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->e:Landroid/widget/ImageView;

    .line 92
    .line 93
    new-instance v0, Landroid/widget/ImageView;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->a:Landroid/content/Context;

    .line 96
    .line 97
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->f:Landroid/widget/ImageView;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->g:Ljava/util/List;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->e:Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->g:Ljava/util/List;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->f:Landroid/widget/ImageView;

    .line 112
    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_2

    .line 121
    .line 122
    new-instance v0, Lcom/anythink/network/sigmob/a;

    .line 123
    .line 124
    invoke-direct {v0, p1}, Lcom/anythink/network/sigmob/a;-><init>(Lcom/sigmob/windad/natives/AdAppInfo;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->i:Lcom/anythink/nativead/api/ATNativePrepareInfo;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCloseView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->i:Lcom/anythink/nativead/api/ATNativePrepareInfo;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdLogo()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->c:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->d:Landroid/widget/ImageView;

    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    const/4 v2, -0x2

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public getNativeImageViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public pauseVideo()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->pauseVideo()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->pauseVideo()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->h:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInitManager;->getEcpmInt(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/m;->setBidEcpm(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 13
    .line 14
    if-eqz v0, :cond_7

    .line 15
    .line 16
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->i:Lcom/anythink/nativead/api/ATNativePrepareInfo;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    instance-of v1, p2, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    move-object v1, p2

    .line 32
    check-cast v1, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->getCreativeClickViewList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    const/4 v7, 0x1

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ge v1, v7, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    move-object v3, v0

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_5
    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCloseView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    new-instance v6, Lcom/anythink/network/sigmob/SigmobATNativeAd$a;

    .line 85
    .line 86
    invoke-direct {v6, p0}, Lcom/anythink/network/sigmob/SigmobATNativeAd$a;-><init>(Lcom/anythink/network/sigmob/SigmobATNativeAd;)V

    .line 87
    .line 88
    .line 89
    move-object v2, p1

    .line 90
    invoke-interface/range {v1 .. v6}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 94
    .line 95
    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-ne p1, v7, :cond_6

    .line 100
    .line 101
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->c:Landroid/widget/FrameLayout;

    .line 104
    .line 105
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATNativeAd$b;

    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATNativeAd$b;-><init>(Lcom/anythink/network/sigmob/SigmobATNativeAd;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, p2, v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindMediaViewWithoutAppInfo(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->g:Ljava/util/List;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-interface {p1, p2, v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindImageViews(Ljava/util/List;I)V

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    instance-of p1, p1, Landroid/app/Activity;

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Landroid/app/Activity;

    .line 143
    .line 144
    new-instance v0, Lcom/anythink/network/sigmob/SigmobATNativeAd$c;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Lcom/anythink/network/sigmob/SigmobATNativeAd$c;-><init>(Lcom/anythink/network/sigmob/SigmobATNativeAd;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {p1, p2, v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->setDislikeInteractionCallback(Landroid/app/Activity;Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    return-void
.end method

.method public resumeVideo()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->resumeVideo()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATNativeAd;->b:Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->resumeVideo()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
