.class public final Lcom/kwad/sdk/core/b/a/gp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "click_cancel_time"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickCancelTime:I

    .line 3
    new-instance v0, Ljava/lang/Boolean;

    const-string v2, "false"

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "click_live_check_env"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickLiveCheckEnv:Z

    .line 4
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "click_user_now_cancel"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickUserNowCancel:Z

    .line 5
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "click_has_innerec_failed"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickHasInnerecFailed:Z

    .line 6
    const-string v0, "auth_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    .line 7
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 8
    iput-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    .line 9
    :cond_1
    const-string v2, "pay_error_msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payErrorMsg:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payErrorMsg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iput-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payErrorMsg:Ljava/lang/String;

    .line 12
    :cond_2
    const-string v2, "pay_order_no"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iput-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    .line 15
    :cond_3
    const-string v2, "pay_merchant_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    iput-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    .line 18
    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "pay_original_result_code"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOriginalResultCode:I

    .line 19
    const-string v1, "pay_ext_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payExtData:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payExtData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iput-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payExtData:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private static b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    const-string v0, "click_cancel_time"

    iget v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickCancelTime:I

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 4
    const-string v0, "click_live_check_env"

    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickLiveCheckEnv:Z

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 5
    const-string v0, "click_user_now_cancel"

    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickUserNowCancel:Z

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 6
    const-string v0, "click_has_innerec_failed"

    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickHasInnerecFailed:Z

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    const-string v0, "auth_type"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    const-string v0, "pay_error_msg"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payErrorMsg:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    const-string v0, "pay_order_no"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    const-string v0, "pay_merchant_id"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    const-string v0, "pay_original_result_code"

    iget v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOriginalResultCode:I

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 16
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payExtData:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    const-string v0, "pay_ext_data"

    iget-object p0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payExtData:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/gp;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/gp;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
