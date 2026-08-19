.class Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

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
    .locals 1

    .line 1
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_privacy(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->val$complianceInfo:Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$7;->val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
