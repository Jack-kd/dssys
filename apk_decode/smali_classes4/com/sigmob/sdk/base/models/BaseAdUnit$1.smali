.class Lcom/sigmob/sdk/base/models/BaseAdUnit$1;
.super Lcom/sigmob/windad/natives/AdAppInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Lcom/sigmob/windad/natives/AdAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPrivacyAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppSize()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->access$000(Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result v0

    return v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDescriptionUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPermissions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPermissionsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPrivacyAgreement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyAgreementUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPrivacyAgreementUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->this$0:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getPermissionsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getPermissions()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getPrivacyAgreementUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getPrivacyAgreement()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getDescriptionUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit$1;->getAppSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "appName %s \n AuthorName %s \n  versionName %s \n permissionsUrl %s \n permissions %s \nprivacyAgreementUrl %s \n privacyAgreement %s \n descriptionUrl %s \n description %s \n  appsize %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
