.class public Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CSJAdInteractionListene"


# instance fields
.field private csjNativeAdDataAdapter:Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;

.field private meishuInteractionListener:Lcom/meishu/sdk/core/ad/image/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;Lcom/meishu/sdk/core/ad/image/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;->csjNativeAdDataAdapter:Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;->meishuInteractionListener:Lcom/meishu/sdk/core/ad/image/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;->meishuInteractionListener:Lcom/meishu/sdk/core/ad/image/a;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/image/a;->onAdClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 1
    const-string p1, "CSJAdInteractionListene"

    .line 2
    .line 3
    const-string p2, "onAdCreativeClick: \u521b\u610f\u88ab\u70b9\u51fb"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;->csjNativeAdDataAdapter:Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->getAdListener()Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;->csjNativeAdDataAdapter:Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->getAdListener()Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;->onAdExposure()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
