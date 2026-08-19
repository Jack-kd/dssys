.class public Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;",
        "Lcom/meishu/sdk/core/ad/paster/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aQuery:Lcom/meishu/sdk/core/bquery/i;

.field private closeButton:Landroid/widget/ImageButton;

.field private downloadButton:Landroid/widget/Button;

.field private gdtPasterAd:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

.field private nativeADEventListener:Lcom/qq/e/ads/nativ/NativeADEventListener;

.field private nativeADUnifiedListener:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

.field private nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

.field private nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$1;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeADUnifiedListener:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    .line 20
    .line 21
    new-instance p1, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$5;-><init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeADEventListener:Lcom/qq/e/ads/nativ/NativeADEventListener;

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    :try_start_1
    new-instance p1, Lcom/google/gson/Gson;

    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-class v1, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 54
    .line 55
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeADUnifiedListener:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 84
    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    new-instance p1, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeADUnifiedListener:Lcom/qq/e/ads/nativ/NativeADUnifiedListener;

    .line 98
    .line 99
    invoke-direct {p1, v0, p2, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 103
    .line 104
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 105
    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMinVideoDuration(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :goto_2
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->initAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->gdtPasterAd:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->downloadButton:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;Landroid/widget/Button;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->updateAdAction(Landroid/widget/Button;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private initAd()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;->getContainerView()Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/meishu/sdk/R$layout;->ms_gdt_paster_layout:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;->getContainerView()Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    sget v2, Lcom/meishu/sdk/R$id;->ms_btn_download:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/widget/Button;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->downloadButton:Landroid/widget/Button;

    .line 51
    .line 52
    sget v2, Lcom/meishu/sdk/R$id;->ms_btn_close:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/widget/ImageButton;

    .line 59
    .line 60
    iput-object v2, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->closeButton:Landroid/widget/ImageButton;

    .line 61
    .line 62
    sget v2, Lcom/meishu/sdk/R$id;->ms_gdt_media_view:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/qq/e/ads/nativ/MediaView;

    .line 69
    .line 70
    sget v3, Lcom/meishu/sdk/R$id;->ms_img_poster:I

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroid/widget/ImageView;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->closeButton:Landroid/widget/ImageButton;

    .line 79
    .line 80
    new-instance v5, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$2;

    .line 81
    .line 82
    invoke-direct {v5, p0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$2;-><init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    new-instance v4, Lcom/meishu/sdk/core/bquery/i;

    .line 89
    .line 90
    invoke-direct {v4, v1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iput-object v4, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 96
    .line 97
    invoke-direct {p0, v4}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->renderAdUi(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 98
    .line 99
    .line 100
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->downloadButton:Landroid/widget/Button;

    .line 101
    .line 102
    iget-object v5, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 103
    .line 104
    invoke-direct {p0, v4, v5}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->updateAdAction(Landroid/widget/Button;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 105
    .line 106
    .line 107
    new-instance v4, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;

    .line 108
    .line 109
    invoke-direct {v4, p0, v3, v2}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$3;-><init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;Landroid/widget/ImageView;Lcom/qq/e/ads/nativ/MediaView;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->downloadButton:Landroid/widget/Button;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const/4 v5, 0x0

    .line 132
    invoke-interface {v3, v4, v1, v5, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeADEventListener:Lcom/qq/e/ads/nativ/NativeADEventListener;

    .line 138
    .line 139
    invoke-interface {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 143
    .line 144
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    const/4 v1, 0x2

    .line 149
    if-ne v0, v1, :cond_0

    .line 150
    .line 151
    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    .line 154
    .line 155
    .line 156
    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/4 v3, 0x0

    .line 166
    invoke-virtual {v0, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 191
    .line 192
    new-instance v3, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;

    .line 193
    .line 194
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;-><init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v1, v2, v0, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    goto :goto_1

    .line 203
    :cond_0
    :goto_0
    new-instance v0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 204
    .line 205
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 206
    .line 207
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;-><init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    .line 208
    .line 209
    .line 210
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->gdtPasterAd:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->gdtPasterAd:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 219
    .line 220
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->gdtPasterAd:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;

    .line 230
    .line 231
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .line 233
    .line 234
    :cond_1
    return-void

    .line 235
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method private renderAdUi(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_6

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    const/4 v4, 0x3

    .line 15
    if-ne v0, v4, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 18
    .line 19
    sget v4, Lcom/meishu/sdk/R$id;->ms_img_1:I

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v4, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 41
    .line 42
    sget v4, Lcom/meishu/sdk/R$id;->ms_img_2:I

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 64
    .line 65
    sget v2, Lcom/meishu/sdk/R$id;->ms_img_3:I

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 72
    .line 73
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 87
    .line 88
    sget v1, Lcom/meishu/sdk/R$id;->ms_native_3img_title:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 95
    .line 96
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 104
    .line 105
    sget v1, Lcom/meishu/sdk/R$id;->ms_native_3img_desc:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 112
    .line 113
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_1
    const/4 v2, 0x4

    .line 122
    if-ne v0, v2, :cond_5

    .line 123
    .line 124
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 125
    .line 126
    sget v2, Lcom/meishu/sdk/R$id;->ms_img_logo:I

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 133
    .line 134
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 142
    .line 143
    sget v1, Lcom/meishu/sdk/R$id;->ms_img_poster:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 156
    .line 157
    if-eqz v1, :cond_2

    .line 158
    .line 159
    check-cast v0, Landroid/widget/ImageView;

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    instance-of v1, v0, Landroid/webkit/WebView;

    .line 167
    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    check-cast v0, Landroid/webkit/WebView;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_3
    instance-of v1, v0, Landroid/widget/TextView;

    .line 180
    .line 181
    if-eqz v1, :cond_4

    .line 182
    .line 183
    check-cast v0, Landroid/widget/TextView;

    .line 184
    .line 185
    const-string v1, ""

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 191
    .line 192
    sget v1, Lcom/meishu/sdk/R$id;->ms_text_title:I

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 199
    .line 200
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 208
    .line 209
    sget v1, Lcom/meishu/sdk/R$id;->ms_text_desc:I

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 216
    .line 217
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 222
    .line 223
    .line 224
    :cond_5
    return-void

    .line 225
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 226
    .line 227
    sget v2, Lcom/meishu/sdk/R$id;->ms_img_logo:I

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 234
    .line 235
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 243
    .line 244
    sget v2, Lcom/meishu/sdk/R$id;->ms_img_poster:I

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 251
    .line 252
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 260
    .line 261
    sget v1, Lcom/meishu/sdk/R$id;->ms_text_title:I

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 268
    .line 269
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->aQuery:Lcom/meishu/sdk/core/bquery/i;

    .line 277
    .line 278
    sget v1, Lcom/meishu/sdk/R$id;->ms_text_desc:I

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 285
    .line 286
    invoke-interface {p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method private updateAdAction(Landroid/widget/Button;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "\u6d4f\u89c8"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq v0, v2, :cond_4

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    if-eq v0, v2, :cond_3

    .line 27
    .line 28
    const/16 p2, 0x8

    .line 29
    .line 30
    if-eq v0, p2, :cond_2

    .line 31
    .line 32
    const/16 p2, 0x10

    .line 33
    .line 34
    if-eq v0, p2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const-string p2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u91cd\u65b0\u4e0b\u8f7d"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const-string p2, "\u5b89\u88c5"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getProgress()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "%"

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    const-string p2, "\u66f4\u65b0"

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    const-string p2, "\u542f\u52a8"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    const-string p2, "\u4e0b\u8f7d"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public loadAd()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "expectCostPrice"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const-string v0, "highestLossPrice"

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 37
    .line 38
    invoke-interface {p2, p1}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "winPrice"

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string p2, "lossReason"

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string p2, "adnId"

    .line 69
    .line 70
    const-string v0, "2"

    .line 71
    .line 72
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 76
    .line 77
    invoke-interface {p2, p1}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void

    .line 81
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
