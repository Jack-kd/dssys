.class Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/ads/AdFeedbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->onNativeAdLoaded(Lcom/huawei/hms/ads/nativead/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdDisliked()V
    .locals 0

    return-void
.end method

.method public onAdFeedbackShowFailed()V
    .locals 0

    return-void
.end method

.method public onAdLiked()V
    .locals 0

    return-void
.end method
