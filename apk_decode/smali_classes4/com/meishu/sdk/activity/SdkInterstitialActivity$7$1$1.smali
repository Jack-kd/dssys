.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->onVideoLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1$1;->this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1$1;->this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$702(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Z)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1$1;->this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->d()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1$1;->this$2:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$800(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
