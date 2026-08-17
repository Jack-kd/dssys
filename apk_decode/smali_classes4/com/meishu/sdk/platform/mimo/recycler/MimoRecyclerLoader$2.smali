.class Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/NativeAd$NativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;->loadFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

.field public final synthetic val$mimoNativeAd:Lcom/miui/zeus/mimo/sdk/NativeAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;Lcom/miui/zeus/mimo/sdk/NativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->val$mimoNativeAd:Lcom/miui/zeus/mimo/sdk/NativeAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdLoadFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdLoadFailed"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ": "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MimoRecyclerLoader"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/meishu/sdk/platform/mimo/MimoPlatformError;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/mimo/MimoPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onAdLoadSuccess(Lcom/miui/zeus/mimo/sdk/NativeAdData;)V
    .locals 2

    .line 1
    const-string v0, "MimoRecyclerLoader"

    .line 2
    .line 3
    const-string v1, "NativeAd.onAdLoadSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2$1;-><init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader$2;Lcom/miui/zeus/mimo/sdk/NativeAdData;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
