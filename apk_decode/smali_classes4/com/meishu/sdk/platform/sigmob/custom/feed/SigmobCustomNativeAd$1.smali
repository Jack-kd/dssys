.class Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;->bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd$1;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/feed/SigmobCustomNativeAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onVideoError(Lcom/sigmob/windad/WindAdError;)V
    .locals 0

    return-void
.end method

.method public onVideoLoad()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
