.class public Lcom/meishu/sdk/core/MSAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/MSAdConfig$Builder;,
        Lcom/meishu/sdk/core/MSAdConfig$CustomController;
    }
.end annotation


# static fields
.field public static final DEVICE_CONTROL_ALL_CLOSE:I = 0x2

.field public static final DEVICE_CONTROL_ALL_OPEN:I = 0x0

.field public static final DEVICE_CONTROL_ONLY_OAID:I = 0x1

.field public static final DOWNLOAD_CONFIRM_ALWAYS:I = 0x1

.field public static final DOWNLOAD_CONFIRM_AUTO:I = 0x0

.field public static final DOWNLOAD_CONFIRM_NEVER:I = 0x2

.field public static final PLATFORM_BD:Ljava/lang/String; = "BAIDU"

.field public static final PLATFORM_CSJ:Ljava/lang/String; = "CSJ"

.field public static final PLATFORM_GDT:Ljava/lang/String; = "GDT"

.field public static final PLATFORM_KS:Ljava/lang/String; = "KS"

.field public static final SECURE_ALL:I = 0x2

.field public static final SECURE_HTTP:I = 0x0

.field public static final SECURE_HTTPS:I = 0x1

.field private static disableSensorTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static initTime:J

.field private static initUUID:Ljava/lang/String;


# instance fields
.field private advertiserId:[Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private authority:Ljava/lang/String;

.field private canUseSdkPersonalRecommend:Z

.field private customController:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

.field private deny_ader_ids:Ljava/lang/String;

.field private deny_cats:Ljava/lang/String;

.field private deny_cids:Ljava/lang/String;

.field private downloadConfirm:I

.field private enableBootId:Z

.field private enableDebug:Z

.field private enableInstallBroadcast:Z

.field private enableInterstitialAutoClose:Z

.field private enableNotify:Z

.field private enableOaid:Z

.field private ext:Ljava/lang/String;

.field private gdt2Toggle:Z

.field private initSdkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isTest:Z

.field private oaid_cert_name:Ljava/lang/String;

.field private preRenderPaddings:[I

.field private secure:I

.field private showFeedAdLogo:Z

.field private showLogo:Z

.field private splashClickPause:Z

.field private splashClickText:Ljava/lang/String;

.field private splashClickToClosed:Z

.field private splashShowTime:J

.field private useMediation:Z

.field private userId:Ljava/lang/String;

.field private userKeywords:Ljava/lang/String;

.field private userType:Ljava/lang/Integer;

.field private webViewActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private webViewClient:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/meishu/sdk/core/webview/m;",
            ">;"
        }
    .end annotation
.end field

.field private webViewDownloadListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/meishu/sdk/core/webview/d;",
            ">;"
        }
    .end annotation
.end field

