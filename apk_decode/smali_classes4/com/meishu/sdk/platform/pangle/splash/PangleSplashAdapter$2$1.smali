.class Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;
.super Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$400(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$500(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdShowFailed(Lcom/bytedance/sdk/openadsdk/api/model/PAGErrorModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/model/PAGErrorModel;->getErrorCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/model/PAGErrorModel;->getErrorMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$600(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onAdShowed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;)Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;->access$300(Lcom/meishu/sdk/platform/pangle/splash/PangleSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
