.class public Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;",
        "Lcom/meishu/sdk/core/ad/draw/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BDDrawAdWrapper"


# instance fields
.field private bdDrawAd:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->bdDrawAd:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->bdDrawAd:Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public loadAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

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
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    .line 43
    new-instance v1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->setWidth(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->setHeight(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->downloadAppConfirmPolicy(I)Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-direct {v1, v2, v3}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;

    .line 87
    .line 88
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadPortraitVideoAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$PortraitVideoAdListener;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
