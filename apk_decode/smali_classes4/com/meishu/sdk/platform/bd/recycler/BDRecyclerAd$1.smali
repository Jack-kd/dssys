.class Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;-><init>(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/baidu/mobads/sdk/api/FeedNativeView;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

.field public final synthetic val$bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;->val$bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADError(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;->val$bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;->val$bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p2, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;->val$bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onADExposure()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onADLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$1;->onADLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onADLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/meishu_ad/nativ/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
