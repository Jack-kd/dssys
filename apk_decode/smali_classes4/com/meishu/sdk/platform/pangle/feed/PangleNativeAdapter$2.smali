.class Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd;

    iget-object v2, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;

    invoke-direct {v1, v2, p1}, Lcom/meishu/sdk/platform/pangle/feed/PangleFeedAd;-><init>(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;

    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;->access$100(Lcom/meishu/sdk/platform/pangle/feed/PangleNativeAdapter;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
