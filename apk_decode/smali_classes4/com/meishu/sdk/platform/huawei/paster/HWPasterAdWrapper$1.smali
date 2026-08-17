.class Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/ads/instreamad/InstreamAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdFailed(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/huawei/HWPlatformError;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "\u52a0\u8f7d\u51fa\u9519"

    .line 10
    .line 11
    invoke-direct {v0, v2, p1, v1}, Lcom/meishu/sdk/platform/huawei/HWPlatformError;-><init>(Ljava/lang/String;ILcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ads/instreamad/InstreamAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
