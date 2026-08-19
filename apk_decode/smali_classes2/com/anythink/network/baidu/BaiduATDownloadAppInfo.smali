.class public Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;
.super Lcom/anythink/core/api/ATAdAppInfo;
.source "SourceFile"


# instance fields
.field public appName:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public appPrivacyLink:Ljava/lang/String;

.field public appSize:J

.field public appVersion:Ljava/lang/String;

.field public apppermissionLink:Ljava/lang/String;

.field public functionLink:Ljava/lang/String;

.field public publisher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/api/ATAdAppInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPublisher()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->publisher:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppVersion()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appVersion:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPrivacyLink()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appPrivacyLink:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPermissionLink()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->apppermissionLink:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appSize:J

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPackage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appPackageName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppFunctionLink()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->functionLink:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPermissonUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->apppermissionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appPrivacyLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadCount()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getFunctionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->functionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;->publisher:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
