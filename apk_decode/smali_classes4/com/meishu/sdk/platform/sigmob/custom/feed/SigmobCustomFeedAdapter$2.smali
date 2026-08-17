.class Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 2
    .line 3
    const/4 p2, -0x1

    .line 4
    const-string v0, "\u52a0\u8f7d\u5931\u8d25"

    .line 5
    .line 6
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdLoad(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/windad/natives/WindNativeAdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->getEcpm()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 58
    .line 59
    new-instance v1, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 60
    .line 61
    invoke-direct {v1, v0, p1}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;-><init>(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;->access$302(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;)Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;->access$300(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;

    .line 77
    .line 78
    invoke-static {p1, p2}, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;->access$400(Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomFeedAdapter;Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method
