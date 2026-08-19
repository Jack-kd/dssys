.class public final Lcom/kwad/sdk/core/b/a/go;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/components/core/innerEc/logger/InnerEcError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    const-string v0, "errorUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->errorUrl:Ljava/lang/String;

    .line 3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->errorUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 4
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->errorUrl:Ljava/lang/String;

    .line 5
    :cond_1
    const-string v1, "pay_order_no"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOrderNo:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOrderNo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOrderNo:Ljava/lang/String;

    .line 8
    :cond_2
    const-string v1, "pay_error_msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payErrorMsg:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payErrorMsg:Ljava/lang/String;

    .line 11
    :cond_3
    const-string v1, "pay_merchant_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payMerchantId:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payMerchantId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payMerchantId:Ljava/lang/String;

    .line 14
    :cond_4
    new-instance v1, Ljava/lang/Integer;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "pay_original_result_code"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOriginalResultCode:I

    .line 15
    const-string v1, "pay_ext_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payExtData:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payExtData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payExtData:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private static b(Lcom/kwad/components/core/innerEc/logger/InnerEcError;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->errorUrl:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const-string v0, "errorUrl"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->errorUrl:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOrderNo:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    const-string v0, "pay_order_no"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOrderNo:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    const-string v0, "pay_error_msg"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payErrorMsg:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payMerchantId:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    const-string v0, "pay_merchant_id"

    iget-object v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payMerchantId:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    const-string v0, "pay_original_result_code"

    iget v2, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOriginalResultCode:I

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payExtData:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    const-string v0, "pay_ext_data"

    iget-object p0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payExtData:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/go;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/go;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcError;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
