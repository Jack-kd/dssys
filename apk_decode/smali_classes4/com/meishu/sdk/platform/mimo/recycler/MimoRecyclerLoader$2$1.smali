.class Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->onAdLoadSuccess(Lcom/miui/zeus/mimo/sdk/NativeAdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

.field public final synthetic val$nativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;Lcom/miui/zeus/mimo/sdk/NativeAdData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->val$nativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

    .line 19
    .line 20
    iget-object v3, v2, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->val$mimoNativeAd:Lcom/miui/zeus/mimo/sdk/NativeAd;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->val$nativeAdData:Lcom/miui/zeus/mimo/sdk/NativeAdData;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 25
    .line 26
    invoke-direct {v1, v3, v4, v2}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;-><init>(Lcom/miui/zeus/mimo/sdk/NativeAd;Lcom/miui/zeus/mimo/sdk/NativeAdData;Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 51
    .line 52
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;->this$1:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 64
    .line 65
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method
