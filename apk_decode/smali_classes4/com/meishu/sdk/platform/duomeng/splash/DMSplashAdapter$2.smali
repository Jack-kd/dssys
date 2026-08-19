.class Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/domob/sdk/platform/interfaces/ad/DMSplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadFail(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->access$100(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLoadSuccess(Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;)V
    .locals 3

    .line 1
    const-string v0, "onLoadSuccess: "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;->getBidPrice()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DMSplashAdapter"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;->startRender()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onRenderFail(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->access$600(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRenderSuccess(Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;->getBidPrice()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 8
    .line 9
    invoke-direct {v2, v3, p1}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;-><init>(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v3, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    new-instance v0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;

    .line 37
    .line 38
    invoke-direct {v0, p0, v2}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2$1;-><init>(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAd;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd;->setSplashAdListener(Lcom/domob/sdk/platform/interfaces/ad/DMTemplateAd$SplashAdListener;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0, v2}, Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;->access$500(Lcom/meishu/sdk/platform/duomeng/splash/DMSplashAdapter;Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
