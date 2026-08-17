.class public Lcom/meishu/sdk/platform/jd/JDAdConfig;
.super Lcom/meishu/sdk/core/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    instance-of p3, p3, Landroid/app/Application;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/app/Application;

    .line 14
    .line 15
    new-instance p3, Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;

    .line 16
    .line 17
    invoke-direct {p3}, Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p2}, Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;->setAppId(Ljava/lang/String;)Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 p3, 0x1

    .line 25
    invoke-virtual {p2, p3}, Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;->setEnableLog(Z)Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance p3, Lcom/meishu/sdk/platform/jd/JDAdConfig$1;

    .line 30
    .line 31
    invoke-direct {p3, p0}, Lcom/meishu/sdk/platform/jd/JDAdConfig$1;-><init>(Lcom/meishu/sdk/platform/jd/JDAdConfig;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;->setPrivateController(Lcom/jd/ad/sdk/bl/initsdk/JADPrivateController;)Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig$Builder;->build()Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Lcom/jd/ad/sdk/bl/initsdk/JADYunSdk;->init(Landroid/content/Context;Lcom/jd/ad/sdk/bl/initsdk/JADYunSdkConfig;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
