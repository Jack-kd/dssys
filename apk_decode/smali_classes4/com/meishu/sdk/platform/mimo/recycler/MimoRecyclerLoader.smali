.class public Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;",
        "Lcom/meishu/sdk/core/ad/recycler/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoRecyclerLoader"


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadFeed()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/zeus/mimo/sdk/NativeAd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/zeus/mimo/sdk/NativeAd;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MimoRecyclerLoader"

    .line 7
    .line 8
    const-string v2, "loadFeed"

    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

    .line 20
    .line 21
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;-><init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;Lcom/miui/zeus/mimo/sdk/NativeAd;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/mimo/sdk/NativeAd;->load(Ljava/lang/String;Lcom/miui/zeus/mimo/sdk/NativeAd$NativeAdLoadListener;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private loadPreRender()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/zeus/mimo/sdk/TemplateAd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/zeus/mimo/sdk/TemplateAd;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;

    .line 13
    .line 14
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$1;-><init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;Lcom/miui/zeus/mimo/sdk/TemplateAd;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/mimo/sdk/TemplateAd;->load(Ljava/lang/String;Lcom/miui/zeus/mimo/sdk/TemplateAd$TemplateAdLoadListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

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
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const v1, 0x30d40

    .line 40
    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x1

    .line 53
    if-ne v0, v1, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const/4 v1, 0x2

    .line 57
    if-ne v0, v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "\u4fe1\u606f\u6d41\u6a21\u5f0f\u4e0d\u652f\u6301"

    .line 72
    .line 73
    invoke-direct {v0, v3, v1, v2}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    const v1, 0x186a0

    .line 83
    .line 84
    .line 85
    if-ne v0, v1, :cond_3

    .line 86
    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;->loadPreRender()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;->loadFeed()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
