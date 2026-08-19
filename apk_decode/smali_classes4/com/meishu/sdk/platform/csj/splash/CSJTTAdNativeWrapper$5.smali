.class Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

.field public final synthetic val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public final synthetic val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/ComplianceInfo;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;->val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;->val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;->val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;->val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "EXTRA_AD_DURL_KEY"

    .line 21
    .line 22
    filled-new-array {p1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$5;->val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
