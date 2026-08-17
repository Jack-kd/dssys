.class public Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adListener:Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

.field private gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->adListener:Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/image/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/meishu/sdk/core/ad/image/a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 32
    .line 33
    new-instance p2, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;

    .line 34
    .line 35
    invoke-direct {p2, p0, p4}, Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdEventListenerImpl;-><init>(Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;Lcom/meishu/sdk/core/ad/image/a;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getAdListener()Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->adListener:Lcom/meishu/sdk/platform/gdt/image/GDTNativeAdListenerImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getImgList()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [Ljava/lang/String;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/image/GDTImageAdDataAdapter;->gdtNativeADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
