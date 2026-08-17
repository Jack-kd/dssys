.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$3$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;

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
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$702(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->d()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$3;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$800(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
