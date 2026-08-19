.class public Lcom/anythink/network/meishu/MsATDownloadAppInfo;
.super Lcom/anythink/core/api/ATAdAppInfo;
.source "SourceFile"


# instance fields
.field public appDownloadCount:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public appPackageName:Ljava/lang/String;

.field public appPermissionLink:Ljava/lang/String;

.field public appPrivacyLink:Ljava/lang/String;

.field public appSize:J

.field public appVersion:Ljava/lang/String;

.field public functionLink:Ljava/lang/String;

.field public publisher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/api/ATAdAppInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getDeveloper()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->publisher:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAppVersion()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appVersion:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getPrivacyAgreement()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appPrivacyLink:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAppPremissionUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appPermissionLink:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAppName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appPackageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAppIntro()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appDownloadCount:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAppIntroUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->functionLink:Ljava/lang/String;

    .line 51
    .line 52
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAppSize()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iput-wide v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    :catch_0
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPermissonUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appPermissionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appPrivacyLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownloadCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->appDownloadCount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFunctionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->functionLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;->publisher:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
