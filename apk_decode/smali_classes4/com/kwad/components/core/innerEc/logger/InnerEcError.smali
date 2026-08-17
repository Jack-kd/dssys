.class public Lcom/kwad/components/core/innerEc/logger/InnerEcError;
.super Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# static fields
.field public static final CODE_AUTH_ERROR:I = 0x7d0

.field public static final STATUS_AUTH_ERROR:I = 0x2

.field public static final STATUS_H5_ERROR:I = 0x6

.field public static final STATUS_LIVE_PLAY_ERROR:I = 0x4

.field public static final STATUS_LIVE_ROOM_ERROR:I = 0x3

.field public static final STATUS_PAY_ERROR:I = 0x5

.field public static final STATUS_RENDER_ERROR:I = 0x1

.field private static final serialVersionUID:J = -0x3da8179cc02a5ccL


# instance fields
.field public errorUrl:Ljava/lang/String;

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

.method public static copyFrom(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)Lcom/kwad/components/core/innerEc/logger/InnerEcError;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;-><init>()V

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

.method public static createCommonError(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcError;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;-><init>()V

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

.method public static createEmptyError(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/innerEc/logger/InnerEcError;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/commercial/c/a;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
