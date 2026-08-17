.class public Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;
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
.field private static final TAG:Ljava/lang/String; = "OPPORecyclerAdLoader"


# instance fields
.field private nativeAdvanceAdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/msp/mobad/api/ad/NativeAdvanceAd;",
            ">;"
        }
    .end annotation
.end field

.field private nativeTemplateAdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/heytap/msp/mobad/api/ad/NativeTempletAd;",
            ">;"
        }
    .end annotation
.end field

.field private oppoRecyclerAdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;",
            ">;"
        }
    .end annotation
.end field

.field private oppoTemplateRecyclerAdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoTemplateRecyclerAdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeTemplateAdList:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoRecyclerAdList:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeAdvanceAdList:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoTemplateRecyclerAdList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoRecyclerAdList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadRecycler()V
    .locals 4

    .line 1
    new-instance v0, Lcom/heytap/msp/mobad/api/ad/NativeAdvanceAd;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$2;-><init>(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Lcom/heytap/msp/mobad/api/ad/NativeAdvanceAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/msp/mobad/api/listener/INativeAdvanceLoadListener;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/ad/NativeAdvanceAd;->loadAd()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeAdvanceAdList:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private loadTemplate()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/heytap/msp/mobad/api/params/NativeAdSize$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/heytap/msp/mobad/api/params/NativeAdSize$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/heytap/msp/mobad/api/params/NativeAdSize$Builder;->setWidthInDp(I)Lcom/heytap/msp/mobad/api/params/NativeAdSize$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/heytap/msp/mobad/api/params/NativeAdSize$Builder;->setHeightInDp(I)Lcom/heytap/msp/mobad/api/params/NativeAdSize$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/heytap/msp/mobad/api/params/NativeAdSize$Builder;->build()Lcom/heytap/msp/mobad/api/params/NativeAdSize;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/heytap/msp/mobad/api/ad/NativeTempletAd;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    new-instance v5, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;

    .line 66
    .line 67
    invoke-direct {v5, p0, v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;-><init>(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;Ljava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/heytap/msp/mobad/api/ad/NativeTempletAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/msp/mobad/api/params/NativeAdSize;Lcom/heytap/msp/mobad/api/listener/INativeTempletAdListener;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/heytap/msp/mobad/api/ad/NativeTempletAd;->loadAd()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeTemplateAdList:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoTemplateRecyclerAdList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    check-cast v4, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->destroy()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoTemplateRecyclerAdList:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeTemplateAdList:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    move v3, v2

    .line 38
    :goto_1
    if-ge v3, v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    check-cast v4, Lcom/heytap/msp/mobad/api/ad/NativeTempletAd;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/heytap/msp/mobad/api/ad/NativeTempletAd;->destroyAd()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeTemplateAdList:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoRecyclerAdList:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    move v3, v2

    .line 64
    :goto_2
    if-ge v3, v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    check-cast v4, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->destroy()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->oppoRecyclerAdList:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeAdvanceAdList:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :goto_3
    if-ge v2, v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    check-cast v3, Lcom/heytap/msp/mobad/api/ad/NativeAdvanceAd;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/heytap/msp/mobad/api/ad/NativeAdvanceAd;->destroyAd()V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->nativeAdvanceAdList:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public loadAd()V
    .locals 2

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
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 25
    .line 26
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const v1, 0x186a0

    .line 33
    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->loadTemplate()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->loadRecycler()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
