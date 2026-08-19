.class public Lcom/anythink/network/toutiao/TTATDownloadAppInfo;
.super Lcom/anythink/core/api/ATAdAppInfo;
.source "SourceFile"


# instance fields
.field public appName:Ljava/lang/String;

.field public appPermissionLink:Ljava/lang/String;

.field public appPrivacyLink:Ljava/lang/String;

.field public appSize:J

.field public appVersion:Ljava/lang/String;

.field public functionLink:Ljava/lang/String;

.field public publisher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ComplianceInfo;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/api/ATAdAppInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appPrivacyLink:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appPermissionLink:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->publisher:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appVersion:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getFunctionDescUrl()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->functionLink:Ljava/lang/String;

    .line 39
    .line 40
    iput-wide p2, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appSize:J

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPermissonUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appPermissionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appPrivacyLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->appVersion:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->functionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;->publisher:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
