.class Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;->this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;->this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

    new-instance v1, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;

    invoke-direct {v1, v0, p1}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;-><init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V

    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->access$102(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;)Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3$1;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3$1;-><init>(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdInteractionListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;->this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->access$100(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;)Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;->this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;->getBannerView()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;->this$0:Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;

    invoke-static {v1}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->access$100(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;)Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAd;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;->access$400(Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter;Landroid/view/View;Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/platform/pangle/banner/PangleBannerAdapter$3;->onError(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
