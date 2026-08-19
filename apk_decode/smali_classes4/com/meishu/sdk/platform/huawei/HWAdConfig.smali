.class public Lcom/meishu/sdk/platform/huawei/HWAdConfig;
.super Lcom/meishu/sdk/core/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/ads/HwAds;->init(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/huawei/openalliance/ad/inter/HiAd;->getInstance(Landroid/content/Context;)Lcom/huawei/openalliance/ad/inter/IHiAd;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/4 p3, 0x1

    .line 9
    invoke-interface {p2, p3}, Lcom/huawei/openalliance/ad/inter/IHiAd;->enableUserInfo(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/huawei/openalliance/ad/inter/HiAd;->getInstance(Landroid/content/Context;)Lcom/huawei/openalliance/ad/inter/IHiAd;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-interface {p1, p3, p2}, Lcom/huawei/openalliance/ad/inter/IHiAd;->initLog(ZI)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
