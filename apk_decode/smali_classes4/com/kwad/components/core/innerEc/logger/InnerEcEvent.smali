.class public Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;
.super Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# static fields
.field public static final STATUS_ACCOUNT_INFO_EXIST:I = 0x4

.field public static final STATUS_AD_CLICK:I = 0x2

.field public static final STATUS_AD_SHOW:I = 0x1

.field public static final STATUS_AUTH_SUCCESS:I = 0x7

.field public static final STATUS_GET_ACCOUNT_INFO:I = 0x3

.field public static final STATUS_GET_AUTH_CODE_SUCCESS:I = 0x6

.field public static final STATUS_LIVE_ROOM_LAUNCH_SUCCESS:I = 0x9

.field public static final STATUS_PAY_CANCEL:I = 0xd

.field public static final STATUS_PAY_SUCCESS:I = 0xc

.field public static final STATUS_START_AUTH:I = 0x5

.field public static final STATUS_START_AUTH_TYPE:I = 0x138a

.field public static final STATUS_START_AUTH_USER_CANCEL:I = 0x1389

.field public static final STATUS_START_LIVE_ROOM:I = 0x8

.field public static final STATUS_START_LIVE_ROOM_ONCREATE:I = 0x1f41

.field public static final STATUS_START_LIVE_ROOM_ONVIEW_CREATE:I = 0x1f42

.field public static final STATUS_START_LIVE_ROOM_START_LOAD_TK:I = 0x1f43

.field public static final STATUS_START_ORDER_PAGE:I = 0xa

.field public static final STATUS_START_PAY:I = 0xb

.field private static final serialVersionUID:J = 0x2180d8a70891d9b4L


# instance fields
.field public authType:Ljava/lang/String;

.field public clickCancelTime:I

.field public clickHasInnerecFailed:Z

.field public clickLiveCheckEnv:Z

.field public clickUserNowCancel:Z

.field public payErrorMsg:Ljava/lang/String;

.field public payExtData:Ljava/lang/String;

.field public payMerchantId:Ljava/lang/String;

.field public payOrderNo:Ljava/lang/String;

.field public payOriginalResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static copyFrom(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static createAdClickEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Lcom/kwad/components/core/innerEc/local/a;->getCancelCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput v1, v0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickCancelTime:I

    .line 11
    .line 12
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/b;->ru()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-boolean v1, v0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickLiveCheckEnv:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdTemplate;->hasInnerEcFailed()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    iput-boolean p0, v0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickHasInnerecFailed:Z

    .line 23
    .line 24
    return-object v0
.end method

.method public static createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static createEmptyEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
