.class public final Lcom/smartdigimkt/i5/b;
.super Lcom/smartdigimkt/g5/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartdigimkt/g5/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lcom/smartdigimkt/g5/a;)Z
    .locals 21

    move-object/from16 v0, p1

    .line 1
    const-string v1, "0"

    const/4 v2, -0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5
    iget-object v8, v0, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 6
    const-string v9, "request"

    const-string v10, "start"

    const-string v11, ""

    invoke-static {v8, v9, v10, v11}, Lcom/smartdigimkt/c5/w;->a(Lcom/smartdigimkt/q3/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v8, v0, Lcom/smartdigimkt/g5/a;->b:Lcom/smartdigimkt/sdk/api/SDMAdRequest;

    .line 8
    iget v9, v0, Lcom/smartdigimkt/g5/a;->c:I

    .line 9
    iget-object v10, v0, Lcom/smartdigimkt/g5/a;->n:Lcom/smartdigimkt/l3/a;

    .line 10
    iget-object v12, v0, Lcom/smartdigimkt/g5/a;->p:Lcom/smartdigimkt/o3/b;

    if-nez v12, :cond_0

    .line 11
    const-string v11, "bidding result is null"

    goto :goto_0

    .line 12
    :cond_0
    iget-object v13, v0, Lcom/smartdigimkt/g5/a;->l:Lcom/smartdigimkt/a5/e;

    if-nez v13, :cond_1

    .line 13
    const-string v11, "place strategy is null"

    goto :goto_0

    .line 14
    :cond_1
    iget-object v13, v0, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    if-nez v13, :cond_2

    .line 15
    const-string v11, "unit group info is null"

    goto :goto_0

    :cond_2
    if-nez v10, :cond_3

    .line 16
    const-string v11, "ad request info is null"

    .line 17
    :cond_3
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, "10010"

    if-nez v13, :cond_4

    .line 18
    const-string v1, "load fail:"

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    return v6

    :cond_4
    const-string v11, "10008"

    if-eqz v12, :cond_5

    .line 19
    iget-boolean v13, v12, Lcom/smartdigimkt/o3/a;->a:Z

    if-nez v13, :cond_5

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bidding fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v2, v12, Lcom/smartdigimkt/o3/a;->f:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    return v6

    .line 23
    :cond_5
    invoke-static {}, Lcom/smartdigimkt/f3/f;->a()Lcom/smartdigimkt/f3/f;

    move-result-object v13

    .line 24
    iget-object v15, v0, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 25
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object v2

    move/from16 v17, v6

    new-instance v6, Lcom/smartdigimkt/f3/a;

    invoke-direct {v6, v13, v15, v12}, Lcom/smartdigimkt/f3/a;-><init>(Lcom/smartdigimkt/f3/f;Ljava/lang/String;Lcom/smartdigimkt/o3/b;)V

    invoke-virtual {v2, v6}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 27
    iget-object v2, v0, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    const-string v6, "layout_type"

    const/4 v15, 0x2

    if-nez v2, :cond_6

    :goto_1
    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v14

    goto/16 :goto_8

    .line 28
    :cond_6
    iget-object v13, v0, Lcom/smartdigimkt/g5/a;->l:Lcom/smartdigimkt/a5/e;

    if-nez v13, :cond_7

    goto :goto_1

    .line 29
    :cond_7
    iget-object v13, v0, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    if-nez v13, :cond_8

    goto :goto_1

    .line 30
    :cond_8
    iget-object v4, v13, Lcom/smartdigimkt/a5/f;->a:Lcom/smartdigimkt/o3/b;

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move-object/from16 v18, v8

    move/from16 v19, v9

    .line 31
    iget-wide v8, v13, Lcom/smartdigimkt/a5/f;->w:D

    .line 32
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->b0:D

    .line 33
    iget-wide v8, v4, Lcom/smartdigimkt/o3/a;->b:D

    .line 34
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->c0:D

    .line 35
    :try_start_0
    invoke-static {}, Lcom/smartdigimkt/sdk/api/SDMSDK;->getInstance()Lcom/smartdigimkt/sdk/api/SDMSDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartdigimkt/sdk/api/SDMSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v8

    .line 36
    iput-object v8, v2, Lcom/smartdigimkt/q3/a;->L:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :catchall_0
    iget v8, v13, Lcom/smartdigimkt/a5/f;->o:I

    .line 38
    iput v8, v2, Lcom/smartdigimkt/q3/a;->N:I

    .line 39
    iget v8, v13, Lcom/smartdigimkt/a5/f;->b:I

    .line 40
    iput v8, v2, Lcom/smartdigimkt/q3/a;->P:I

    .line 41
    iget-object v8, v13, Lcom/smartdigimkt/a5/f;->k:Ljava/lang/String;

    .line 42
    iput-object v8, v2, Lcom/smartdigimkt/q3/a;->Q:Ljava/lang/String;

    .line 43
    iget-object v8, v13, Lcom/smartdigimkt/a5/f;->d:Ljava/lang/String;

    .line 44
    iput-object v8, v2, Lcom/smartdigimkt/q3/a;->O:Ljava/lang/String;

    .line 45
    iget v8, v13, Lcom/smartdigimkt/a5/f;->m:I

    if-ne v8, v15, :cond_a

    .line 46
    iget-wide v8, v13, Lcom/smartdigimkt/a5/f;->f:D

    .line 47
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->R:D

    .line 48
    iget-wide v8, v13, Lcom/smartdigimkt/a5/f;->s:D

    .line 49
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->T:D

    .line 50
    iget-wide v8, v13, Lcom/smartdigimkt/a5/f;->B:D

    .line 51
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->S:D

    goto :goto_2

    :cond_a
    const-wide/16 v8, 0x0

    .line 52
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->R:D

    .line 53
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->T:D

    .line 54
    iput-wide v8, v2, Lcom/smartdigimkt/q3/a;->S:D

    .line 55
    :goto_2
    iget v8, v13, Lcom/smartdigimkt/a5/f;->g:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 56
    iget v8, v13, Lcom/smartdigimkt/a5/f;->p:I

    if-eq v8, v15, :cond_d

    .line 57
    iget v8, v4, Lcom/smartdigimkt/o3/b;->M:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    .line 58
    const-string v8, "ecpm_api"

    goto :goto_3

    .line 59
    :cond_b
    iget-object v8, v4, Lcom/smartdigimkt/o3/b;->D:Ljava/lang/String;

    .line 60
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto :goto_4

    .line 61
    :cond_c
    iget-object v8, v13, Lcom/smartdigimkt/a5/f;->l:Ljava/lang/String;

    .line 62
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    :cond_d
    :goto_4
    iget v8, v13, Lcom/smartdigimkt/a5/f;->g:I

    .line 64
    iput v8, v2, Lcom/smartdigimkt/q3/a;->Z:I

    .line 65
    :try_start_1
    iget-object v8, v13, Lcom/smartdigimkt/a5/f;->e:Ljava/util/Map;

    .line 66
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 67
    iget-object v15, v2, Lcom/smartdigimkt/q3/a;->c:Ljava/lang/String;

    .line 68
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 69
    iget v15, v13, Lcom/smartdigimkt/a5/f;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v20, v14

    const/4 v14, 0x3

    if-eq v14, v15, :cond_e

    const/4 v14, 0x7

    if-ne v14, v15, :cond_12

    .line 70
    :cond_e
    :try_start_2
    invoke-static {v6, v8}, Lcom/smartdigimkt/c5/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 71
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 72
    :cond_f
    const-string v14, "2"

    .line 73
    :cond_10
    const-string v1, "tpl_type"

    invoke-virtual {v9, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :catchall_1
    move-object/from16 v20, v14

    goto :goto_6

    :cond_11
    move-object/from16 v20, v14

    .line 74
    :cond_12
    :goto_5
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 75
    const-string v1, "render_type"

    .line 76
    invoke-static {v8, v1, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 77
    iput v1, v2, Lcom/smartdigimkt/q3/a;->D:I

    .line 78
    const-string v1, "template_type"

    .line 79
    invoke-static {v8, v1, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    iput v1, v2, Lcom/smartdigimkt/q3/a;->E:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    :catchall_2
    :goto_6
    iget-object v1, v4, Lcom/smartdigimkt/o3/b;->s:Ljava/lang/String;

    .line 82
    iput-object v1, v2, Lcom/smartdigimkt/q3/a;->X:Ljava/lang/String;

    .line 83
    iget-object v1, v13, Lcom/smartdigimkt/a5/f;->c:Ljava/lang/String;

    .line 84
    iput-object v1, v2, Lcom/smartdigimkt/q3/a;->M:Ljava/lang/String;

    .line 85
    iget v1, v13, Lcom/smartdigimkt/a5/f;->v:I

    .line 86
    iput v1, v2, Lcom/smartdigimkt/q3/a;->Y:I

    .line 87
    iget-object v1, v13, Lcom/smartdigimkt/a5/f;->C:Lcom/smartdigimkt/a5/c;

    if-nez v1, :cond_13

    goto :goto_7

    .line 88
    :cond_13
    iget-object v8, v1, Lcom/smartdigimkt/a5/c;->b:Ljava/lang/String;

    .line 89
    iput-object v8, v2, Lcom/smartdigimkt/q3/a;->U:Ljava/lang/String;

    .line 90
    iget-object v8, v1, Lcom/smartdigimkt/a5/c;->f:Ljava/lang/String;

    .line 91
    iput-object v8, v2, Lcom/smartdigimkt/q3/a;->V:Ljava/lang/String;

    .line 92
    iget v8, v1, Lcom/smartdigimkt/a5/c;->d:I

    .line 93
    iput v8, v2, Lcom/smartdigimkt/q3/a;->W:I

    .line 94
    iget-object v1, v1, Lcom/smartdigimkt/a5/c;->a:Ljava/lang/String;

    .line 95
    iput-object v1, v2, Lcom/smartdigimkt/q3/a;->a0:Ljava/lang/String;

    .line 96
    :goto_7
    iget v1, v4, Lcom/smartdigimkt/o3/b;->M:I

    if-lez v1, :cond_14

    .line 97
    iget-object v1, v4, Lcom/smartdigimkt/o3/b;->L:Ljava/lang/String;

    .line 98
    iput-object v1, v2, Lcom/smartdigimkt/q3/a;->J:Ljava/lang/String;

    .line 99
    :cond_14
    iget-object v1, v4, Lcom/smartdigimkt/o3/b;->N:Ljava/lang/String;

    .line 100
    iput-object v1, v2, Lcom/smartdigimkt/q3/a;->K:Ljava/lang/String;

    .line 101
    iget-object v1, v4, Lcom/smartdigimkt/o3/b;->P:Ljava/lang/String;

    .line 102
    iput-object v1, v2, Lcom/smartdigimkt/q3/a;->m:Ljava/lang/String;

    .line 103
    iget-object v1, v4, Lcom/smartdigimkt/o3/a;->j:Ljava/lang/String;

    .line 104
    iput-object v1, v2, Lcom/smartdigimkt/q3/a;->q:Ljava/lang/String;

    .line 105
    :goto_8
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartdigimkt/y3/d;->a(Landroid/content/Context;)Lcom/smartdigimkt/y3/d;

    move-result-object v1

    .line 106
    iget-object v2, v0, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    .line 107
    invoke-virtual {v1, v4, v2, v8, v9}, Lcom/smartdigimkt/y3/d;->a(ILcom/smartdigimkt/q3/a;J)V

    .line 108
    iget-object v1, v0, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    .line 109
    iget-object v2, v12, Lcom/smartdigimkt/o3/b;->z:Ljava/lang/String;

    .line 110
    iget-object v4, v1, Lcom/smartdigimkt/a5/f;->k:Ljava/lang/String;

    .line 111
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 112
    iget-object v2, v12, Lcom/smartdigimkt/o3/b;->z:Ljava/lang/String;

    .line 113
    iget-object v1, v1, Lcom/smartdigimkt/a5/f;->k:Ljava/lang/String;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bidding fail:bid result adsource("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") id not match unitgroup adsource("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v11, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    return v17

    .line 116
    :cond_15
    invoke-virtual {v0}, Lcom/smartdigimkt/g5/a;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    iget-object v8, v1, Lcom/smartdigimkt/a5/f;->e:Ljava/util/Map;

    if-eqz v8, :cond_16

    .line 119
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    .line 120
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_16
    if-eqz v18, :cond_17

    .line 121
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getExtraMap()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getExtraMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    .line 122
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getExtraMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 123
    :cond_17
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v2, 0x0

    goto :goto_9

    .line 124
    :cond_18
    iget-object v2, v1, Lcom/smartdigimkt/a5/f;->e:Ljava/util/Map;

    .line 125
    :cond_19
    :goto_9
    iget-object v8, v0, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 126
    iget v9, v0, Lcom/smartdigimkt/g5/a;->c:I

    const-string v11, "orientation"

    const/4 v12, 0x4

    const-string v13, "1"

    if-eqz v2, :cond_1a

    .line 127
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1b

    :cond_1a
    :goto_a
    const/4 v3, 0x0

    goto/16 :goto_13

    :cond_1b
    const-string v14, "close_button"

    const-string v15, "v_m"

    if-eqz v9, :cond_27

    const-string v8, "s_c_t"

    const/4 v4, 0x1

    if-eq v9, v4, :cond_26

    const/4 v4, 0x2

    if-eq v9, v4, :cond_24

    const/4 v4, 0x3

    if-eq v9, v4, :cond_1f

    if-eq v9, v12, :cond_1c

    goto :goto_a

    .line 128
    :cond_1c
    invoke-static {v2, v11, v5}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "countdown"

    invoke-static {v2, v8, v4}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 130
    const-string v8, "end_cls"

    .line 131
    invoke-static {v2, v8, v5}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 132
    const-string v9, "allows_skip"

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 133
    invoke-static {v2, v9, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_1e

    :cond_1d
    const/4 v9, 0x1

    goto :goto_b

    :cond_1e
    const/4 v14, 0x1

    if-ne v9, v14, :cond_1d

    move/from16 v9, v17

    :goto_b
    mul-int/lit16 v4, v4, 0x3e8

    .line 134
    new-instance v14, Lcom/smartdigimkt/j1/g;

    invoke-direct {v14}, Lcom/smartdigimkt/j1/g;-><init>()V

    move/from16 v15, v17

    .line 135
    iput v15, v14, Lcom/smartdigimkt/j1/g;->a:I

    .line 136
    iput v15, v14, Lcom/smartdigimkt/j1/g;->b:I

    .line 137
    iput v15, v14, Lcom/smartdigimkt/j1/g;->c:I

    const/4 v12, 0x0

    .line 138
    iput-object v12, v14, Lcom/smartdigimkt/j1/g;->d:Ljava/lang/String;

    .line 139
    iput v3, v14, Lcom/smartdigimkt/j1/g;->e:I

    .line 140
    iput v4, v14, Lcom/smartdigimkt/j1/g;->f:I

    .line 141
    iput v9, v14, Lcom/smartdigimkt/j1/g;->g:I

    .line 142
    iput v15, v14, Lcom/smartdigimkt/j1/g;->i:I

    .line 143
    iput v15, v14, Lcom/smartdigimkt/j1/g;->h:I

    .line 144
    iput-object v12, v14, Lcom/smartdigimkt/j1/g;->j:Ljava/lang/String;

    .line 145
    iput-boolean v15, v14, Lcom/smartdigimkt/j1/g;->k:Z

    .line 146
    iput v8, v14, Lcom/smartdigimkt/j1/g;->l:I

    .line 147
    iput-object v12, v14, Lcom/smartdigimkt/j1/g;->m:Lorg/json/JSONArray;

    .line 148
    iput-object v12, v14, Lcom/smartdigimkt/j1/g;->n:Ljava/lang/String;

    move-object v3, v12

    goto/16 :goto_12

    .line 149
    :cond_1f
    invoke-static {v2, v15, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 150
    invoke-static {v2, v8, v3}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 151
    const-string v8, "inter_type"

    .line 152
    invoke-static {v2, v8, v13}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v10, :cond_22

    .line 153
    iget v9, v10, Lcom/smartdigimkt/l3/a;->j:I

    const/16 v12, 0x43

    if-ne v9, v12, :cond_22

    .line 154
    const-string v9, "unit_type"

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 155
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_20

    .line 156
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_21

    :cond_20
    const/4 v9, 0x2

    goto :goto_c

    :cond_21
    const/4 v9, 0x1

    goto :goto_c

    :cond_22
    const/4 v9, 0x0

    :goto_c
    if-lez v9, :cond_23

    const/4 v14, 0x1

    if-ne v9, v14, :cond_23

    const/4 v9, 0x1

    goto :goto_d

    :cond_23
    const/4 v9, 0x0

    .line 157
    :goto_d
    new-instance v12, Lcom/smartdigimkt/j1/g;

    invoke-direct {v12}, Lcom/smartdigimkt/j1/g;-><init>()V

    .line 158
    iput v4, v12, Lcom/smartdigimkt/j1/g;->a:I

    .line 159
    iput v3, v12, Lcom/smartdigimkt/j1/g;->b:I

    const/4 v15, 0x0

    .line 160
    iput v15, v12, Lcom/smartdigimkt/j1/g;->c:I

    const/4 v3, 0x0

    .line 161
    iput-object v3, v12, Lcom/smartdigimkt/j1/g;->d:Ljava/lang/String;

    .line 162
    iput v15, v12, Lcom/smartdigimkt/j1/g;->e:I

    .line 163
    iput v15, v12, Lcom/smartdigimkt/j1/g;->f:I

    .line 164
    iput v15, v12, Lcom/smartdigimkt/j1/g;->g:I

    .line 165
    iput v15, v12, Lcom/smartdigimkt/j1/g;->i:I

    .line 166
    iput v15, v12, Lcom/smartdigimkt/j1/g;->h:I

    .line 167
    iput-object v8, v12, Lcom/smartdigimkt/j1/g;->j:Ljava/lang/String;

    .line 168
    iput-boolean v9, v12, Lcom/smartdigimkt/j1/g;->k:Z

    .line 169
    iput v15, v12, Lcom/smartdigimkt/j1/g;->l:I

    .line 170
    iput-object v3, v12, Lcom/smartdigimkt/j1/g;->m:Lorg/json/JSONArray;

    .line 171
    iput-object v3, v12, Lcom/smartdigimkt/j1/g;->n:Ljava/lang/String;

    goto/16 :goto_14

    .line 172
    :cond_24
    const-string v3, "size"

    const-string v4, "320x50"

    .line 173
    invoke-static {v2, v3, v4}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-static {v2, v14, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v18, :cond_25

    .line 175
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdWidth()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdHeight()I

    move-result v9

    goto :goto_e

    :cond_25
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 176
    :goto_e
    new-instance v14, Lcom/smartdigimkt/j1/g;

    invoke-direct {v14}, Lcom/smartdigimkt/j1/g;-><init>()V

    const/4 v15, 0x0

    .line 177
    iput v15, v14, Lcom/smartdigimkt/j1/g;->a:I

    .line 178
    iput v15, v14, Lcom/smartdigimkt/j1/g;->b:I

    .line 179
    iput v4, v14, Lcom/smartdigimkt/j1/g;->c:I

    .line 180
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->d:Ljava/lang/String;

    .line 181
    iput v15, v14, Lcom/smartdigimkt/j1/g;->e:I

    .line 182
    iput v15, v14, Lcom/smartdigimkt/j1/g;->f:I

    .line 183
    iput v15, v14, Lcom/smartdigimkt/j1/g;->g:I

    .line 184
    iput v9, v14, Lcom/smartdigimkt/j1/g;->i:I

    .line 185
    iput v8, v14, Lcom/smartdigimkt/j1/g;->h:I

    const/4 v3, 0x0

    .line 186
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->j:Ljava/lang/String;

    .line 187
    iput-boolean v15, v14, Lcom/smartdigimkt/j1/g;->k:Z

    .line 188
    iput v15, v14, Lcom/smartdigimkt/j1/g;->l:I

    .line 189
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->m:Lorg/json/JSONArray;

    .line 190
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->n:Ljava/lang/String;

    goto/16 :goto_12

    .line 191
    :cond_26
    invoke-static {v2, v15, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 192
    invoke-static {v2, v8, v3}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 193
    new-instance v14, Lcom/smartdigimkt/j1/g;

    invoke-direct {v14}, Lcom/smartdigimkt/j1/g;-><init>()V

    .line 194
    iput v4, v14, Lcom/smartdigimkt/j1/g;->a:I

    .line 195
    iput v3, v14, Lcom/smartdigimkt/j1/g;->b:I

    const/4 v15, 0x0

    .line 196
    iput v15, v14, Lcom/smartdigimkt/j1/g;->c:I

    const/4 v3, 0x0

    .line 197
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->d:Ljava/lang/String;

    .line 198
    iput v15, v14, Lcom/smartdigimkt/j1/g;->e:I

    .line 199
    iput v15, v14, Lcom/smartdigimkt/j1/g;->f:I

    .line 200
    iput v15, v14, Lcom/smartdigimkt/j1/g;->g:I

    .line 201
    iput v15, v14, Lcom/smartdigimkt/j1/g;->i:I

    .line 202
    iput v15, v14, Lcom/smartdigimkt/j1/g;->h:I

    .line 203
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->j:Ljava/lang/String;

    .line 204
    iput-boolean v15, v14, Lcom/smartdigimkt/j1/g;->k:Z

    .line 205
    iput v15, v14, Lcom/smartdigimkt/j1/g;->l:I

    .line 206
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->m:Lorg/json/JSONArray;

    .line 207
    iput-object v3, v14, Lcom/smartdigimkt/j1/g;->n:Ljava/lang/String;

    goto/16 :goto_12

    .line 208
    :cond_27
    invoke-static {v2, v14, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 209
    invoke-static {v2, v15, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 210
    const-string v9, "video_autoplay"

    .line 211
    invoke-static {v2, v9, v13}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 212
    invoke-static {v6, v2}, Lcom/smartdigimkt/c5/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 213
    invoke-static {}, Lcom/smartdigimkt/x/l;->a()Lcom/smartdigimkt/x/l;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/smartdigimkt/x/l;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v14

    goto :goto_f

    :cond_28
    const/4 v14, 0x0

    :goto_f
    if-nez v12, :cond_2a

    if-eqz v18, :cond_29

    .line 214
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getNativeVideoAutoPlay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 215
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getNativeVideoAutoPlay()Ljava/lang/String;

    move-result-object v9

    :cond_29
    const/4 v4, 0x0

    :cond_2a
    const/4 v12, -0x2

    if-eqz v18, :cond_2c

    .line 216
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdWidth()I

    move-result v15

    if-eqz v15, :cond_2b

    .line 217
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdWidth()I

    move-result v15

    goto :goto_10

    :cond_2b
    const/4 v15, -0x1

    .line 218
    :goto_10
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdHeight()I

    move-result v16

    if-eqz v16, :cond_2d

    .line 219
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdHeight()I

    move-result v12

    goto :goto_11

    :cond_2c
    const/4 v15, -0x1

    :cond_2d
    :goto_11
    move-object/from16 v16, v8

    if-lez v15, :cond_2e

    .line 220
    invoke-static/range {v16 .. v16}, Lcom/smartdigimkt/c5/h;->j(Landroid/content/Context;)I

    move-result v8

    if-le v15, v8, :cond_2e

    move v15, v8

    :cond_2e
    if-lez v12, :cond_2f

    .line 221
    invoke-static/range {v16 .. v16}, Lcom/smartdigimkt/c5/h;->i(Landroid/content/Context;)I

    move-result v8

    if-le v12, v8, :cond_2f

    move v12, v8

    .line 222
    :cond_2f
    new-instance v8, Lcom/smartdigimkt/j1/g;

    invoke-direct {v8}, Lcom/smartdigimkt/j1/g;-><init>()V

    .line 223
    iput v4, v8, Lcom/smartdigimkt/j1/g;->a:I

    const/4 v4, 0x0

    .line 224
    iput v4, v8, Lcom/smartdigimkt/j1/g;->b:I

    .line 225
    iput v3, v8, Lcom/smartdigimkt/j1/g;->c:I

    const/4 v3, 0x0

    .line 226
    iput-object v3, v8, Lcom/smartdigimkt/j1/g;->d:Ljava/lang/String;

    .line 227
    iput v4, v8, Lcom/smartdigimkt/j1/g;->e:I

    .line 228
    iput v4, v8, Lcom/smartdigimkt/j1/g;->f:I

    .line 229
    iput v4, v8, Lcom/smartdigimkt/j1/g;->g:I

    .line 230
    iput v12, v8, Lcom/smartdigimkt/j1/g;->i:I

    .line 231
    iput v15, v8, Lcom/smartdigimkt/j1/g;->h:I

    .line 232
    iput-object v3, v8, Lcom/smartdigimkt/j1/g;->j:Ljava/lang/String;

    .line 233
    iput-boolean v4, v8, Lcom/smartdigimkt/j1/g;->k:Z

    .line 234
    iput v4, v8, Lcom/smartdigimkt/j1/g;->l:I

    .line 235
    iput-object v14, v8, Lcom/smartdigimkt/j1/g;->m:Lorg/json/JSONArray;

    .line 236
    iput-object v9, v8, Lcom/smartdigimkt/j1/g;->n:Ljava/lang/String;

    move-object v14, v8

    :goto_12
    move-object v12, v14

    goto :goto_14

    :goto_13
    move-object v12, v3

    .line 237
    :goto_14
    iput-object v12, v0, Lcom/smartdigimkt/g5/a;->o:Lcom/smartdigimkt/j1/g;

    if-eqz v10, :cond_33

    if-eqz v19, :cond_32

    move/from16 v4, v19

    const/4 v8, 0x4

    if-eq v4, v8, :cond_30

    goto :goto_15

    .line 238
    :cond_30
    invoke-static {v2, v11, v5}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-virtual {v5, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v18, :cond_31

    .line 241
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "key_width"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getAdHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "key_height"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_31
    iput-object v5, v10, Lcom/smartdigimkt/l3/a;->s:Ljava/util/HashMap;

    goto :goto_15

    :cond_32
    move/from16 v4, v19

    .line 244
    invoke-static {v6, v2}, Lcom/smartdigimkt/c5/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 245
    iput-boolean v2, v10, Lcom/smartdigimkt/l3/a;->u:Z

    .line 246
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartdigimkt/z4/d;->a()Lcom/smartdigimkt/a5/a;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 247
    iget-boolean v2, v2, Lcom/smartdigimkt/a5/a;->P:Z

    .line 248
    iput-boolean v2, v10, Lcom/smartdigimkt/l3/a;->t:Z

    goto :goto_15

    :cond_33
    move/from16 v4, v19

    :cond_34
    :goto_15
    if-eqz v10, :cond_44

    if-eqz v4, :cond_39

    const/4 v14, 0x1

    if-eq v4, v14, :cond_38

    const/4 v2, 0x2

    if-eq v4, v2, :cond_37

    const/4 v14, 0x3

    if-eq v4, v14, :cond_36

    const/4 v8, 0x4

    if-eq v4, v8, :cond_35

    move-object v12, v3

    goto :goto_16

    .line 249
    :cond_35
    new-instance v12, Lcom/smartdigimkt/j1/l;

    .line 250
    iget-object v2, v0, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 251
    invoke-direct {v12, v2, v10, v1}, Lcom/smartdigimkt/j1/l;-><init>(Landroid/content/Context;Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/a5/f;)V

    goto :goto_16

    .line 252
    :cond_36
    new-instance v12, Lcom/smartdigimkt/j1/h;

    .line 253
    iget-object v2, v0, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 254
    invoke-direct {v12, v2, v10, v1}, Lcom/smartdigimkt/j1/h;-><init>(Landroid/content/Context;Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/a5/f;)V

    goto :goto_16

    .line 255
    :cond_37
    new-instance v12, Lcom/smartdigimkt/j1/a;

    .line 256
    iget-object v2, v0, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 257
    invoke-direct {v12, v2, v10, v1}, Lcom/smartdigimkt/j1/a;-><init>(Landroid/content/Context;Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/a5/f;)V

    goto :goto_16

    .line 258
    :cond_38
    new-instance v12, Lcom/smartdigimkt/j1/j;

    .line 259
    iget-object v2, v0, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 260
    invoke-direct {v12, v2, v10, v1}, Lcom/smartdigimkt/j1/j;-><init>(Landroid/content/Context;Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/a5/f;)V

    goto :goto_16

    .line 261
    :cond_39
    new-instance v12, Lcom/smartdigimkt/j1/i;

    .line 262
    iget-object v2, v0, Lcom/smartdigimkt/g5/a;->a:Landroid/content/Context;

    .line 263
    invoke-direct {v12, v2, v10, v1}, Lcom/smartdigimkt/j1/i;-><init>(Landroid/content/Context;Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/a5/f;)V

    :goto_16
    if-eqz v12, :cond_43

    if-eqz v18, :cond_3a

    .line 264
    invoke-virtual/range {v18 .. v18}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getCustomEventMap()Ljava/util/Map;

    move-result-object v4

    goto :goto_17

    :cond_3a
    move-object v4, v3

    :goto_17
    if-nez v4, :cond_3b

    .line 265
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 266
    :cond_3b
    iput-object v4, v12, Lcom/smartdigimkt/j1/f;->h:Ljava/util/Map;

    .line 267
    iget-object v1, v0, Lcom/smartdigimkt/g5/a;->o:Lcom/smartdigimkt/j1/g;

    .line 268
    invoke-virtual {v12, v1}, Lcom/smartdigimkt/j1/f;->a(Lcom/smartdigimkt/j1/g;)V

    .line 269
    iget-object v1, v0, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 270
    iput-object v1, v12, Lcom/smartdigimkt/j1/f;->l:Lcom/smartdigimkt/q3/a;

    .line 271
    new-instance v1, Lcom/smartdigimkt/i5/a;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v12, v0}, Lcom/smartdigimkt/i5/a;-><init>(Lcom/smartdigimkt/i5/b;Lcom/smartdigimkt/j1/f;Lcom/smartdigimkt/g5/a;)V

    .line 272
    new-instance v3, Lcom/smartdigimkt/j1/b;

    invoke-direct {v3, v12, v1}, Lcom/smartdigimkt/j1/b;-><init>(Lcom/smartdigimkt/j1/f;Lcom/smartdigimkt/i5/a;)V

    .line 273
    iget-object v0, v12, Lcom/smartdigimkt/j1/f;->h:Ljava/util/Map;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 274
    iget-object v0, v12, Lcom/smartdigimkt/j1/f;->h:Ljava/util/Map;

    const-string v1, "sdm_e_l_params"

    .line 275
    invoke-static {v0, v1, v7}, Lcom/smartdigimkt/c5/k;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_3c

    goto/16 :goto_19

    .line 276
    :cond_3c
    new-instance v0, Lcom/smartdigimkt/j1/c;

    invoke-direct {v0, v3}, Lcom/smartdigimkt/j1/c;-><init>(Lcom/smartdigimkt/j1/b;)V

    .line 277
    invoke-virtual {v12}, Lcom/smartdigimkt/j1/f;->b()I

    move-result v1

    invoke-static {v1}, Lcom/smartdigimkt/j1/f;->a(I)Z

    move-result v1

    .line 278
    iget-object v4, v12, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    iget-object v5, v12, Lcom/smartdigimkt/j1/f;->e:Lcom/smartdigimkt/m3/b;

    iget-object v6, v12, Lcom/smartdigimkt/j1/f;->d:Lcom/smartdigimkt/j1/g;

    invoke-static {v4, v5, v6}, Lcom/smartdigimkt/o1/a;->a(Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/m3/k;Lcom/smartdigimkt/j1/g;)V

    if-eqz v1, :cond_3e

    .line 279
    invoke-virtual {v3}, Lcom/smartdigimkt/j1/b;->b()V

    :cond_3d
    :goto_18
    const/16 v17, 0x0

    goto/16 :goto_1d

    .line 280
    :cond_3e
    iget-object v1, v12, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    if-eqz v1, :cond_3d

    .line 281
    iget-object v1, v12, Lcom/smartdigimkt/j1/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartdigimkt/k1/h;->a(Landroid/content/Context;)Lcom/smartdigimkt/k1/h;

    move-result-object v4

    iget-object v5, v12, Lcom/smartdigimkt/j1/f;->e:Lcom/smartdigimkt/m3/b;

    iget-object v6, v12, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    iget-object v7, v12, Lcom/smartdigimkt/j1/f;->d:Lcom/smartdigimkt/j1/g;

    new-instance v8, Lcom/smartdigimkt/j1/d;

    invoke-direct {v8, v0}, Lcom/smartdigimkt/j1/d;-><init>(Lcom/smartdigimkt/j1/c;)V

    .line 282
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    move-result-object v0

    new-instance v3, Lcom/smartdigimkt/k1/d;

    invoke-direct/range {v3 .. v8}, Lcom/smartdigimkt/k1/d;-><init>(Lcom/smartdigimkt/k1/h;Lcom/smartdigimkt/m3/b;Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/j1/g;Lcom/smartdigimkt/j1/d;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 285
    iget-object v4, v0, Lcom/smartdigimkt/b4/e;->a:Lcom/smartdigimkt/b4/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/smartdigimkt/b4/b;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 286
    invoke-virtual {v3}, Lcom/smartdigimkt/k1/d;->run()V

    goto :goto_18

    .line 287
    :cond_3f
    new-instance v1, Lcom/smartdigimkt/b4/d;

    invoke-direct {v1, v3}, Lcom/smartdigimkt/b4/d;-><init>(Ljava/lang/Runnable;)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 289
    invoke-virtual {v0, v1, v4}, Lcom/smartdigimkt/b4/e;->a(Lcom/smartdigimkt/b4/g;I)V

    goto :goto_18

    .line 290
    :cond_40
    :goto_19
    :try_start_3
    iget-object v0, v12, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lcom/smartdigimkt/l3/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, v12, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    iget-object v0, v0, Lcom/smartdigimkt/l3/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_1a

    .line 291
    :cond_41
    invoke-static {}, Lcom/smartdigimkt/y3/b;->a()Lcom/smartdigimkt/y3/b;

    move-result-object v0

    iget-object v1, v12, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/smartdigimkt/l3/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/smartdigimkt/l3/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {}, Lcom/smartdigimkt/y3/b;->a()Lcom/smartdigimkt/y3/b;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 294
    invoke-virtual {v1, v0}, Lcom/smartdigimkt/y3/b;->a(Ljava/lang/String;)Lcom/smartdigimkt/m3/j;

    move-result-object v1

    .line 295
    iput-wide v4, v1, Lcom/smartdigimkt/m3/j;->a:J

    .line 296
    iget-object v1, v12, Lcom/smartdigimkt/j1/f;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartdigimkt/k1/h;->a(Landroid/content/Context;)Lcom/smartdigimkt/k1/h;

    move-result-object v1

    iget-object v4, v12, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    iget-object v5, v12, Lcom/smartdigimkt/j1/f;->k:Lcom/smartdigimkt/o3/b;

    iget-object v6, v12, Lcom/smartdigimkt/j1/f;->d:Lcom/smartdigimkt/j1/g;

    new-instance v7, Lcom/smartdigimkt/j1/e;

    invoke-direct {v7, v12, v0, v3}, Lcom/smartdigimkt/j1/e;-><init>(Lcom/smartdigimkt/j1/f;Ljava/lang/String;Lcom/smartdigimkt/j1/b;)V

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/smartdigimkt/k1/h;->a(Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/o3/b;Lcom/smartdigimkt/j1/g;Lcom/smartdigimkt/j1/e;)V

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    goto :goto_1b

    .line 297
    :cond_42
    :goto_1a
    const-string v0, "30001"

    const-string v1, "bidid\u3001placementid can not be null!"

    .line 298
    new-instance v4, Lcom/smartdigimkt/i0/f;

    invoke-direct {v4, v0, v1}, Lcom/smartdigimkt/i0/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v3, v4}, Lcom/smartdigimkt/j1/b;->a(Lcom/smartdigimkt/i0/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_18

    .line 300
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/smartdigimkt/i0/f;

    const-string v4, "-9999"

    invoke-direct {v1, v4, v0}, Lcom/smartdigimkt/i0/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v3, v1}, Lcom/smartdigimkt/j1/b;->a(Lcom/smartdigimkt/i0/f;)V

    goto/16 :goto_18

    :cond_43
    move-object/from16 v2, p0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "not support format:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v10, Lcom/smartdigimkt/l3/a;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-static {v3, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    goto/16 :goto_18

    :cond_44
    move-object/from16 v2, p0

    move-object/from16 v3, v20

    const/4 v14, 0x1

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "loadContext is not valid param1:true,param2:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_45

    move v4, v14

    goto :goto_1c

    :cond_45
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    goto/16 :goto_18

    :goto_1d
    return v17
.end method
