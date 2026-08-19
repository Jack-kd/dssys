.class public final Lcom/smartdigimkt/o3/b;
.super Lcom/smartdigimkt/o3/a;
.source "SourceFile"


# instance fields
.field public A:D

.field public B:D

.field public C:D

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:D

.field public G:Lorg/json/JSONObject;

.field public H:Ljava/lang/String;

.field public I:I

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Ljava/lang/String;

.field public M:I

.field public N:Ljava/lang/String;

.field public O:I

.field public P:Ljava/lang/String;

.field public Q:Lorg/json/JSONObject;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:J

.field public r:J

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Lcom/smartdigimkt/sdk/api/format/SDMLossInfo;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 6
    sget-object v9, Lcom/smartdigimkt/sdk/api/SDMAdConst$CURRENCY;->USD:Lcom/smartdigimkt/sdk/api/SDMAdConst$CURRENCY;

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v9}, Lcom/smartdigimkt/o3/a;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartdigimkt/sdk/api/SDMAdConst$CURRENCY;)V

    const-wide/16 p4, 0x0

    .line 7
    iput-wide p4, p0, Lcom/smartdigimkt/o3/b;->F:D

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/smartdigimkt/o3/b;->K:I

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/smartdigimkt/o3/b;->L:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/smartdigimkt/o3/b;->M:I

    .line 11
    iput-wide p2, p0, Lcom/smartdigimkt/o3/a;->d:D

    return-void
.end method

