.class public Lcom/meishu/sdk/core/MSAdConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/MSAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static disableSensorTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->canUseSdkPersonalRecommend:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableDebug:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableNotify:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableOaid:Z

    .line 13
    .line 14
    iput v1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->downloadConfirm:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    iput v2, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->secure:I

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->showFeedAdLogo:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickPause:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->showLogo:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableInterstitialAutoClose:Z

    .line 26
    .line 27
    const-wide/16 v2, 0x1388

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashShowTime:J

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->useMediation:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableInstallBroadcast:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickToClosed:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableBootId:Z

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableDebug:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->webViewDownloadListener:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->webViewClient:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->webViewActivity:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->preRenderPaddings:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->showFeedAdLogo:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1600(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->gdt2Toggle:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1800(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->deny_cats:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->deny_cids:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableNotify:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->deny_ader_ids:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickPause:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->wx_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2300(Lcom/meishu/sdk/core/MSAdConfig$Builder;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->advertiserId:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->showLogo:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->oaid_cert_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$2600(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->canUseSdkPersonalRecommend:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2700(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableInterstitialAutoClose:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$2800(Lcom/meishu/sdk/core/MSAdConfig$Builder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashShowTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$2900(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->useMediation:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableOaid:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3000(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->initSdkMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$3100(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableInstallBroadcast:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3200(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickToClosed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3300()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->disableSensorTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$3400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableBootId:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$3500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/core/MSAdConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->downloadConfirm:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/core/MSAdConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->secure:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->userType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->userKeywords:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/core/MSAdConfig$Builder;)Lcom/meishu/sdk/core/MSAdConfig$CustomController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->customController:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/meishu/sdk/core/MSAdConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->appId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/meishu/sdk/core/MSAdConfig;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/meishu/sdk/core/MSAdConfig;-><init>(Lcom/meishu/sdk/core/MSAdConfig$Builder;Lcom/meishu/sdk/core/MSAdConfig$1;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v1, "appId\u9519\u8bef"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public customController(Lcom/meishu/sdk/core/MSAdConfig$CustomController;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->customController:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 2
    .line 3
    return-object p0
.end method

.method public disableSensorType(I)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->disableSensorTypes:Ljava/util/List;

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
    sput-object v0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->disableSensorTypes:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->disableSensorTypes:Ljava/util/List;

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
    return-object p0
.end method

.method public downloadConfirm(I)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p0

    .line 11
    :cond_1
    :goto_0
    iput p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->downloadConfirm:I

    .line 12
    .line 13
    return-object p0
.end method

.method public enableBootId(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableBootId:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public enableDebug(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableDebug:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public enableInstallBroadcast(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableInstallBroadcast:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public enableInterstitialAutoClose(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableInterstitialAutoClose:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public enableNotify(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableNotify:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public enableOaid(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableOaid:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public enableSdkPersonalRecommend(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->canUseSdkPersonalRecommend:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public gdt2Toggle(Ljava/lang/Boolean;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->gdt2Toggle:Z

    .line 6
    .line 7
    return-object p0
.end method

.method public secure(I)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq v0, p1, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p0

    .line 11
    :cond_1
    :goto_0
    iput p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->secure:I

    .line 12
    .line 13
    return-object p0
.end method

.method public setAuthority(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->authority:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInitSdkMap(Ljava/util/HashMap;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/meishu/sdk/core/MSAdConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->initSdkMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOaidCertName(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->oaid_cert_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSplashClickToClose(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickToClosed:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSplashShowTime(J)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0xbb8

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashShowTime:J

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setUseMediation(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->useMediation:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setWxAppid(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->wx_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public showFeedAdLogo(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->showFeedAdLogo:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public showLogo(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->showLogo:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public splashClickPause(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickPause:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public splashClickText(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->splashClickText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs userAdvertiserId([Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->advertiserId:[Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public userDenyAderIds(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->deny_ader_ids:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public userDenyCats(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->deny_cats:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public userDenyCids(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->deny_cids:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public userExt(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->ext:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public userKeywords(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->userKeywords:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public userPreRenderPaddings(IIII)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->preRenderPaddings:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->preRenderPaddings:[I

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->preRenderPaddings:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aput p1, v0, v1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    aput p2, v0, p1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    aput p3, v0, p1

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    aput p4, v0, p1

    .line 23
    .line 24
    return-object p0
.end method

.method public userType(I)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->userType:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public webViewActivity(Ljava/lang/Class;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/meishu/sdk/core/MSAdConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->webViewActivity:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public webViewClient(Ljava/lang/Class;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/meishu/sdk/core/webview/m;",
            ">;)",
            "Lcom/meishu/sdk/core/MSAdConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->webViewClient:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public webviewDownloadListener(Ljava/lang/Class;)Lcom/meishu/sdk/core/MSAdConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/meishu/sdk/core/webview/d;",
            ">;)",
            "Lcom/meishu/sdk/core/MSAdConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/MSAdConfig$Builder;->webViewDownloadListener:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method
