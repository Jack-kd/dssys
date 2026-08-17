.class public Lcom/meishu/sdk/platform/bd/banner/BDBannerAd;
.super Lcom/meishu/sdk/core/ad/banner/a;
.source "SourceFile"


# instance fields
.field private bdBannerAdLoader:Lcom/meishu/sdk/platform/bd/banner/BDBannerAdLoader;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/banner/BDBannerAdLoader;)V
    .locals 1

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/banner/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/banner/BDBannerAd;->bdBannerAdLoader:Lcom/meishu/sdk/platform/bd/banner/BDBannerAdLoader;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/meishu/sdk/core/ad/banner/a;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/banner/a;->showAd(Landroid/view/ViewGroup;)V

    return-void
.end method
