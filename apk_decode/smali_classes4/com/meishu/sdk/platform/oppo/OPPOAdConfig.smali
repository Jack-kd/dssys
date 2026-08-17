.class public Lcom/meishu/sdk/platform/oppo/OPPOAdConfig;
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
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/meishu/sdk/core/b;->onInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/heytap/msp/mobad/api/InitParams$Builder;

    .line 5
    .line 6
    invoke-direct {p3}, Lcom/heytap/msp/mobad/api/InitParams$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->enableDebug()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p3, v0}, Lcom/heytap/msp/mobad/api/InitParams$Builder;->setDebug(Z)Lcom/heytap/msp/mobad/api/InitParams$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p3}, Lcom/heytap/msp/mobad/api/InitParams$Builder;->build()Lcom/heytap/msp/mobad/api/InitParams;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {}, Lcom/heytap/msp/mobad/api/MobAdManager;->getInstance()Lcom/heytap/msp/mobad/api/MobAdManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p1, p2, p3}, Lcom/heytap/msp/mobad/api/MobAdManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/msp/mobad/api/InitParams;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
