.class public Lcom/meishu/sdk/core/domain/SdkAdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/domain/SdkAdInfo$GeneralExt;
    }
.end annotation


# instance fields
.field private _err_pst:Ljava/lang/String;

.field private _price:Ljava/lang/String;

.field private _pst:Ljava/lang/String;

.field private _s:Ljava/lang/String;

.field private accept_id:Ljava/lang/String;

.field private act_type:I

.field private ad_type:I

.field private alreadyLoaded:Z

.field private app_id:Ljava/lang/String;

.field private app_key:Ljava/lang/String;

.field private at_rate:I

.field private big_group:Ljava/lang/String;

.field private cache_clk:Ljava/lang/String;

.field private cache_err:Ljava/lang/String;

.field private cache_imp:Ljava/lang/String;

.field private cache_req:Ljava/lang/String;

.field private cache_rsp:Ljava/lang/String;

.field private clk:Ljava/lang/String;

.field private clk_limit:I

.field private cls:Ljava/lang/String;

.field private cod:I

.field private codPrice:I

.field private custom_ext:Ljava/lang/String;

.field private drawing:I

.field private ecpm:I

.field private err:Ljava/lang/String;

.field private eventUrl:[Ljava/lang/String;

.field private expire_timestamp:I

.field private failMsg:Ljava/lang/String;

.field private finalRsp:Ljava/lang/String;

.field private general_ext:Ljava/lang/String;

.field private gmShowEcpm:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private group_id:Ljava/lang/String;

.field private imp:Ljava/lang/String;

.field private insert_new:I

.field private isCache:Z

.field private isCsjGM:Z

.field private isCsjGMBidding:Z

.field private is_bidding:I

.field private loadTime:J

.field private loadedTime:J

.field private maxPrice:I

.field private msLoadedTime:J

.field private originEcpm:I

.field private otype:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private pre:I

.field private price:I

.field private priority:I

.field private req:Ljava/lang/String;

.field private req_id:Ljava/lang/String;

.field private req_uid:I

.field private reward_name:Ljava/lang/String;

.field private reward_num:I

.field private rsp:Ljava/lang/String;

.field private s2sb:Ljava/lang/String;

.field private s_code:Ljava/lang/String;

.field private s_ext:Ljava/lang/String;

.field private score:I

.field private sdk:Ljava/lang/String;

.field private strategy_dealid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->clk_limit:I

    .line 6
    .line 7
    const-string v0, "order"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "__PST__"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_pst:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_err_pst:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "__S__"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_s:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "__PRICE__"

    .line 22
    .line 23
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_price:Ljava/lang/String;

    .line 24
    .line 25
    const/16 v0, 0x64

    .line 26
    .line 27
    iput v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->at_rate:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cod:I

    .line 31
    .line 32
    return-void
.end method

.method private dealWithCod(ILjava/lang/Integer;)I
    .locals 6

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p2, :cond_2

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    if-gt v0, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    int-to-double v0, p1

    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    int-to-double v2, p2

    .line 27
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 28
    .line 29
    sub-double v2, v4, v2

    .line 30
    .line 31
    mul-double/2addr v2, v0

    .line 32
    div-double/2addr v2, v4

    .line 33
    double-to-int p2, v2

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p1

    .line 40
    :catch_0
    move-exception p2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return p1
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 24

    .line 1
    const-string v0, "price"

    const-string v1, "score"

    const-string v2, "group"

    const-string v3, "req_id"

    const-string v4, "cache_err"

    const-string v5, "err"

    const-string v6, "cache_clk"

    const-string v7, "clk"

    const-string v8, "cache_imp"

    const-string v9, "imp"

    const-string v10, "drawing"

    const-string v11, "cache_rsp"

    const-string v12, "finalRsp"

    const-string v13, "rsp"

    const-string v14, "cache_req"

    const-string v15, "req"

    move-object/from16 v16, v0

    const-string v0, "pid"

    move-object/from16 v17, v1

    const-string v1, "app_id"

    move-object/from16 v18, v2

    const-string v2, "cod"

    move-object/from16 v19, v3

    const-string v3, "sdk"

    move-object/from16 v20, v4

    const-string v4, "req_uid"

    move-object/from16 v21, v5

    new-instance v5, Lcom/meishu/sdk/core/domain/SdkAdInfo;

    invoke-direct {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;-><init>()V

    move-object/from16 v22, v6

    .line 2
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v23, v7

    move-object/from16 v7, p0

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReq_uid(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setSdk(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v4

    .line 9
    :goto_1
    invoke-virtual {v5, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCod(I)V

    .line 10
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setApp_id(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setPid(Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReq(Ljava/lang/String;)V

    .line 16
    :cond_5
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_req(Ljava/lang/String;)V

    .line 18
    :cond_6
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    .line 20
    :cond_7
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setFinalRsp(Ljava/lang/String;)V

    .line 22
    :cond_8
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_rsp(Ljava/lang/String;)V

    .line 24
    :cond_9
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setDrawing(I)V

    .line 26
    :cond_a
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    .line 28
    :cond_b
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_imp(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, v23

    .line 30
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setClk(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, v22

    .line 32
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 33
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_clk(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, v21

    .line 34
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 35
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, v20

    .line 36
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 37
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_err(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, v19

    .line 38
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 39
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReq_id(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, v18

    .line 40
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 41
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGroup(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, v17

    .line 42
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 43
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setScore(I)V

    :cond_13
    move-object/from16 v0, v16

    .line 44
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 45
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setPrice(II)V

    .line 46
    :cond_14
    const-string v0, "ecpm"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 47
    const-string v0, "ecpm"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(I)V

    .line 48
    :cond_15
    const-string v0, "gmShowEcpm"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 49
    const-string v0, "gmShowEcpm"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGmShowEcpm(Ljava/lang/String;)V

    .line 50
    :cond_16
    const-string v0, "clk_limit"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 51
    const-string v0, "clk_limit"

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setClk_limit(I)V

    .line 52
    :cond_17
    const-string v0, "insert_new"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 53
    const-string v0, "insert_new"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setInsert_new(I)V

    .line 54
    :cond_18
    const-string v0, "s_code"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 55
    const-string v0, "s_code"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setS_code(Ljava/lang/String;)V

    .line 56
    :cond_19
    const-string v0, "s_ext"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 57
    const-string v0, "s_ext"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setS_ext(Ljava/lang/String;)V

    .line 58
    :cond_1a
    const-string v0, "reward_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 59
    const-string v0, "reward_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReward_name(Ljava/lang/String;)V

    .line 60
    :cond_1b
    const-string v0, "reward_num"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 61
    const-string v0, "reward_num"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setReward_num(I)V

    .line 62
    :cond_1c
    const-string v0, "is_bidding"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 63
    const-string v0, "is_bidding"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setIs_bidding(I)V

    .line 64
    :cond_1d
    const-string v0, "accept_id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 65
    const-string v0, "accept_id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAccept_id(Ljava/lang/String;)V

    .line 66
    :cond_1e
    const-string v0, "strategy_dealid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 67
    const-string v0, "strategy_dealid"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setStrategy_dealid(Ljava/lang/String;)V

    .line 68
    :cond_1f
    const-string v0, "group_id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 69
    const-string v0, "group_id"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGroup_id(Ljava/lang/String;)V

    .line 70
    :cond_20
    const-string v0, "pre"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 71
    const-string v0, "pre"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setPre(I)V

    .line 72
    :cond_21
    const-string v0, "big_group"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 73
    const-string v0, "big_group"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setBig_group(Ljava/lang/String;)V

    .line 74
    :cond_22
    const-string v0, "otype"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 75
    const-string v0, "otype"

    const-string v1, "order"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setOtype(Ljava/lang/String;)V

    .line 76
    :cond_23
    const-string v0, "maxPrice"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 77
    const-string v0, "maxPrice"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setMaxPrice(I)V

    .line 78
    :cond_24
    const-string v0, "loadTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 79
    const-string v0, "loadTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setLoadTime(J)V

    .line 80
    :cond_25
    const-string v0, "loadedTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 81
    const-string v0, "loadedTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setLoadedTime(J)V

    .line 82
    :cond_26
    const-string v0, "expire_timestamp"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 83
    const-string v0, "expire_timestamp"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setExpire_timestamp(I)V

    .line 84
    :cond_27
    const-string v0, "priority"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 85
    const-string v0, "priority"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setPriority(I)V

    .line 86
    :cond_28
    const-string v0, "isCache"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 87
    const-string v0, "isCache"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache(Z)V

    .line 88
    :cond_29
    const-string v0, "s2sb"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 89
    const-string v0, "s2sb"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 90
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setS2sb(Ljava/lang/String;)V

    .line 92
    :cond_2a
    const-string v0, "alreadyLoaded"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 93
    const-string v0, "alreadyLoaded"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAlreadyLoaded(Z)V

    .line 94
    :cond_2b
    const-string v0, "msLoadedTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 95
    const-string v0, "msLoadedTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setMsLoadedTime(J)V

    .line 96
    :cond_2c
    const-string v0, "_pst"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 97
    const-string v0, "_pst"

    const-string v1, "__PST__"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_pst(Ljava/lang/String;)V

    .line 98
    :cond_2d
    const-string v0, "_err_pst"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 99
    const-string v0, "_err_pst"

    const-string v1, "__PST__"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_err_pst(Ljava/lang/String;)V

    .line 100
    :cond_2e
    const-string v0, "_s"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 101
    const-string v0, "_s"

    const-string v1, "__S__"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_s(Ljava/lang/String;)V

    .line 102
    :cond_2f
    const-string v0, "_price"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 103
    const-string v0, "_price"

    const-string v1, "__PRICE__"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_price(Ljava/lang/String;)V

    .line 104
    :cond_30
    const-string v0, "app_key"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 105
    const-string v0, "app_key"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setApp_key(Ljava/lang/String;)V

    .line 106
    :cond_31
    const-string v0, "cls"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 107
    const-string v0, "cls"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCls(Ljava/lang/String;)V

    .line 108
    :cond_32
    const-string v0, "custom_ext"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 109
    const-string v0, "custom_ext"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCustom_ext(Ljava/lang/String;)V

    .line 110
    :cond_33
    const-string v0, "general_ext"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 111
    const-string v0, "general_ext"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGeneral_ext(Ljava/lang/String;)V

    .line 112
    :cond_34
    const-string v0, "act_type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 113
    const-string v0, "act_type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAct_type(I)V

    .line 114
    :cond_35
    const-string v0, "ad_type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 115
    const-string v0, "ad_type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAd_type(I)V

    .line 116
    :cond_36
    const-string v0, "isCsjGM"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 117
    const-string v0, "isCsjGM"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCsjGM(Z)V

    .line 118
    :cond_37
    const-string v0, "isCsjGMBidding"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 119
    const-string v0, "isCsjGMBidding"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCsjGMBidding(Z)V

    .line 120
    :cond_38
    const-string v0, "at_rate"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 121
    const-string v0, "at_rate"

    const/16 v1, 0x64

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setAt_rate(I)V

    .line 122
    :cond_39
    const-string v0, "eventUrl"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 123
    const-string v0, "eventUrl"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 125
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_3a

    .line 126
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 127
    :cond_3a
    invoke-virtual {v5, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEventUrl([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3b
    return-object v5

    .line 128
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeishuSdk_"

    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public getAccept_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->accept_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAct_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->act_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getAd_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->ad_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getAlreadyLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->alreadyLoaded:Z

    .line 2
    .line 3
    return v0
.end method

.method public getApp_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAt_rate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->at_rate:I

    .line 2
    .line 3
    return v0
.end method

.method public getBig_group()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->big_group:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCache_clk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_clk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCache_err()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_err:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCache_imp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_imp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCache_req()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_req:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCache_rsp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_rsp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->clk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClk_limit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->clk_limit:I

    .line 2
    .line 3
    return v0
.end method

.method public getCls()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cls:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->codPrice:I

    .line 2
    .line 3
    return v0
.end method

.method public getCustom_ext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->custom_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->drawing:I

    .line 2
    .line 3
    return v0
.end method

.method public getEcpm()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "bidding"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->ecpm:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->codPrice:I

    .line 15
    .line 16
    return v0
.end method

.method public getErr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->err:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->eventUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpire_timestamp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->expire_timestamp:I

    .line 2
    .line 3
    return v0
.end method

.method public getFailMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->failMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFinalRsp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->finalRsp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGeneral_ext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->general_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGmShowEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->gmShowEcpm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->group:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroup_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->group_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->imp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInsert_new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->insert_new:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_bidding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->is_bidding:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->loadTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLoadedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->loadedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->maxPrice:I

    .line 2
    .line 3
    return v0
.end method

.method public getMsLoadedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->msLoadedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOriginEcpm()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "bidding"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->originEcpm:I

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->price:I

    .line 15
    .line 16
    return v0
.end method

.method public getOtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPre()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->pre:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->price:I

    .line 2
    .line 3
    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getReq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->req:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReq_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->req_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReq_uid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->req_uid:I

    .line 2
    .line 3
    return v0
.end method

.method public getReward_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->reward_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReward_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->reward_num:I

    .line 2
    .line 3
    return v0
.end method

.method public getRsp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->rsp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS2sb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->s2sb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->s_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_ext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->s_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->score:I

    .line 2
    .line 3
    return v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrategy_dealid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->strategy_dealid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_err_pst()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_err_pst:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_price()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_price:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_pst()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_pst:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public get_s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCsjGM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCsjGM:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCsjGMBidding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCsjGMBidding:Z

    .line 2
    .line 3
    return v0
.end method

.method public replace()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getFinalRsp()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCache_rsp()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getLoadTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    sub-long/2addr v3, v5

    .line 22
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p0, v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_pst(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "__PST__"

    .line 34
    .line 35
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    mul-int/lit8 v3, v3, 0xa

    .line 52
    .line 53
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "__PRICE__"

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v6, 0x2

    .line 64
    const-string v7, "ssp"

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    invoke-static {v7}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {p0, v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_price(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :cond_0
    invoke-static {v7}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v7}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setFinalRsp(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_rsp(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public replaceErrorPst(Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCache_err()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getLoadTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    sub-long/2addr v2, v4

    .line 18
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p0, v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_err_pst(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const-string v5, "__PST__"

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_err(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "__MS_ERRNO__"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    const-string v3, "1024"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "__ERROR_CODE__"

    .line 98
    .line 99
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    const-string v6, "__P__"

    .line 112
    .line 113
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v4, 0x0

    .line 118
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const-string v8, "__TIMEOUT__"

    .line 123
    .line 124
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {v0, v2, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_err(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    return-void
.end method

.method public setAccept_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->accept_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAct_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->act_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setAd_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->ad_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setAlreadyLoaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->alreadyLoaded:Z

    .line 2
    .line 3
    return-void
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->app_key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAt_rate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->at_rate:I

    .line 2
    .line 3
    return-void
.end method

.method public setBig_group(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->big_group:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCache_clk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_clk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCache_err(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_err:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCache_imp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_imp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCache_req(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_req:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCache_rsp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_rsp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->clk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClk_limit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->clk_limit:I

    .line 2
    .line 3
    return-void
.end method

.method public setCls(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cls:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cod:I

    .line 2
    .line 3
    return-void
.end method

.method public setCsjGM(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCsjGM:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCsjGMBidding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->isCsjGMBidding:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCustom_ext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->custom_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->drawing:I

    .line 2
    .line 3
    return-void
.end method

.method public setEcpm(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->ecpm:I

    return-void
.end method

.method public setEcpm(Ljava/lang/String;)V
    .locals 11

    const-string v0, "__S__"

    const-string v1, "__PRICE__"

    const-string v2, "ssp"

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 3
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iput v4, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->originEcpm:I

    .line 4
    iget v3, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cod:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->dealWithCod(ILjava/lang/Integer;)I

    move-result v3

    iput v3, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->ecpm:I

    .line 5
    iget v3, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->originEcpm:I

    if-lez v3, :cond_2

    :goto_1
    mul-int/lit8 v3, v3, 0xa

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->price:I

    goto :goto_1

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_price(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->set_s(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->rsp:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 10
    iget-object v5, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->finalRsp:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v5, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v7, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->imp:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v7, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 14
    iget v8, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->ecpm:I

    if-lez v8, :cond_3

    :goto_3
    mul-int/lit8 v8, v8, 0xa

    goto :goto_4

    :cond_3
    iget v8, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->codPrice:I

    goto :goto_3

    :goto_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 15
    const-string v9, "__PRE__"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 16
    iget-object v8, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_rsp:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v8, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 18
    iget-object v9, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->cache_imp:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p0, v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setFinalRsp(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v7}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v8}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_rsp(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setCache_imp(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 25
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public setErr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->err:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEventUrl([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->eventUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExpire_timestamp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->expire_timestamp:I

    .line 2
    .line 3
    return-void
.end method

.method public setFailMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->failMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFinalRsp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->finalRsp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGeneral_ext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->general_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGmShowEcpm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->gmShowEcpm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->group:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->group_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->imp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInsert_new(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->insert_new:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_bidding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->is_bidding:I

    .line 2
    .line 3
    return-void
.end method

.method public setLoadTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->loadTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLoadedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->loadedTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setMaxPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->maxPrice:I

    .line 2
    .line 3
    return-void
.end method

.method public setMsLoadedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->msLoadedTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setOtype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPre(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->pre:I

    .line 2
    .line 3
    return-void
.end method

.method public setPrice(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->price:I

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->dealWithCod(ILjava/lang/Integer;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->codPrice:I

    .line 17
    .line 18
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->priority:I

    .line 2
    .line 3
    return-void
.end method

.method public setReq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->req:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReq_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->req_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReq_uid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->req_uid:I

    .line 2
    .line 3
    return-void
.end method

.method public setReward_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->reward_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReward_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->reward_num:I

    .line 2
    .line 3
    return-void
.end method

.method public setRsp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->rsp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setS2sb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->s2sb:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setS_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->s_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setS_ext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->s_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->score:I

    .line 2
    .line 3
    return-void
.end method

.method public setSdk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->sdk:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStrategy_dealid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->strategy_dealid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set_err_pst(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_err_pst:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set_price(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_price:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set_pst(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_pst:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public set_s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/SdkAdInfo;->_s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
