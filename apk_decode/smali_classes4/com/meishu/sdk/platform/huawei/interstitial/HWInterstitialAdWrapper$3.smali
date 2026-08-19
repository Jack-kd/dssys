.class Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/ads/ReportUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->sendGdtWinResult(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public reportFailed(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public reportSuccess()V
    .locals 0

    return-void
.end method
