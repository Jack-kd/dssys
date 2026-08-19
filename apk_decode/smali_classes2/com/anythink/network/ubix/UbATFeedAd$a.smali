.class Lcom/anythink/network/ubix/UbATFeedAd$a;
.super Lcom/anythink/core/api/ATAdAppInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATFeedAd;->getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATFeedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATFeedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/anythink/core/api/ATAdAppInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getAppPermissonUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPermissionLink()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPrivacyLink()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppDownloadSize()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppVersion()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getDownloadCount()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFunctionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppIntroduceLink()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd$a;->a:Lcom/anythink/network/ubix/UbATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppPublisher()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
