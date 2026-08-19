.class public Lcom/meishu/sdk/platform/mimo/MimoAdConfig;
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
    move-result-object p1

    .line 5
    new-instance p2, Lcom/meishu/sdk/platform/mimo/MimoAdConfig$1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/mimo/MimoAdConfig$1;-><init>(Lcom/meishu/sdk/platform/mimo/MimoAdConfig;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/miui/zeus/mimo/sdk/MimoSdk;->init(Landroid/content/Context;Lcom/miui/zeus/mimo/sdk/MimoSdk$InitCallback;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->enableDebug()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lcom/miui/zeus/mimo/sdk/MimoSdk;->setDebugOn(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