.method public constructor <init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v9, Lcom/smartdigimkt/sdk/api/SDMAdConst$CURRENCY;->USD:Lcom/smartdigimkt/sdk/api/SDMAdConst$CURRENCY;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/smartdigimkt/o3/a;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartdigimkt/sdk/api/SDMAdConst$CURRENCY;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/smartdigimkt/o3/b;->F:D

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/smartdigimkt/o3/b;->K:I

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/smartdigimkt/o3/b;->L:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/smartdigimkt/o3/b;->M:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/smartdigimkt/o3/b;
    .locals 16

    move-object/from16 v0, p0

    .line 47
    const-string v1, "offer_data"

    const-string v2, "price"

    const-string v3, ""

    :try_start_0
    const-string v4, "is_success"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 48
    :goto_0
    const-string v4, "bid_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 49
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_1

    .line 50
    invoke-virtual {v0, v2, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    goto :goto_1

    :cond_1
    move-wide v12, v9

    .line 51
    :goto_1
    const-string v2, "nurl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v4, "lurl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    const-string v7, "burl"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 54
    const-string v7, "err_msg"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 55
    new-instance v7, Lcom/smartdigimkt/o3/b;

    move-wide v5, v9

    move-wide v9, v12

    move-object v12, v2

    move-object v13, v4

    invoke-direct/range {v7 .. v15}, Lcom/smartdigimkt/o3/b;-><init>(ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "cur"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->n:Ljava/lang/String;

    .line 57
    const-string v2, "unit_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->o:Ljava/lang/String;

    .line 58
    const-string v2, "nw_firm_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v7, Lcom/smartdigimkt/o3/b;->p:I

    .line 59
    const-string v2, "err_code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v7, Lcom/smartdigimkt/o3/b;->m:I

    .line 60
    const-string v2, "expire"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/b;->q:J

    .line 61
    const-string v2, "out_data_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/b;->r:J

    .line 62
    const-string v2, "is_send_winurl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v7, Lcom/smartdigimkt/o3/b;->u:Z

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->x:Ljava/lang/String;

    .line 64
    const-string v2, "tp_bid_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->s:Ljava/lang/String;

    .line 65
    const-string v2, "burl_win"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->y:Ljava/lang/String;

    .line 66
    const-string v2, "ad_source_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->z:Ljava/lang/String;

    .line 67
    const-string v2, "cur_rate"

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/b;->A:D

    .line 68
    const-string v2, "ecpm_api"

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/b;->B:D

    .line 69
    const-string v2, "cny_ecpm_api"

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/b;->C:D

    .line 70
    const-string v2, "precision"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->D:Ljava/lang/String;

    .line 71
    const-string v2, "req_url"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->t:Ljava/lang/String;

    .line 72
    const-string v2, "bd_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v7, Lcom/smartdigimkt/o3/a;->k:I

    .line 73
    const-string v2, "s_pty"

    iget-wide v8, v7, Lcom/smartdigimkt/o3/a;->c:D

    invoke-virtual {v0, v2, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/a;->d:D

    .line 74
    const-string v2, "origin_price"

    invoke-virtual {v0, v2, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/a;->b:D

    .line 75
    const-string v2, "cny_price"

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    iput-wide v8, v7, Lcom/smartdigimkt/o3/a;->l:D

    .line 76
    iget v2, v7, Lcom/smartdigimkt/o3/b;->p:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 77
    iget-wide v8, v7, Lcom/smartdigimkt/o3/b;->B:D

    cmpl-double v4, v8, v5

    if-lez v4, :cond_2

    .line 78
    iput-wide v8, v7, Lcom/smartdigimkt/o3/a;->c:D

    .line 79
    iput-wide v8, v7, Lcom/smartdigimkt/o3/a;->d:D

    .line 80
    :cond_2
    iget-wide v8, v7, Lcom/smartdigimkt/o3/b;->C:D

    cmpl-double v4, v8, v5

    if-lez v4, :cond_3

    .line 81
    iput-wide v8, v7, Lcom/smartdigimkt/o3/a;->l:D

    :cond_3
    const/16 v4, 0x42

    if-ne v2, v4, :cond_4

    .line 82
    const-string v2, "a_r"

    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v7, Lcom/smartdigimkt/o3/b;->F:D

    .line 83
    :cond_4
    const-string v2, "request_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->E:Ljava/lang/String;

    .line 85
    :cond_5
    const-string v2, "adx_ctrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->G:Lorg/json/JSONObject;

    .line 86
    const-string v2, "e_key_data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 88
    const-string v4, "e_c"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    iput-object v4, v7, Lcom/smartdigimkt/o3/b;->H:Ljava/lang/String;

    .line 90
    const-string v4, "cny_e_c"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    iput-object v4, v7, Lcom/smartdigimkt/o3/b;->J:Ljava/lang/String;

    .line 92
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 93
    iput v2, v7, Lcom/smartdigimkt/o3/b;->I:I

    .line 94
    :cond_6
    const-string v2, "adx_mtg_mix_type"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v7, Lcom/smartdigimkt/o3/b;->K:I

    .line 95
    const-string v2, "deal_type"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->L:Ljava/lang/String;

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    const/4 v8, 0x2

    if-eqz v5, :cond_a

    const/16 v9, 0x9f1

    if-eq v5, v9, :cond_9

    const/16 v9, 0x9f4

    if-eq v5, v9, :cond_8

    const v9, 0x134ce

    if-eq v5, v9, :cond_7

    goto :goto_2

    :cond_7
    const-string v5, "PDB"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const-string v5, "PD"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const-string v5, "PA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v4, v8

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v4, v6

    :cond_b
    :goto_2
    if-eqz v4, :cond_e

    const/4 v2, 0x1

    if-eq v4, v2, :cond_d

    if-eq v4, v8, :cond_c

    const/4 v4, 0x0

    .line 97
    iput v4, v7, Lcom/smartdigimkt/o3/b;->M:I

    goto :goto_3

    .line 98
    :cond_c
    iput v2, v7, Lcom/smartdigimkt/o3/b;->M:I

    goto :goto_3

    .line 99
    :cond_d
    iput v8, v7, Lcom/smartdigimkt/o3/b;->M:I

    goto :goto_3

    .line 100
    :cond_e
    iput v6, v7, Lcom/smartdigimkt/o3/b;->M:I

    .line 101
    :goto_3
    const-string v2, "deal_id"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->N:Ljava/lang/String;

    .line 102
    const-string v2, "deal_pri"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v7, Lcom/smartdigimkt/o3/b;->O:I

    .line 103
    const-string v2, "origin_request_id"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    iput-object v2, v7, Lcom/smartdigimkt/o3/a;->j:Ljava/lang/String;

    .line 105
    const-string v2, "x_c"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/smartdigimkt/o3/b;->P:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v7, Lcom/smartdigimkt/o3/b;->Q:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v7

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    const-string v1, "bid_id"

    iget-object v2, p0, Lcom/smartdigimkt/o3/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string v1, "cur"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "origin_price"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/a;->b:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    const-string v1, "price"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/a;->c:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 6
    const-string v1, "nurl"

    iget-object v2, p0, Lcom/smartdigimkt/o3/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "lurl"

    iget-object v2, p0, Lcom/smartdigimkt/o3/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "nw_firm_id"

    iget v2, p0, Lcom/smartdigimkt/o3/b;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v1, "is_success"

    iget-boolean v2, p0, Lcom/smartdigimkt/o3/a;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string v1, "err_code"

    iget v2, p0, Lcom/smartdigimkt/o3/b;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v1, "err_msg"

    iget-object v2, p0, Lcom/smartdigimkt/o3/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "expire"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/b;->q:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    const-string v1, "out_data_time"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/b;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    const-string v1, "is_send_winurl"

    iget-boolean v2, p0, Lcom/smartdigimkt/o3/b;->u:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 16
    const-string v1, "tp_bid_id"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "burl"

    iget-object v2, p0, Lcom/smartdigimkt/o3/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "ad_source_id"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "cur_rate"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/b;->A:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 20
    const-string v1, "ecpm_api"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/b;->B:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 21
    const-string v1, "cny_ecpm_api"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/b;->C:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 22
    const-string v1, "precision"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v1, "req_url"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "bd_type"

    iget v2, p0, Lcom/smartdigimkt/o3/a;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v1, "s_pty"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/a;->d:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 26
    const-string v1, "cny_price"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/a;->l:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 27
    const-string v1, "request_id"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "a_r"

    iget-wide v2, p0, Lcom/smartdigimkt/o3/b;->F:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/smartdigimkt/o3/b;->G:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 30
    const-string v2, "adx_ctrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/smartdigimkt/o3/b;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    const-string v2, "e_c"

    iget-object v3, p0, Lcom/smartdigimkt/o3/b;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v2, "id"

    iget v3, p0, Lcom/smartdigimkt/o3/b;->I:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->J:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    const-string v2, "cny_e_c"

    iget-object v3, p0, Lcom/smartdigimkt/o3/b;->J:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_1
    const-string v2, "e_key_data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_2
    const-string v1, "adx_mtg_mix_type"

    iget v2, p0, Lcom/smartdigimkt/o3/b;->K:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string v1, "deal_type"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v1, "deal_id"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "deal_pri"

    iget v2, p0, Lcom/smartdigimkt/o3/b;->O:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v1, "origin_request_id"

    .line 43
    iget-object v2, p0, Lcom/smartdigimkt/o3/a;->j:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "x_c"

    iget-object v2, p0, Lcom/smartdigimkt/o3/b;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
