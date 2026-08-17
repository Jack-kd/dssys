.class Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->handleDownloadView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

.field public final synthetic val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field public final synthetic val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

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
    .locals 5

    .line 1
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/core/utils/DownloadDialogBean;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBrandName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_name(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_intro(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPrivacyLink()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_privacy(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 39
    .line 40
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    const-wide/16 v3, 0x400

    .line 45
    .line 46
    div-long/2addr v1, v3

    .line 47
    mul-long/2addr v1, v3

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "Mb"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_size(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPublisher()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setDeveloper(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adData:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 73
    .line 74
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPermissionLink()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/DownloadDialogBean;->setApp_permission_url(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$5;->val$adRoot:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0, p1}, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->startActivity(Landroid/content/Context;Lcom/meishu/sdk/core/utils/DownloadDialogBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    return-void
.end method
