.class public Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;
.super Lcom/meishu/sdk/core/ad/banner/a;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GDTBannerAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

.field private gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;Lcom/qq/e/ads/banner2/UnifiedBannerView;)V
    .locals 1

    .line 1
    const-string v0, "GDT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/banner/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;->gdtBannerView:Lcom/qq/e/ads/banner2/UnifiedBannerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 17
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v0, 0x40cccccd    # 6.4f

    div-float/2addr p1, v0

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 19
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 22
    :cond_2
    invoke-super {p0, p2}, Lcom/meishu/sdk/core/ad/banner/a;->showAd(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 23
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 6
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    int-to-float v0, v0

    const v2, 0x40cccccd    # 6.4f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/banner/GDTBannerAd;->adWrapper:Lcom/meishu/sdk/platform/gdt/banner/GDTViewWrapper;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/banner/a;->showAd(Landroid/view/ViewGroup;)V

    return-void
.end method
