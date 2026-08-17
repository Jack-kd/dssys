.class Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/NativeADEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->access$000(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->access$000(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onFeedAdClicked(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdDetailDismiss()V
    .locals 0

    return-void
.end method

.method public onAdDetailShow()V
    .locals 0

    return-void
.end method

.method public onAdError(Lcom/sigmob/windad/WindAdError;)V
    .locals 0

    return-void
.end method

.method public onAdExposed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->access$000(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->access$000(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onFeedAdExposure(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
