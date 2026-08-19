.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$6;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->showStartShakeImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$6;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

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
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$6;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1100(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$6;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1100(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