.field private wx_appid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/meishu/sdk/core/MSAdConfig;->initUUID:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sput-wide v0, Lcom/meishu/sdk/core/MSAdConfig;->initTime:J

    .line 16
    .line 17
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/meishu/sdk/core/MSAdConfig$Builder;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickPause:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/meishu/sdk/core/MSAdConfig;->gdt2Toggle:Z

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->showLogo:Z

    .line 6
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInterstitialAutoClose:Z

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInstallBroadcast:Z

    .line 8
    iput-boolean v1, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickToClosed:Z

    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableBootId:Z

    .line 10
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->canUseSdkPersonalRecommend:Z

    const-wide/16 v1, 0x1388

    .line 11
    iput-wide v1, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashShowTime:J

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->useMediation:Z

    .line 13
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->appId:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableDebug:Z

    .line 15
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableNotify:Z

    .line 16
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$300(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableOaid:Z

    .line 17
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm:I

    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->secure:I

    .line 19
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$600(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->userId:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$700(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->userType:Ljava/lang/Integer;

    .line 21
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$800(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->userKeywords:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$900(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->customController:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 23
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->webViewDownloadListener:Ljava/lang/Class;

    .line 24
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->webViewClient:Ljava/lang/Class;

    .line 25
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->webViewActivity:Ljava/lang/Class;

    .line 26
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1300(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->ext:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->preRenderPaddings:[I

    .line 28
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->showFeedAdLogo:Z

    .line 29
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1600(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickText:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1700(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->gdt2Toggle:Z

    .line 31
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1800(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_cats:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$1900(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_cids:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_ader_ids:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickPause:Z

    .line 35
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->wx_appid:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2300(Lcom/meishu/sdk/core/MSAdConfig$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->advertiserId:[Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->showLogo:Z

    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->oaid_cert_name:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2600(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->canUseSdkPersonalRecommend:Z

    .line 40
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2700(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInterstitialAutoClose:Z

    .line 41
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2800(Lcom/meishu/sdk/core/MSAdConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashShowTime:J

    .line 42
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$2900(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->useMediation:Z

    .line 43
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$3000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->initSdkMap:Ljava/util/HashMap;

    .line 44
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$3100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInstallBroadcast:Z

    .line 45
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$3200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickToClosed:Z

    .line 46
    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$3300()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 47
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$3400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableBootId:Z

    .line 48
    invoke-static {p1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->access$3500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->authority:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/meishu/sdk/core/MSAdConfig$Builder;Lcom/meishu/sdk/core/MSAdConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/MSAdConfig;-><init>(Lcom/meishu/sdk/core/MSAdConfig$Builder;)V

    return-void
.end method

.method public static initTime()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/meishu/sdk/core/MSAdConfig;->initTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static initUUID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig;->initUUID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public appId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public clearAllSensorTypes()V
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clearDisableSensor(I)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, p1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    return-void

    .line 34
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->customController:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 2
    .line 3
    return-object v0
.end method

.method public disableSensorType(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public downloadConfirm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm:I

    return v0
.end method

.method public downloadConfirm(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm:I

    return-void
.end method

.method public enableDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableDebug:Z

    .line 2
    .line 3
    return v0
.end method

.method public enableInstallBroadcast(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInstallBroadcast:Z

    return-void
.end method

.method public enableInstallBroadcast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInstallBroadcast:Z

    return v0
.end method

.method public enableNotify()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableNotify:Z

    .line 2
    .line 3
    return v0
.end method

.method public enableOaid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableOaid:Z

    .line 2
    .line 3
    return v0
.end method

.method public enableSdkPersonalRecommend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->canUseSdkPersonalRecommend:Z

    .line 2
    .line 3
    return-void
.end method

.method public gdt2Toggle()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->gdt2Toggle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public gdt2Toggle(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->gdt2Toggle:Z

    return-void
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCanUseSdkPersonalRecommend()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->canUseSdkPersonalRecommend:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDisableSensorTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableInterstitialAutoClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInterstitialAutoClose:Z

    .line 2
    .line 3
    return v0
.end method

.method public getInitSdkMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->initSdkMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOaidCertName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->oaid_cert_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSplashShowTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashShowTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getWxAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->wx_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEnableBootId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableBootId:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSplashClickToClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickToClosed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUseMediation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->useMediation:Z

    .line 2
    .line 3
    return v0
.end method

.method public secure()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->secure:I

    .line 2
    .line 3
    return v0
.end method

.method public setEnableInterstitialAutoClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->enableInterstitialAutoClose:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInitSdkMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->initSdkMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public setOaidCertName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->oaid_cert_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSplashClickToClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickToClosed:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSplashShowTime(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0xbb8

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashShowTime:J

    .line 9
    .line 10
    return-void
.end method

.method public setUseMediation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->useMediation:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUserKeyWords(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->userKeywords:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setWxAppid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->wx_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public showFeedAdLogo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->showFeedAdLogo:Z

    .line 2
    .line 3
    return v0
.end method

.method public showLogo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->showLogo:Z

    return-void
.end method

.method public showLogo()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->showLogo:Z

    return v0
.end method

.method public splashClickPause(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickPause:Z

    return-void
.end method

.method public splashClickPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickPause:Z

    return v0
.end method

.method public splashClickText()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickText:Ljava/lang/String;

    return-object v0
.end method

.method public splashClickText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->splashClickText:Ljava/lang/String;

    return-void
.end method

.method public varargs userAdvertiserId([Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->advertiserId:[Ljava/lang/String;

    return-void
.end method

.method public userAdvertiserId()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->advertiserId:[Ljava/lang/String;

    return-object v0
.end method

.method public userDenyAderIds()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_ader_ids:Ljava/lang/String;

    return-object v0
.end method

.method public userDenyAderIds(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_ader_ids:Ljava/lang/String;

    return-void
.end method

.method public userDenyCats()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_cats:Ljava/lang/String;

    return-object v0
.end method

.method public userDenyCats(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_cats:Ljava/lang/String;

    return-void
.end method

.method public userDenyCids()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_cids:Ljava/lang/String;

    return-object v0
.end method

.method public userDenyCids(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->deny_cids:Ljava/lang/String;

    return-void
.end method

.method public userExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public userExt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->ext:Ljava/lang/String;

    return-void
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public userId(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->userId:Ljava/lang/String;

    return-void
.end method

.method public userKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->userKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public userKeywords(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig;->userKeywords:Ljava/lang/String;

    return-void
.end method

.method public userPreRenderPaddings(IIII)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->preRenderPaddings:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->preRenderPaddings:[I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->preRenderPaddings:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 5
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 6
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 7
    aput p4, v0, p1

    return-void
.end method

.method public userPreRenderPaddings()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->preRenderPaddings:[I

    return-object v0
.end method

.method public userType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->userType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public webViewActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->webViewActivity:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public webViewClient()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/meishu/sdk/core/webview/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->webViewClient:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public webViewDownloadListener()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/meishu/sdk/core/webview/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig;->webViewDownloadListener:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method
