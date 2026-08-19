.class public Lcom/kuaishou/weapon/p0/cl;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/kuaishou/weapon/p0/cl;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 428
    :try_start_0
    new-instance v1, Lcom/kuaishou/weapon/p0/ck;

    sget-object v2, Lcom/kuaishou/weapon/p0/ci;->j:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/kuaishou/weapon/p0/ck;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/kuaishou/weapon/p0/ck;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/kuaishou/weapon/p0/cl;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 431
    :cond_1
    const-string v2, "module_section"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v4, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    const-string v5, "re_po_rt"

    invoke-static {v4, v5}, Lcom/kuaishou/weapon/p0/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kuaishou/weapon/p0/h;

    move-result-object v4

    .line 4
    const-string v5, "a1_p_s_p_s"

    invoke-virtual {v4, v5}, Lcom/kuaishou/weapon/p0/h;->e(Ljava/lang/String;)Z

    move-result v5

    .line 5
    const-string v6, "a1_p_s_p_s_c_b"

    invoke-virtual {v4, v6}, Lcom/kuaishou/weapon/p0/h;->e(Ljava/lang/String;)Z

    move-result v6

    .line 6
    const-string v7, "plc001_b_bcl_ie"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    .line 7
    const-string v10, "RISK"

    if-ne v7, v8, :cond_5

    if-nez v5, :cond_0

    if-eqz v6, :cond_5

    .line 8
    :cond_0
    :try_start_1
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/kuaishou/weapon/p0/bf;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 10
    const-string v11, "01001"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-object v1, v0

    goto/16 :goto_32

    .line 11
    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/kuaishou/weapon/p0/bf;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 13
    const-string v11, "01003"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_2
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/kuaishou/weapon/p0/bf;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 16
    const-string v11, "01019"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_3
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/kuaishou/weapon/p0/bf;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 19
    const-string v11, "01004"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_4
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/kuaishou/weapon/p0/bf;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 22
    const-string v11, "01007"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_5
    const-string v7, "plc001_b_bcl_is"

    invoke-virtual {v4, v7, v9}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 24
    :cond_6
    new-instance v7, Lcom/kuaishou/weapon/p0/be;

    invoke-direct {v7}, Lcom/kuaishou/weapon/p0/be;-><init>()V

    .line 25
    const-string v11, "plc001_b_pry_gsl"

    invoke-virtual {v4, v11, v8}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_7

    .line 26
    const-string v11, "10020"

    iget-object v12, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v7, v12}, Lcom/kuaishou/weapon/p0/be;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_7
    const-string v7, "plc001_b_bcl_ic"

    .line 28
    invoke-virtual {v4, v7, v8}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_9

    if-nez v5, :cond_8

    if-eqz v6, :cond_9

    .line 29
    :cond_8
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/kuaishou/weapon/p0/bf;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 30
    const-string v11, "01011"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_9
    const-string v7, "plc001_b_bcl_btm"

    .line 32
    invoke-virtual {v4, v7, v8}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_b

    if-nez v5, :cond_a

    if-eqz v6, :cond_b

    .line 33
    :cond_a
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/kuaishou/weapon/p0/bf;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 35
    const-string v11, "01016"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_b
    const-string v7, "plc001_b_bcl_d"

    invoke-virtual {v4, v7, v8}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    const-string v11, ""

    if-ne v7, v8, :cond_3e

    if-nez v5, :cond_c

    if-eqz v6, :cond_e

    .line 38
    :cond_c
    :try_start_2
    iget-object v7, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/kuaishou/weapon/p0/bf;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 39
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 40
    const-string v12, "01013"

    invoke-virtual {v3, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_d
    const-string v7, "02042"

    iget-object v12, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v12}, Lcom/kuaishou/weapon/p0/bf;->u(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v3, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    :cond_e
    sget-boolean v7, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "02018"

    const-string v13, "02017"

    const-string v14, "02016"

    const-string v15, "02015"

    const-string v9, "02014"

    const-string v8, "02013"

    move-wide/from16 v16, v1

    const-string v1, "02012"

    const-string v2, "02011"

    move/from16 v18, v7

    const-string v7, "02010"

    move/from16 v19, v6

    const-string v6, "02009"

    move/from16 v20, v5

    const-string v5, "02008"

    move-object/from16 v21, v10

    const-string v10, "02007"

    move-object/from16 v22, v4

    const-string v4, "02006"

    move-object/from16 v23, v11

    const-string v11, "02005"

    move-object/from16 v24, v12

    const-string v12, "02004"

    move-object/from16 v25, v13

    const-string v13, "02003"

    move-object/from16 v26, v14

    const-string v14, "02002"

    move-object/from16 v27, v15

    const-string v15, "02001"

    if-eqz v18, :cond_2d

    move-object/from16 v18, v9

    .line 43
    :try_start_3
    const-string v9, "02019"

    move-object/from16 v28, v8

    iget-object v8, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/kuaishou/weapon/p0/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v8, "02021"

    iget-object v9, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/kuaishou/weapon/p0/bj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v8, "02022"

    iget-object v9, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/kuaishou/weapon/p0/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v8, "02030"

    iget-object v9, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/kuaishou/weapon/p0/bj;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    new-instance v8, Lcom/kuaishou/weapon/p0/cc;

    iget-object v9, v0, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/kuaishou/weapon/p0/cc;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v9, "01014"

    const-string v0, "01014"

    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "01014"

    .line 49
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-object/from16 v1, p0

    goto/16 :goto_32

    :cond_f
    move-object/from16 v0, v23

    .line 50
    :goto_1
    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v8, v15}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 52
    invoke-virtual {v8, v15}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_10
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_2
    invoke-virtual {v3, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v8, v14}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    invoke-virtual {v8, v14}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_11
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->b()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_3
    invoke-virtual {v3, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v8, v13}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {v8, v13}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_4
    invoke-virtual {v3, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v8, v12}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 61
    invoke-virtual {v8, v12}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_13
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->d()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_5
    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v8, v11}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 64
    invoke-virtual {v8, v11}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_14
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->e()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_6
    invoke-virtual {v3, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v8, v4}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 67
    invoke-virtual {v8, v4}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_15
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->f()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_7
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v8, v10}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 70
    invoke-virtual {v8, v10}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_16
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->g()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_8
    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v8, v5}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 73
    invoke-virtual {v8, v5}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_17
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->h()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_9
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-virtual {v8, v6}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 76
    invoke-virtual {v8, v6}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_18
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->i()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_a
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v8, v7}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 79
    invoke-virtual {v8, v7}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_19
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->j()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_b
    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v8, v2}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 82
    invoke-virtual {v8, v2}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1a
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->k()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_c
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 85
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1b
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->l()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_d
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v28

    .line 87
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 88
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1c
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->m()Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_e
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v9, v18

    .line 90
    invoke-virtual {v8, v9}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 91
    invoke-virtual {v8, v9}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1d
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->n()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_f
    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v27

    .line 93
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 94
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_1e
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->p()Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_10
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v26

    .line 96
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 97
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1f
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->q()Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_11
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v25

    .line 99
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 100
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_20
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    :goto_12
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v24

    .line 102
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 103
    invoke-virtual {v8, v0}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_21
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->s()Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_13
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v0, "02020"

    const-string v1, "02020"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    const-string v1, "02020"

    .line 106
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_22
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->u()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_14
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "02023"

    const-string v1, "02023"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const-string v1, "02023"

    .line 109
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_23
    move-object/from16 v1, v23

    .line 110
    :goto_15
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v0, "02031"

    const-string v1, "02031"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    const-string v1, "02031"

    .line 112
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_24
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->y()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_16
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "02032"

    const-string v1, "02032"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    const-string v1, "02032"

    .line 115
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_25
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->o()Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_17
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "02033"

    const-string v1, "02033"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    const-string v1, "02033"

    .line 118
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_26
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->x()Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_18
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "02034"

    const-string v1, "02034"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string v1, "02034"

    .line 121
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_27
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->z()Ljava/lang/String;

    move-result-object v1

    .line 122
    :goto_19
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "02035"

    const-string v1, "02035"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    const-string v1, "02035"

    .line 124
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_28
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->A()Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_1a
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v0, "02036"

    const-string v1, "02036"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v1, "02036"

    .line 127
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_29
    move-object/from16 v1, v23

    .line 128
    :goto_1b
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v0, "02037"

    const-string v1, "02037"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    const-string v1, "02037"

    .line 130
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_2a
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->w()Ljava/lang/String;

    move-result-object v1

    .line 131
    :goto_1c
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v0, "02038"

    const-string v1, "02038"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v1, "02038"

    .line 133
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_2b
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->v()Ljava/lang/String;

    move-result-object v1

    .line 134
    :goto_1d
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v0, "02045"

    const-string v1, "02045"

    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    const-string v1, "02045"

    .line 136
    invoke-virtual {v8, v1}, Lcom/kuaishou/weapon/p0/cc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_2c
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->B()Ljava/lang/String;

    move-result-object v1

    .line 137
    :goto_1e
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-object/from16 v1, p0

    goto/16 :goto_1f

    :cond_2d
    move-object v0, v8

    .line 138
    :try_start_4
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->p()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->q()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->r()I

    move-result v0

    move-object/from16 v1, v25

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->s()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v0, "02019"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, p0

    :try_start_5
    iget-object v2, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v0, "02020"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v0, "02021"

    iget-object v2, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v0, "02022"

    iget-object v2, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bj;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v0, "02030"

    iget-object v2, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bj;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v0, "02031"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v0, "02032"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v0, "02033"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v0, "02034"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v0, "02035"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v0, "02037"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v0, "02038"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v0, "02045"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :goto_1f
    const-string v0, "02067"

    iget-object v2, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/data/app/"

    move-object/from16 v5, v23

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/base.apk"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v0, "02039"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bf;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v0, "02040"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bf;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v0, "02041"

    iget-object v2, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->t(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v0, "02044"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v0, "02046"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "persist.service.adb.enable"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 177
    const-string v2, "03058"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_2e
    const-string v0, "sys.resettype"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 180
    const-string v2, "03057"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :cond_2f
    const-string v0, "ro.boot.bootreason"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 183
    const-string v2, "03056"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_30
    const-string v0, "ro.runtime.firstboot"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 186
    const-string v2, "03055"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_31
    const-string v0, "init.svc.atcmdserver"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 189
    const-string v2, "03054"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_32
    const-string v0, "ro.build.date.utc"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 192
    const-string v2, "03061"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :cond_33
    const-string v0, "ro.bootimage.build.date.utc"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 195
    const-string v2, "03062"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_34
    const-string v0, "ro.build.date.YmdHM"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 198
    const-string v2, "03063"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    :cond_35
    const-string v0, "dhcp.ipv6.wlan0.dns1"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 201
    const-string v2, "03067"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    :cond_36
    const-string v0, "dhcp.ipv6.wlan0.dns2"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 204
    const-string v2, "03068"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_37
    const-string v0, "dhcp.wlan0.dns1"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 207
    const-string v2, "03069"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_38
    const-string v0, "dhcp.wlan0.dns2"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 210
    const-string v2, "03070"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_39
    const-string v0, "net.change"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 213
    const-string v2, "03071"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    :cond_3a
    const-string v0, "net.dns1"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 216
    const-string v2, "03072"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_3b
    const-string v0, "net.dns2"

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 219
    const-string v2, "03073"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :cond_3c
    const-string v0, "plc001_t_d"

    const-wide/16 v6, -0x1

    move-object/from16 v2, v22

    invoke-virtual {v2, v0, v6, v7}, Lcom/kuaishou/weapon/p0/h;->a(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3d

    .line 221
    const-string v0, "03074"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 222
    :cond_3d
    :try_start_6
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_brightness_mode"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 223
    const-string v4, "03064"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 225
    const-string v4, "03065"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 226
    :catchall_2
    :try_start_7
    const-string v0, "03081"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v0, "03052"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bj;->i(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    const-string v0, "03050"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bj;->h(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v0, "03049"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bj;->g(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v0, "02027"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->H()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 231
    const-string v0, "02028"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v0, "02029"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v0, "02057"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v0, "02058"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_20

    :cond_3e
    move-wide/from16 v16, v1

    move-object v2, v4

    move/from16 v20, v5

    move/from16 v19, v6

    move-object/from16 v21, v10

    move-object v5, v11

    move-object v1, v0

    .line 235
    :goto_20
    const-string v0, "plc001_b_bcl_r"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_48

    .line 236
    const-string v0, "03001"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bm;->a()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 237
    const-string v0, "03002"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bm;->b()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 238
    const-string v0, "03001"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bm;->a()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 239
    const-string v0, "03043"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 240
    const-string v0, "03044"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 241
    const-string v0, "03045"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    new-instance v0, Lcom/kuaishou/weapon/p0/bw;

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/kuaishou/weapon/p0/bw;-><init>(Landroid/content/Context;)V

    .line 243
    sget-boolean v4, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    if-eqz v4, :cond_47

    .line 244
    const-string v4, "03004"

    const-string v6, "03004"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3f

    const-string v6, "03004"

    .line 245
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_21

    :cond_3f
    move-object v6, v5

    .line 246
    :goto_21
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v4, "03036"

    const-string v6, "03036"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_40

    const-string v6, "03036"

    .line 248
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_22

    :cond_40
    move-object v6, v5

    .line 249
    :goto_22
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v4, "03039"

    const-string v6, "03039"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_41

    const-string v6, "03039"

    .line 251
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_23

    :cond_41
    move-object v6, v5

    .line 252
    :goto_23
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v4, "03040"

    const-string v6, "03040"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_42

    const-string v6, "03040"

    .line 254
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_24

    :cond_42
    move-object v6, v5

    .line 255
    :goto_24
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v4, "03041"

    const-string v6, "03041"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_43

    const-string v6, "03041"

    .line 257
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_25

    :cond_43
    move-object v6, v5

    .line 258
    :goto_25
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v4, "03042"

    const-string v6, "03042"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_44

    const-string v6, "03042"

    .line 260
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_26

    :cond_44
    move-object v6, v5

    .line 261
    :goto_26
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v4, "03079"

    const-string v6, "03079"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_45

    const-string v6, "03079"

    .line 263
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_27

    :cond_45
    const/4 v6, 0x0

    .line 264
    :goto_27
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v4, "03080"

    const-string v6, "03080"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_46

    const-string v6, "03080"

    .line 266
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_46
    const/4 v0, 0x0

    .line 267
    :goto_28
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_47
    const-string v0, "03007"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "03008"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bt;->c(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string v0, "03011"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/am;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v0, "03012"

    invoke-static {}, Lcom/kuaishou/weapon/p0/am;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "03014"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bf;->g(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 273
    const-string v0, "03034"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bf;->h(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 274
    const-string v0, "03020"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bt;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v0, "03037"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "03038"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v0, "03077"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bj;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 278
    :try_start_8
    new-instance v0, Lcom/kuaishou/weapon/p0/be;

    invoke-direct {v0}, Lcom/kuaishou/weapon/p0/be;-><init>()V

    .line 279
    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/kuaishou/weapon/p0/be;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 280
    const-string v6, "03006"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v4, "03010"

    iget-object v6, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/be;->b(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 282
    const-string v4, "03033"

    iget-object v6, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/be;->c(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 283
    const-string v4, "03021"

    iget-object v6, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/be;->e(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    const-string v4, "03030"

    iget-object v6, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/kuaishou/weapon/p0/be;->d(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 285
    const-string v4, "10031"

    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/be;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 286
    :catch_1
    :cond_48
    :try_start_9
    const-string v0, "plc001_b_bcl_tc"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_49

    .line 287
    const-string v0, "03019"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bf;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 290
    const-string v4, "03047"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    :cond_49
    const-string v0, "plc001_b_bcl_il"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4c

    .line 292
    const-string v0, "02059"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bk;->a(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    const-string v0, "02060"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bk;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v0, "02062"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    sget-boolean v0, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    if-eqz v0, :cond_4b

    .line 296
    new-instance v0, Lcom/kuaishou/weapon/p0/by;

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/kuaishou/weapon/p0/by;-><init>(Landroid/content/Context;)V

    .line 297
    const-string v4, "08001"

    const-string v6, "08001"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4a

    const-string v6, "08001"

    .line 298
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_4a
    move-object v0, v5

    .line 299
    :goto_29
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    :cond_4b
    invoke-static {}, Lcom/kuaishou/weapon/p0/bk;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 301
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_4c

    .line 302
    const-string v4, "10050"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    :cond_4c
    const-string v0, "plc001_b_bcl_rp"

    const/4 v4, 0x1

    .line 304
    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 305
    const-string v0, "plc001_b_bcl_c"

    .line 306
    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_52

    .line 307
    sget-boolean v0, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    if-eqz v0, :cond_51

    .line 308
    new-instance v0, Lcom/kuaishou/weapon/p0/bx;

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/kuaishou/weapon/p0/bx;-><init>(Landroid/content/Context;)V

    .line 309
    const-string v4, "04001"

    const-string v6, "04001"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4d

    const-string v6, "04001"

    .line 310
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2a

    :cond_4d
    move-object v6, v5

    .line 311
    :goto_2a
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v4, "04002"

    const-string v6, "04002"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4e

    const-string v6, "04002"

    .line 313
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2b

    :cond_4e
    move-object v6, v5

    .line 314
    :goto_2b
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v4, "04003"

    const-string v6, "04003"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4f

    const-string v6, "04003"

    .line 316
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2c

    :cond_4f
    move-object v6, v5

    .line 317
    :goto_2c
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v4, "04004"

    const-string v6, "04004"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_50

    const-string v6, "04004"

    .line 319
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_50
    move-object v0, v5

    .line 320
    :goto_2d
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2e

    .line 321
    :cond_51
    :try_start_a
    invoke-static {}, Lcom/kuaishou/weapon/p0/bi;->b()Lcom/kuaishou/weapon/p0/bh;

    move-result-object v0

    .line 322
    const-string v4, "04001"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bi;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v4, "04002"

    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/bh;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v4, "04003"

    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/bh;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v4, "04004"

    invoke-virtual {v0}, Lcom/kuaishou/weapon/p0/bh;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 326
    :catch_2
    :cond_52
    :goto_2e
    :try_start_b
    const-string v0, "plc001_b_bcl_w"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_56

    if-nez v20, :cond_53

    if-eqz v19, :cond_56

    .line 327
    :cond_53
    invoke-static {}, Lcom/kuaishou/weapon/p0/bf;->f()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 328
    const-string v4, "06014"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :cond_54
    sget-boolean v0, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    if-eqz v0, :cond_56

    .line 330
    new-instance v0, Lcom/kuaishou/weapon/p0/cd;

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/kuaishou/weapon/p0/cd;-><init>(Landroid/content/Context;)V

    .line 331
    const-string v4, "06015"

    const-string v6, "06015"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/cd;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_55

    const-string v6, "06015"

    .line 332
    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/cd;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_2f

    :cond_55
    move-object v0, v5

    .line 333
    :goto_2f
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_56
    if-nez v20, :cond_57

    if-eqz v19, :cond_5a

    .line 334
    :cond_57
    invoke-static {}, Lcom/kuaishou/weapon/p0/bf;->h()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_58

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 336
    const-string v4, "07005"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_30

    :cond_58
    if-nez v0, :cond_59

    .line 337
    const-string v0, "07005"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_30

    .line 338
    :cond_59
    const-string v4, "07005"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    :cond_5a
    :goto_30
    const-string v0, "plc001_b_bcl_n"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5d

    if-nez v20, :cond_5b

    if-eqz v19, :cond_5d

    .line 340
    :cond_5b
    sget-boolean v0, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    if-eqz v0, :cond_5c

    .line 341
    new-instance v0, Lcom/kuaishou/weapon/p0/ca;

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/kuaishou/weapon/p0/ca;-><init>(Landroid/content/Context;)V

    .line 342
    const-string v4, "07007"

    const-string v6, "07007"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    :cond_5c
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bp;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 344
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5d

    .line 345
    const-string v4, "03035"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_5d
    if-nez v20, :cond_5e

    if-eqz v19, :cond_61

    .line 346
    :cond_5e
    :try_start_c
    invoke-static {}, Lcom/kuaishou/weapon/p0/bf;->b()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5f

    .line 347
    const-string v0, "09002"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    :cond_5f
    invoke-static {}, Lcom/kuaishou/weapon/p0/bf;->c()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_60

    .line 349
    const-string v0, "09003"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    :cond_60
    const-string v0, "09001"

    invoke-static {}, Lcom/kuaishou/weapon/p0/bf;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 351
    :catch_3
    :cond_61
    :try_start_d
    const-string v0, "plc001_b_bcl_a"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 352
    const-string v0, "plc001_b_bcl_s"

    const/4 v4, 0x1

    .line 353
    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_62

    .line 354
    sget-boolean v0, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    if-eqz v0, :cond_62

    .line 355
    new-instance v0, Lcom/kuaishou/weapon/p0/cb;

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/kuaishou/weapon/p0/cb;-><init>(Landroid/content/Context;)V

    .line 356
    const-string v4, "05001"

    invoke-virtual {v0, v4}, Lcom/kuaishou/weapon/p0/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 357
    :try_start_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_62

    .line 358
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 359
    const-string v0, "05001"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 360
    :catch_4
    :cond_62
    :try_start_f
    sget-boolean v0, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    if-eqz v0, :cond_64

    .line 361
    new-instance v0, Lcom/kuaishou/weapon/p0/bz;

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/kuaishou/weapon/p0/bz;-><init>(Landroid/content/Context;)V

    .line 362
    const-string v4, "13001"

    const-string v6, "13001"

    invoke-virtual {v0, v6}, Lcom/kuaishou/weapon/p0/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_63

    const-string v5, "13001"

    .line 363
    invoke-virtual {v0, v5}, Lcom/kuaishou/weapon/p0/bz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_31

    :cond_63
    move-object v11, v5

    .line 364
    :goto_31
    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    :cond_64
    const-string v0, "11000"

    sget-boolean v4, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSuccess:Z

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    const-string v0, "11002"

    sget-object v4, Lcom/kuaishou/weapon/p0/jni/Engine;->soVersion:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v0, "11003"

    sget v4, Lcom/kuaishou/weapon/p0/bg;->v:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 368
    const-string v0, "11004"

    sget v4, Lcom/kuaishou/weapon/p0/jni/Engine;->loadSoCount:I

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    const-string v0, "11006"

    move/from16 v4, v20

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    const-string v0, "11029"

    move/from16 v4, v19

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    const-string v0, "plc001_v"

    const-string v4, "0.0.0"

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v4, "11008"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v0, "11009"

    iget-object v4, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kuaishou/weapon/p0/bq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 374
    :try_start_10
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kuaishou/weapon/p0/bf;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 376
    const-string v4, "01026"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    :cond_65
    const-string v0, "plc001_b_bcl_u"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-ne v0, v4, :cond_67

    .line 378
    :try_start_11
    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/e/b;->QO()Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 380
    const-string v2, "11102"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    :cond_66
    const-string v0, "11104"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v0, "11105"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v0, "11106"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v0, "11107"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v0, "11108"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v0, "11109"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v0, "11110"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v0, "11111"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v0, "11112"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v0, "11113"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v0, "11114"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    const-string v0, "11115"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v0, "11116"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v0, "11202"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QO()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string v0, "11204"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    const-string v0, "11205"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 397
    const-string v0, "11206"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 398
    const-string v0, "11207"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    const-string v0, "11208"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    const-string v0, "11209"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    const-string v0, "11210"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QR()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 402
    const-string v0, "11211"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 403
    const-string v0, "11212"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 404
    const-string v0, "11213"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 405
    const-string v0, "11214"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    const-string v0, "11215"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    const-string v0, "11216"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    const-string v0, "11301"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->QX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v0, "11302"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v0, "11303"

    invoke-static {}, Lcom/kwad/sdk/e/b;->QY()Lcom/kwad/sdk/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/e/b;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/bf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 411
    :catch_5
    :catchall_3
    :cond_67
    :try_start_12
    const-string v0, "02078"

    const-string v2, "W_S_V"

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/jni/A;->getE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    const-string v0, "02079"

    const-string v2, "W_S_S_V"

    invoke-static {v2}, Lcom/kuaishou/weapon/p0/jni/A;->getE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    const-string v0, "02069"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "Phenotype_boot_count"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 416
    const-string v2, "03085"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    :cond_68
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "boot_count"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 419
    const-string v2, "03086"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    :cond_69
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "power_on_times"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 422
    const-string v2, "03091"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    :cond_6a
    iget-object v0, v1, Lcom/kuaishou/weapon/p0/cl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "first_boot_flag"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 425
    const-string v2, "03104"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 426
    :catchall_4
    :cond_6b
    :try_start_13
    const-string v0, "11007"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 427
    const-string v0, "11017"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    return-object v3

    :catchall_5
    :goto_32
    const/4 v0, 0x0

    return-object v0
.end method
