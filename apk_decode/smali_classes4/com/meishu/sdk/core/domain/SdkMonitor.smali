.class public Lcom/meishu/sdk/core/domain/SdkMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clk:Ljava/lang/String;

.field private err:Ljava/lang/String;

.field private imp:Ljava/lang/String;

.field private req:Ljava/lang/String;

.field private rsp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/meishu/sdk/core/domain/SdkMonitor;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/domain/SdkMonitor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/SdkMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "req"

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/SdkMonitor;->setReq(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "rsp"

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/SdkMonitor;->setRsp(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "imp"

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/SdkMonitor;->setImp(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p0, "clk"

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/SdkMonitor;->setClk(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p0, "err"

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/SdkMonitor;->setErr(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method


# virtual methods
.method public getClk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->clk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->err:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->imp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->req:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRsp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->rsp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->clk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setErr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->err:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->imp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->req:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRsp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkMonitor;->rsp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
