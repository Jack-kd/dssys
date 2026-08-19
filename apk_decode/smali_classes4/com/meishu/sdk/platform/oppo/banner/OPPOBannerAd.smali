.class public Lcom/meishu/sdk/platform/oppo/banner/OPPOBannerAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/banner/IBannerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;)V
    .locals 1

    .line 1
    const-string v0, "OPPO"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setCloseButtonVisible(Z)V
    .locals 0

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 0

    return-void
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
